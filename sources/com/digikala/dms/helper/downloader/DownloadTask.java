package com.digikala.dms.helper.downloader;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import rx.Observable;
import rx.Observer;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadTask {
    public static final String TAG = DownloadTask.class.getName();
    private IDownloadTaskListener listener;
    private String localPath;
    private String remoteUrl;
    private DownloadTask task;

    public DownloadTask() {
    }

    public DownloadTask(String remoteUrl, String localPath) {
        this.localPath = localPath;
        this.remoteUrl = remoteUrl;
    }

    public String getRemoteUrl() {
        return this.remoteUrl;
    }

    public void setRemoteUrl(String remoteUrl) {
        this.remoteUrl = remoteUrl;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public void setLocalPath(String localPath) {
        this.localPath = localPath;
    }

    public void start(DownloadTask task, IDownloadTaskListener listener) {
        this.task = task;
        this.listener = listener;
        Log.i(TAG, "task start with url : " + task.getRemoteUrl());
        if (task.getRemoteUrl() == null || task.getRemoteUrl().equals("")) {
            return;
        }
        getDownloadObservable(task).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Observer<Double>() { // from class: com.digikala.dms.helper.downloader.DownloadTask.1
            @Override // rx.Observer
            public void onCompleted() {
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
            }

            @Override // rx.Observer
            public void onNext(Double percentage) {
            }
        });
    }

    private Observable<Double> getDownloadObservable(final DownloadTask task) {
        Observable<Double> downloadObservable = Observable.create(new Observable.OnSubscribe<Double>() { // from class: com.digikala.dms.helper.downloader.DownloadTask.2
            @Override // rx.functions.Action1
            public void call(Subscriber<? super Double> subscriber) {
                HttpURLConnection connection;
                try {
                    URL url = new URL(task.getRemoteUrl());
                    long fileSize = DownloadTask.this.getFileSizeAtURL(url);
                    long totalBytesRead = 0;
                    byte[] bytes = new byte[1024];
                    int percentDone = -1;
                    if (fileSize <= 0) {
                        DownloadTask.this.listener.onError("file size is 0");
                    } else {
                        if (url.getProtocol().equals("http")) {
                            connection = (HttpURLConnection) url.openConnection();
                        } else if (!url.getProtocol().equals("https")) {
                            return;
                        } else {
                            connection = (HttpsURLConnection) url.openConnection();
                        }
                        connection.setConnectTimeout(100000);
                        connection.setReadTimeout(100000);
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(connection.getInputStream());
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(task.getLocalPath()));
                        while (true) {
                            int bytesRead = bufferedInputStream.read(bytes);
                            if (bytesRead == -1) {
                                break;
                            }
                            totalBytesRead += (long) bytesRead;
                            float latestPercentDone = (totalBytesRead / fileSize) * 100.0f;
                            int latestPercentDoneInt = (int) latestPercentDone;
                            String str = DownloadTask.TAG;
                            StringBuilder sb = new StringBuilder();
                            URL url2 = url;
                            sb.append("before block percentDone is:");
                            sb.append(percentDone);
                            Log.i(str, sb.toString());
                            if (percentDone != latestPercentDoneInt) {
                                DownloadTask.this.listener.onContinue(latestPercentDoneInt);
                                Log.i(DownloadTask.TAG, "in block percentDone is:" + latestPercentDoneInt);
                                percentDone = latestPercentDoneInt;
                            }
                            fileOutputStream.write(bytes, 0, bytesRead);
                            url = url2;
                        }
                        fileOutputStream.close();
                        bufferedInputStream.close();
                        subscriber.onCompleted();
                        DownloadTask.this.listener.onComplete();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    File file = new File(task.getLocalPath());
                    boolean deleted = file.delete();
                    if (!deleted) {
                        File file1 = new File(task.getLocalPath());
                        file1.delete();
                    }
                    subscriber.onError(e);
                    DownloadTask.this.listener.onError(e.getMessage());
                }
            }
        });
        return downloadObservable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getFileSizeAtURL(URL url) {
        long fileSize = -1;
        try {
            HttpURLConnection http = (HttpURLConnection) url.openConnection();
            fileSize = http.getContentLength();
            http.disconnect();
            return fileSize;
        } catch (Exception e) {
            e.printStackTrace();
            return fileSize;
        }
    }
}

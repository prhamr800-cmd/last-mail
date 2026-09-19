package com.digikala.dms.helper.downloader;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.digikala.dms.R;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadService extends Service implements IDownloadTaskListener {
    private static final String CHANNEL_ID = "download_service_channel";
    public static final String TAG = DownloadService.class.getName();
    private static DownloadService instance;
    private static boolean isRun;
    private static IDownloadTaskListener mDownloadTaskListener;
    private static DownloadTask mTask;

    public static void createInstance(Context context, DownloadTask task, IDownloadTaskListener downloadTaskListener) {
        mTask = task;
        mDownloadTaskListener = downloadTaskListener;
        Intent startIntent = new Intent();
        startIntent.setClass(context, DownloadService.class);
        context.startService(startIntent);
        Log.e(TAG, "service create instance");
    }

    public static DownloadService getInstance() {
        return instance;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.e(TAG, "service on create");
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.e(TAG, "service on start");
        startForeground(startId);
        isRun = true;
        instance = this;
        startTask();
        return super.onStartCommand(intent, flags, startId);
    }

    private void startForeground(int startId) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "Default Notification", 3);
            channel.setDescription("");
            NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
            manager.createNotificationChannel(channel);
        }
        Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle(getResources().getString(R.string.app_name)).setTicker(getResources().getString(R.string.app_name)).setContentText("Download DMS").setSmallIcon(R.mipmap.ic_launcher).setContentIntent(null).setOngoing(true).build();
        startForeground(startId, notification);
    }

    public static boolean isRunning() {
        return isRun;
    }

    @Override // android.app.Service
    public void onDestroy() {
        isRun = false;
        super.onDestroy();
    }

    public void startTask() {
        mTask.start(mTask, this);
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onContinue(int percentage) {
        mDownloadTaskListener.onContinue(percentage);
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onComplete() {
        isRun = false;
        mDownloadTaskListener.onComplete();
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onError(String error) {
        isRun = false;
        mDownloadTaskListener.onError(error);
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onCancel() {
        isRun = false;
        mDownloadTaskListener.onCancel();
    }
}

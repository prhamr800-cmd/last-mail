package com.digikala.dms.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.widget.Toast;
import com.huxq17.download.Pump;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.DownloadListener;
import com.huxq17.download.core.DownloadRequest;
import java.io.IOException;
import okhttp3.Request;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadManager {
    private static Activity mcontext;
    private static ProgressDialog progressDialog;

    public static void init(Activity context) {
        mcontext = context;
        initProgressDialog();
        Pump.newConfigBuilder().setMaxRunningTaskNum(2).setMinUsableStorageSpace(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM).addDownloadInterceptor(new DownloadInterceptor() { // from class: com.digikala.dms.util.DownloadManager.1
            @Override // com.huxq17.download.core.DownloadInterceptor
            public DownloadInfo intercept(DownloadInterceptor.DownloadChain chain) {
                DownloadRequest downloadRequest = chain.request();
                DownloadInfo downloadInfo = chain.proceed(downloadRequest);
                return downloadInfo;
            }
        }).build();
    }

    public static void download(String downloadUrl) {
        progressDialog.setProgress(0);
        progressDialog.show();
        Pump.newRequest(downloadUrl).listener(new DownloadListener() { // from class: com.digikala.dms.util.DownloadManager.2
            @Override // com.huxq17.download.core.DownloadListener
            public void onProgress(int progress) {
                DownloadManager.progressDialog.setProgress(progress);
            }

            @Override // com.huxq17.download.core.DownloadListener
            public void onSuccess() throws XmlPullParserException, IOException {
                DownloadManager.progressDialog.dismiss();
                String apkPath = getDownloadInfo().getFilePath();
                InstallApk.with(DownloadManager.mcontext).from(apkPath).forceInstall();
                Toast.makeText(DownloadManager.mcontext, "Download Finished", 0).show();
            }

            @Override // com.huxq17.download.core.DownloadListener
            public void onFailed() {
                DownloadManager.progressDialog.dismiss();
                Toast.makeText(DownloadManager.mcontext, "Download failed", 0).show();
            }
        }).setRequestBuilder(new Request.Builder()).forceReDownload(true).threadNum(3).setId("123").setRequestBuilder(new Request.Builder()).setRetry(3, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION).submit();
    }

    private static void initProgressDialog() {
        progressDialog = new ProgressDialog(mcontext);
        progressDialog.setTitle("Downloading");
        progressDialog.setProgress(0);
        progressDialog.setProgressStyle(1);
    }
}

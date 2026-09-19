package com.digikala.dms.helper.downloader;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.FileProvider;
import android.util.Log;
import com.digikala.dms.R;
import com.digikala.dms.util.Util;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadManager implements IDownloadTaskListener {
    private static final int NOT_ONGOING_SERVICE_ID = 1048852;
    private static final int ONGOING_SERVICE_ID = 1048835;
    private static final String TAG = DownloadManager.class.getName();
    private Context mContext;
    private DownloadTask mTask;
    private NotificationManager notifManager;
    private NotificationManager notificationManager;

    public void addTask(Context context, DownloadTask task) {
        this.mContext = context;
        this.mTask = task;
        DownloadService.createInstance(context, task, this);
    }

    private NotificationManager getNotificationManager() {
        if (this.notificationManager == null) {
            this.notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        }
        return this.notificationManager;
    }

    private void showNotification(String title, String content, String ticker) {
        Log.i(TAG, "showNotification()");
        String id = this.mContext.getString(R.string.default_notification_channel_id);
        String channelTitle = this.mContext.getString(R.string.default_notification_channel_title);
        if (this.notifManager == null) {
            this.notifManager = (NotificationManager) this.mContext.getSystemService("notification");
        }
        if (Build.VERSION.SDK_INT >= 26 && this.notifManager.getNotificationChannel(id) == null) {
            NotificationChannel mChannel = new NotificationChannel(id, channelTitle, 4);
            mChannel.enableVibration(true);
            mChannel.setVibrationPattern(new long[]{100, 200, 300, 400, 500, 400, 300, 200, 400});
            this.notifManager.createNotificationChannel(mChannel);
        }
        Notification notification = new NotificationCompat.Builder(this.mContext, id).setContentTitle(title).setTicker("download start").setContentText(content).setSmallIcon(R.mipmap.ic_launcher).build();
        this.notifManager.notify(NOT_ONGOING_SERVICE_ID, notification);
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onContinue(int percentage) {
        StringBuilder sb = new StringBuilder();
        sb.append(Util.convertNumberStringToPersian(percentage + ""));
        sb.append("%");
        showNotification("downloading", sb.toString(), "ticker");
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onComplete() throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 26) {
            showNotification("downloading", "download complete, please install it manually", "ticker");
            this.mContext.stopService(new Intent(this.mContext, (Class<?>) DownloadService.class));
            FileProvider.getUriForFile(this.mContext, "com.digikala.dms.provider", new File(this.mTask.getLocalPath()));
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            showNotification("downloading", "download complete", "ticker");
            this.mContext.stopService(new Intent(this.mContext, (Class<?>) DownloadService.class));
            Uri data = FileProvider.getUriForFile(this.mContext, "com.digikala.dms.provider", new File(this.mTask.getLocalPath()));
            Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
            intent.setData(data);
            intent.setFlags(1);
            this.mContext.startActivity(intent);
            return;
        }
        showNotification("downloading", "download complete", "ticker");
        this.mContext.stopService(new Intent(this.mContext, (Class<?>) DownloadService.class));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setDataAndType(Uri.fromFile(new File(this.mTask.getLocalPath())), "application/vnd.android.package-archive");
        intent2.setFlags(268435456);
        this.mContext.startActivity(intent2);
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onError(String error) {
        showNotification("downloading", "download error" + error, "ticker");
        this.mContext.stopService(new Intent(this.mContext, (Class<?>) DownloadService.class));
    }

    @Override // com.digikala.dms.helper.downloader.IDownloadTaskListener
    public void onCancel() {
        showNotification("downloading", "download cancel", "ticker");
        this.mContext.stopService(new Intent(this.mContext, (Class<?>) DownloadService.class));
    }
}

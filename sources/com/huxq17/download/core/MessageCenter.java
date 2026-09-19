package com.huxq17.download.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.service.IMessageCenter;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class MessageCenter implements IMessageCenter {
    private Context context;
    private ConcurrentLinkedQueue<DownloadListener> observers = new ConcurrentLinkedQueue<>();
    private Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.huxq17.download.core.MessageCenter.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message msg) {
            if (MessageCenter.this.isShutdown()) {
                return;
            }
            MessageCenter.this.handleDownloadInfoSnapshot(MessageCenter.this.getObserverIterator(), (DownloadInfo) msg.obj);
        }
    };

    @Override // com.huxq17.download.core.service.IMessageCenter
    public void start(Context context) {
        this.context = context;
    }

    Iterator<DownloadListener> getObserverIterator() {
        return this.observers.iterator();
    }

    void handleDownloadInfoSnapshot(Iterator<DownloadListener> iterator, DownloadInfo snapshot) {
        while (iterator.hasNext()) {
            DownloadListener downloadListener = iterator.next();
            if (downloadListener != null && downloadListener.isEnable()) {
                if (downloadListener.filter(snapshot)) {
                    downloadListener.downloading(snapshot);
                }
            } else {
                iterator.remove();
            }
        }
    }

    boolean isShutdown() {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).isShutdown();
    }

    @Override // com.huxq17.download.core.service.IMessageCenter
    public void notifyProgressChanged(DownloadDetailsInfo downloadInfo) {
        if (isShutdown()) {
            return;
        }
        Message message = Message.obtain();
        message.obj = downloadInfo.snapshot();
        this.handler.sendMessage(message);
    }

    @Override // com.huxq17.download.core.service.IMessageCenter
    public synchronized void register(DownloadListener downloadListener) {
        downloadListener.setEnable(true);
        this.observers.add(downloadListener);
    }

    @Override // com.huxq17.download.core.service.IMessageCenter
    public synchronized void unRegister(String id) {
        Iterator<DownloadListener> iterator = this.observers.iterator();
        while (iterator.hasNext()) {
            DownloadListener downloadListener = iterator.next();
            if (id.equals(downloadListener.getId())) {
                downloadListener.setEnable(false);
                iterator.remove();
            }
        }
    }

    @Override // com.huxq17.download.core.service.IMessageCenter
    public synchronized void unRegister(DownloadListener downloadListener) {
        downloadListener.setEnable(false);
        this.observers.remove(downloadListener);
    }

    Context getContext() {
        return this.context;
    }

    void setHandler(Handler handler) {
        this.handler = handler;
    }

    Handler getHandler() {
        return this.handler;
    }

    int getObserverSize() {
        return this.observers.size();
    }
}

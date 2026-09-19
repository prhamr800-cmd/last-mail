package com.huxq17.download.core;

import android.text.TextUtils;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.service.IDownloadManager;
import io.fabric.sdk.android.services.network.HttpRequest;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadRequest {
    private final boolean disableBreakPointDownload;
    private DownloadDetailsInfo downloadInfo;
    private final DownloadListener downloadListener;
    private final DownloadTaskExecutor downloadTaskExecutor;
    private final String filePath;
    private final boolean forceReDownload;
    private final Request.Builder httpRequestBuilder;
    private final String id;
    private final int retryCount;
    private final int retryDelay;
    private final String tag;
    private final int threadNum;
    private final String url;

    DownloadRequest(DownloadGenerator downloadGenerator) {
        this.id = downloadGenerator.id;
        this.url = downloadGenerator.url;
        this.filePath = downloadGenerator.filePath;
        this.threadNum = downloadGenerator.threadNum;
        this.tag = downloadGenerator.tag;
        this.forceReDownload = downloadGenerator.forceReDownload;
        this.retryCount = downloadGenerator.retryCount;
        this.retryDelay = downloadGenerator.retryDelay;
        this.downloadListener = downloadGenerator.downloadListener;
        this.downloadTaskExecutor = downloadGenerator.downloadTaskExecutor;
        this.disableBreakPointDownload = downloadGenerator.disableBreakPointDownload;
        this.httpRequestBuilder = downloadGenerator.httpRequestBuilder;
        if (this.httpRequestBuilder != null) {
            this.httpRequestBuilder.url(this.url);
        }
    }

    void setDownloadInfo(DownloadDetailsInfo downloadInfo) {
        this.downloadInfo = downloadInfo;
        downloadInfo.setFilePath(this.filePath);
    }

    public int getRetryDelay() {
        return Math.max(this.retryDelay, 0);
    }

    public DownloadDetailsInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public String getId() {
        return this.id == null ? this.url : this.id;
    }

    public String getName() {
        return getId();
    }

    public int getRetryCount() {
        return Math.max(this.retryCount, 0);
    }

    public String getUrl() {
        return this.url;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String filePath) {
        this.downloadInfo.setFilePath(filePath);
    }

    public int getThreadNum() {
        return Math.max(this.threadNum, 1);
    }

    public String getTag() {
        String tag;
        if (this.downloadTaskExecutor == null || (tag = this.downloadTaskExecutor.getTag()) == null || tag.length() <= 0) {
            return this.tag == null ? "" : this.tag;
        }
        return tag;
    }

    public boolean isForceReDownload() {
        return this.forceReDownload;
    }

    public boolean isDisableBreakPointDownload() {
        return this.disableBreakPointDownload;
    }

    public DownloadTaskExecutor getDownloadExecutor() {
        return this.downloadTaskExecutor;
    }

    public Request.Builder getHttpRequestBuilder() {
        if (this.httpRequestBuilder == null) {
            return new Request.Builder().url(this.url).build().newBuilder();
        }
        return this.httpRequestBuilder.build().newBuilder();
    }

    public static DownloadGenerator newRequest(String url, String filePath) {
        return new DownloadGenerator(url, filePath);
    }

    public static class DownloadGenerator {
        private static final int DEFAULT_RETRY_DELAY = 200;
        private boolean disableBreakPointDownload;
        private DownloadListener downloadListener;
        private DownloadTaskExecutor downloadTaskExecutor;
        private String filePath;
        private boolean forceReDownload;
        private Request.Builder httpRequestBuilder;
        private String id;
        private int retryCount;
        private int retryDelay;
        private String tag;
        private int threadNum;
        private String url;

        public DownloadGenerator(String url, String filePath) {
            this.url = url;
            this.filePath = filePath;
        }

        public DownloadGenerator setId(String id) {
            this.id = id;
            return this;
        }

        public DownloadGenerator threadNum(int threadNum) {
            this.threadNum = threadNum;
            return this;
        }

        public DownloadGenerator listener(DownloadListener listener) {
            this.downloadListener = listener;
            return this;
        }

        public DownloadGenerator tag(String tag) {
            this.tag = tag;
            return this;
        }

        public DownloadGenerator forceReDownload(boolean force) {
            this.forceReDownload = force;
            return this;
        }

        public DownloadGenerator disableBreakPointDownload() {
            this.disableBreakPointDownload = true;
            this.threadNum = 1;
            return this;
        }

        public DownloadGenerator setRequestBuilder(Request.Builder httpRequestBuilder) {
            this.httpRequestBuilder = httpRequestBuilder;
            return this;
        }

        public DownloadGenerator setRetry(int retryCount, int delayMillis) {
            if (retryCount < 0) {
                retryCount = 0;
            }
            this.retryCount = retryCount;
            if (delayMillis < 0) {
                delayMillis = 200;
            }
            this.retryDelay = delayMillis;
            return this;
        }

        public DownloadGenerator setRetry(int retryCount) {
            setRetry(retryCount, -1);
            return this;
        }

        public DownloadGenerator setDownloadTaskExecutor(DownloadTaskExecutor downloadTaskExecutor) {
            this.downloadTaskExecutor = downloadTaskExecutor;
            return this;
        }

        public void submit() {
            this.id = TextUtils.isEmpty(this.id) ? this.url : this.id;
            if (this.threadNum <= 0) {
                this.threadNum = 3;
            }
            if (this.downloadListener != null) {
                this.downloadListener.setId(this.id);
                this.downloadListener.enable();
            }
            if (this.httpRequestBuilder != null && !HttpRequest.METHOD_GET.equalsIgnoreCase(this.httpRequestBuilder.url(this.url).build().method())) {
                disableBreakPointDownload();
            }
            ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).submit(new DownloadRequest(this));
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return getId().equals(downloadRequest.getId());
    }

    public int hashCode() {
        return getId().hashCode();
    }
}

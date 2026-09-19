package com.huxq17.download.config;

import android.support.v4.media.session.PlaybackStateCompat;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.connection.DownloadConnection;
import com.huxq17.download.core.connection.OkHttpDownloadConnection;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.utils.OKHttpUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadConfig {
    private DownloadConnection.Factory connectionFactory;
    private List<DownloadInterceptor> interceptors;
    private int maxRunningTaskNumber;
    private long minUsableStorageSpace;

    private DownloadConfig() {
        this.maxRunningTaskNumber = 3;
        this.minUsableStorageSpace = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        this.interceptors = new ArrayList();
    }

    public int getMaxRunningTaskNumber() {
        return this.maxRunningTaskNumber;
    }

    public long getMinUsableSpace() {
        return this.minUsableStorageSpace;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public List<DownloadInterceptor> getInterceptors() {
        return Collections.unmodifiableList(this.interceptors);
    }

    public DownloadConnection.Factory getDownloadConnectionFactory() {
        return this.connectionFactory == null ? new OkHttpDownloadConnection.Factory(OKHttpUtil.get()) : this.connectionFactory;
    }

    public static class Builder {
        private DownloadConfig downloadConfig;

        private Builder() {
            this.downloadConfig = new DownloadConfig();
        }

        public Builder setMaxRunningTaskNum(int maxRunningTaskNumber) {
            this.downloadConfig.maxRunningTaskNumber = maxRunningTaskNumber;
            return this;
        }

        public Builder setMinUsableStorageSpace(long minUsableStorageSpace) {
            this.downloadConfig.minUsableStorageSpace = minUsableStorageSpace;
            return this;
        }

        public Builder addDownloadInterceptor(DownloadInterceptor interceptor) {
            this.downloadConfig.interceptors.add(interceptor);
            return this;
        }

        public Builder setDownloadConnectionFactory(DownloadConnection.Factory factory) {
            this.downloadConfig.connectionFactory = factory;
            return this;
        }

        public void build() {
            ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).setConfig(this.downloadConfig);
        }
    }
}

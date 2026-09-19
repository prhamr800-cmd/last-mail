package com.huxq17.download.config;

import android.support.v4.media.session.PlaybackStateCompat;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.connection.DownloadConnection;
import com.huxq17.download.core.connection.OkHttpDownloadConnection;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.utils.OKHttpUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadConfigService implements IDownloadConfigService {
    private DownloadConnection.Factory connectionFactory;
    private DownloadConfig downloadConfig;
    private List<DownloadInterceptor> interceptors;
    private int maxRunningTaskNumber = 3;
    private long minUsableStorageSpace = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;

    private DownloadConfigService() {
    }

    @Override // com.huxq17.download.core.service.IDownloadConfigService
    public void setConfig(DownloadConfig downloadConfig) {
        this.downloadConfig = downloadConfig;
    }

    @Override // com.huxq17.download.core.service.IDownloadConfigService
    public int getMaxRunningTaskNumber() {
        if (this.downloadConfig == null) {
            return this.maxRunningTaskNumber;
        }
        return this.downloadConfig.getMaxRunningTaskNumber();
    }

    @Override // com.huxq17.download.core.service.IDownloadConfigService
    public long getMinUsableSpace() {
        if (this.downloadConfig == null) {
            return this.minUsableStorageSpace;
        }
        return this.downloadConfig.getMinUsableSpace();
    }

    @Override // com.huxq17.download.core.service.IDownloadConfigService
    public List<DownloadInterceptor> getDownloadInterceptors() {
        if (this.downloadConfig == null) {
            this.interceptors = Collections.emptyList();
        } else {
            this.interceptors = this.downloadConfig.getInterceptors();
        }
        return this.interceptors;
    }

    @Override // com.huxq17.download.core.service.IDownloadConfigService
    public DownloadConnection.Factory getDownloadConnectionFactory() {
        if (this.downloadConfig == null) {
            this.connectionFactory = new OkHttpDownloadConnection.Factory(OKHttpUtil.get());
        } else {
            this.connectionFactory = this.downloadConfig.getDownloadConnectionFactory();
        }
        return this.connectionFactory;
    }
}

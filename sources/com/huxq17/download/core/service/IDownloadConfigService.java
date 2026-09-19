package com.huxq17.download.core.service;

import com.huxq17.download.config.DownloadConfig;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.connection.DownloadConnection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IDownloadConfigService {
    DownloadConnection.Factory getDownloadConnectionFactory();

    List<DownloadInterceptor> getDownloadInterceptors();

    int getMaxRunningTaskNumber();

    long getMinUsableSpace();

    void setConfig(DownloadConfig downloadConfig);
}

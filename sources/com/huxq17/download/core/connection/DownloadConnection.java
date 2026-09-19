package com.huxq17.download.core.connection;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public interface DownloadConnection {

    public interface Factory {
        DownloadConnection create(@NonNull Request.Builder builder);
    }

    void addHeader(String str, String str2);

    void cancel();

    void close();

    Response connect() throws IOException;

    Response connect(@NonNull String str) throws IOException;

    int downloadBuffer(byte[] bArr, int i, int i2) throws IOException;

    void flushDownload() throws IOException;

    String getHeader(String str);

    boolean isCanceled();

    void prepareDownload(File file) throws IOException;
}

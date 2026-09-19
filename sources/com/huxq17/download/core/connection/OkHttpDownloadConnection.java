package com.huxq17.download.core.connection;

import androidx.annotation.NonNull;
import com.huxq17.download.core.connection.DownloadConnection;
import com.huxq17.download.utils.Util;
import java.io.File;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpDownloadConnection implements DownloadConnection {
    private BufferedSink bufferedSink;
    private BufferedSource bufferedSource;
    private Request.Builder builder;
    private Call call;
    private OkHttpClient okHttpClient;
    private Response response;

    public OkHttpDownloadConnection(OkHttpClient okHttpClient, Request.Builder builder) {
        this.okHttpClient = okHttpClient;
        this.builder = builder;
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public void addHeader(String key, String value) {
        this.builder.addHeader(key, value);
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public String getHeader(String key) {
        return this.response.header(key);
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public Response connect() throws IOException {
        this.call = this.okHttpClient.newCall(this.builder.build());
        Response responseExecute = this.call.execute();
        this.response = responseExecute;
        return responseExecute;
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public Response connect(@NonNull String method) throws IOException {
        Request request = this.builder.method(method, null).build();
        this.call = this.okHttpClient.newCall(request);
        Response responseExecute = this.call.execute();
        this.response = responseExecute;
        return responseExecute;
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public void prepareDownload(File downloadFile) throws IOException {
        this.bufferedSource = this.response.body().source();
        this.bufferedSink = Okio.buffer(Okio.appendingSink(downloadFile));
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public int downloadBuffer(byte[] buffer, int offset, int byteCount) throws IOException {
        int len = this.bufferedSource.read(buffer, offset, byteCount);
        if (len != -1) {
            this.bufferedSink.write(buffer, 0, len);
        }
        return len;
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public void flushDownload() throws IOException {
        this.bufferedSink.flush();
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public void close() {
        Util.closeQuietly(this.bufferedSink);
        Util.closeQuietly(this.bufferedSource);
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public void cancel() {
        if (this.call != null) {
            this.call.cancel();
        }
    }

    @Override // com.huxq17.download.core.connection.DownloadConnection
    public boolean isCanceled() {
        return this.call != null && this.call.isCanceled();
    }

    public static class Factory implements DownloadConnection.Factory {
        private OkHttpClient okHttpClient;

        public Factory(OkHttpClient okHttpClient) {
            this.okHttpClient = okHttpClient;
        }

        @Override // com.huxq17.download.core.connection.DownloadConnection.Factory
        public DownloadConnection create(@NonNull Request.Builder requestBuilder) {
            return new OkHttpDownloadConnection(this.okHttpClient, requestBuilder);
        }
    }
}

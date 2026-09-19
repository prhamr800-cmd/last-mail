package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import io.fabric.sdk.android.services.network.HttpRequest;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes2.dex */
public final class RealResponseBody extends ResponseBody {
    private final Headers headers;
    private final BufferedSource source;

    public RealResponseBody(Headers headers, BufferedSource source) {
        this.headers = headers;
        this.source = source;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public MediaType contentType() {
        String contentType = this.headers.get(HttpRequest.HEADER_CONTENT_TYPE);
        if (contentType != null) {
            return MediaType.parse(contentType);
        }
        return null;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public long contentLength() {
        return OkHeaders.contentLength(this.headers);
    }

    @Override // com.squareup.okhttp.ResponseBody
    public BufferedSource source() {
        return this.source;
    }
}

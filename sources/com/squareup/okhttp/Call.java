package com.squareup.okhttp;

import android.support.v4.app.NotificationCompat;
import com.huxq17.download.utils.Util;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.StreamAllocation;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    HttpEngine engine;
    private boolean executed;
    Request originalRequest;

    protected Call(OkHttpClient client, Request originalRequest) {
        this.client = client.copyWithDefaults();
        this.originalRequest = originalRequest;
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        try {
            this.client.getDispatcher().executed(this);
            Response result = getResponseWithInterceptorChain(false);
            if (result != null) {
                return result;
            }
            throw new IOException("Canceled");
        } finally {
            this.client.getDispatcher().finished(this);
        }
    }

    Object tag() {
        return this.originalRequest.tag();
    }

    public void enqueue(Callback responseCallback) {
        enqueue(responseCallback, false);
    }

    void enqueue(Callback responseCallback, boolean forWebSocket) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.client.getDispatcher().enqueue(new AsyncCall(responseCallback, forWebSocket));
    }

    public void cancel() {
        this.canceled = true;
        if (this.engine != null) {
            this.engine.cancel();
        }
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    final class AsyncCall extends NamedRunnable {
        private final boolean forWebSocket;
        private final Callback responseCallback;

        private AsyncCall(Callback responseCallback, boolean forWebSocket) {
            super("OkHttp %s", Call.this.originalRequest.urlString());
            this.responseCallback = responseCallback;
            this.forWebSocket = forWebSocket;
        }

        String host() {
            return Call.this.originalRequest.httpUrl().host();
        }

        Request request() {
            return Call.this.originalRequest;
        }

        Object tag() {
            return Call.this.originalRequest.tag();
        }

        void cancel() {
            Call.this.cancel();
        }

        Call get() {
            return Call.this;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        protected void execute() {
            boolean signalledCallback = false;
            try {
                try {
                    Response response = Call.this.getResponseWithInterceptorChain(this.forWebSocket);
                    if (Call.this.canceled) {
                        signalledCallback = true;
                        this.responseCallback.onFailure(Call.this.originalRequest, new IOException("Canceled"));
                    } else {
                        signalledCallback = true;
                        this.responseCallback.onResponse(response);
                    }
                } catch (IOException e) {
                    if (signalledCallback) {
                        Internal.logger.log(Level.INFO, "Callback failure for " + Call.this.toLoggableString(), (Throwable) e);
                    } else {
                        Request request = Call.this.engine == null ? Call.this.originalRequest : Call.this.engine.getRequest();
                        this.responseCallback.onFailure(request, e);
                    }
                }
            } finally {
                Call.this.client.getDispatcher().finished(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String toLoggableString() {
        String string = this.canceled ? "canceled call" : NotificationCompat.CATEGORY_CALL;
        HttpUrl redactedUrl = this.originalRequest.httpUrl().resolve("/...");
        return string + " to " + redactedUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response getResponseWithInterceptorChain(boolean forWebSocket) throws IOException {
        Interceptor.Chain chain = new ApplicationInterceptorChain(0, this.originalRequest, forWebSocket);
        return chain.proceed(this.originalRequest);
    }

    class ApplicationInterceptorChain implements Interceptor.Chain {
        private final boolean forWebSocket;
        private final int index;
        private final Request request;

        ApplicationInterceptorChain(int index, Request request, boolean forWebSocket) {
            this.index = index;
            this.request = request;
            this.forWebSocket = forWebSocket;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return null;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.request;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            if (this.index < Call.this.client.interceptors().size()) {
                Interceptor.Chain chain = Call.this.new ApplicationInterceptorChain(this.index + 1, request, this.forWebSocket);
                Interceptor interceptor = Call.this.client.interceptors().get(this.index);
                Response interceptedResponse = interceptor.intercept(chain);
                if (interceptedResponse == null) {
                    throw new NullPointerException("application interceptor " + interceptor + " returned null");
                }
                return interceptedResponse;
            }
            return Call.this.getResponse(request, this.forWebSocket);
        }
    }

    Response getResponse(Request request, boolean forWebSocket) throws IOException {
        Request request2;
        Response response;
        Request followUp;
        RequestBody body = request.body();
        if (body != null) {
            Request.Builder requestBuilder = request.newBuilder();
            MediaType contentType = body.contentType();
            if (contentType != null) {
                requestBuilder.header(HttpRequest.HEADER_CONTENT_TYPE, contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                requestBuilder.header(HttpRequest.HEADER_CONTENT_LENGTH, Long.toString(contentLength));
                requestBuilder.removeHeader("Transfer-Encoding");
            } else {
                requestBuilder.header("Transfer-Encoding", Util.TRANSFER_ENCODING_CHUNKED);
                requestBuilder.removeHeader(HttpRequest.HEADER_CONTENT_LENGTH);
            }
            request2 = requestBuilder.build();
        } else {
            request2 = request;
        }
        this.engine = new HttpEngine(this.client, request2, false, false, forWebSocket, null, null, null);
        int followUpCount = 0;
        while (!this.canceled) {
            boolean releaseConnection = true;
            try {
                try {
                    try {
                        this.engine.sendRequest();
                        this.engine.readResponse();
                        releaseConnection = false;
                        response = this.engine.getResponse();
                        followUp = this.engine.followUpRequest();
                    } catch (IOException e) {
                        HttpEngine retryEngine = this.engine.recover(e, null);
                        if (retryEngine == null) {
                            throw e;
                        }
                        this.engine = retryEngine;
                        if (0 != 0) {
                            StreamAllocation streamAllocation = this.engine.close();
                            streamAllocation.release();
                        }
                    }
                } catch (RequestException e2) {
                    throw e2.getCause();
                } catch (RouteException e3) {
                    HttpEngine retryEngine2 = this.engine.recover(e3);
                    if (retryEngine2 == null) {
                        throw e3.getLastConnectException();
                    }
                    this.engine = retryEngine2;
                    if (0 != 0) {
                        StreamAllocation streamAllocation2 = this.engine.close();
                        streamAllocation2.release();
                    }
                }
                if (followUp == null) {
                    if (!forWebSocket) {
                        this.engine.releaseStreamAllocation();
                    }
                    return response;
                }
                StreamAllocation streamAllocation3 = this.engine.close();
                followUpCount++;
                if (followUpCount > 20) {
                    streamAllocation3.release();
                    throw new ProtocolException("Too many follow-up requests: " + followUpCount);
                }
                if (!this.engine.sameConnection(followUp.httpUrl())) {
                    streamAllocation3.release();
                    streamAllocation3 = null;
                }
                this.engine = new HttpEngine(this.client, followUp, false, false, forWebSocket, streamAllocation3, null, response);
            } finally {
                if (releaseConnection) {
                    StreamAllocation streamAllocation4 = this.engine.close();
                    streamAllocation4.release();
                }
            }
        }
        this.engine.releaseStreamAllocation();
        throw new IOException("Canceled");
    }
}

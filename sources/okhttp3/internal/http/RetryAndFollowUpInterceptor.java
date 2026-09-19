package okhttp3.internal.http;

import com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: loaded from: classes2.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private volatile StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient client, boolean forWebSocket) {
        this.client = client;
        this.forWebSocket = forWebSocket;
    }

    public void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public void setCallStackTrace(Object callStackTrace) {
        this.callStackTrace = callStackTrace;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.IOException, okhttp3.ResponseBody, okhttp3.internal.connection.RealConnection, okhttp3.internal.http.HttpCodec] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r12v2 */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request requestFollowUpRequest;
        int i;
        Request request = chain.request();
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Call call = realInterceptorChain.call();
        EventListener eventListener = realInterceptorChain.eventListener();
        StreamAllocation streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request.url()), call, eventListener, this.callStackTrace);
        this.streamAllocation = streamAllocation;
        int i2 = 0;
        ?? r11 = 0;
        Request request2 = request;
        StreamAllocation streamAllocation2 = streamAllocation;
        Response responseProceed = null;
        while (true) {
            Response response = responseProceed;
            if (this.canceled) {
                streamAllocation2.release();
                throw new IOException("Canceled");
            }
            boolean z = true;
            try {
                try {
                    try {
                        responseProceed = realInterceptorChain.proceed(request2, streamAllocation2, r11, r11);
                        if (0 != 0) {
                            streamAllocation2.streamFailed(r11);
                            streamAllocation2.release();
                        }
                        if (response != null) {
                            responseProceed = responseProceed.newBuilder().priorResponse(response.newBuilder().body(r11).build()).build();
                        }
                        requestFollowUpRequest = followUpRequest(responseProceed, streamAllocation2.route());
                    } catch (IOException e) {
                        if (e instanceof ConnectionShutdownException) {
                            z = false;
                        }
                        if (!recover(e, streamAllocation2, z, request2)) {
                            throw e;
                        }
                        if (0 != 0) {
                            streamAllocation2.streamFailed(null);
                            streamAllocation2.release();
                        }
                        responseProceed = response;
                        r11 = 0;
                        streamAllocation2 = streamAllocation2;
                    }
                } catch (RouteException e2) {
                    if (!recover(e2.getLastConnectException(), streamAllocation2, false, request2)) {
                        throw e2.getLastConnectException();
                    }
                    if (0 != 0) {
                        streamAllocation2.streamFailed(null);
                        streamAllocation2.release();
                    }
                    responseProceed = response;
                    r11 = 0;
                    streamAllocation2 = streamAllocation2;
                }
                if (requestFollowUpRequest == null) {
                    if (!this.forWebSocket) {
                        streamAllocation2.release();
                    }
                    return responseProceed;
                }
                Util.closeQuietly(responseProceed.body());
                int i3 = i2 + 1;
                if (i3 > 20) {
                    streamAllocation2.release();
                    throw new ProtocolException("Too many follow-up requests: " + i3);
                }
                if (requestFollowUpRequest.body() instanceof UnrepeatableRequestBody) {
                    streamAllocation2.release();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", responseProceed.code());
                }
                if (sameConnection(responseProceed, requestFollowUpRequest.url())) {
                    i = i3;
                    HttpCodec httpCodecCodec = streamAllocation2.codec();
                    streamAllocation2 = streamAllocation2;
                    if (httpCodecCodec != null) {
                        throw new IllegalStateException("Closing the body of " + responseProceed + " didn't close its backing stream. Bad interceptor?");
                    }
                } else {
                    streamAllocation2.release();
                    i = i3;
                    StreamAllocation streamAllocation3 = new StreamAllocation(this.client.connectionPool(), createAddress(requestFollowUpRequest.url()), call, eventListener, this.callStackTrace);
                    this.streamAllocation = streamAllocation3;
                    streamAllocation2 = streamAllocation3;
                }
                request2 = requestFollowUpRequest;
                i2 = i;
                r11 = 0;
                streamAllocation2 = streamAllocation2;
            } catch (Throwable th) {
                if (1 != 0) {
                    streamAllocation2.streamFailed(null);
                    streamAllocation2.release();
                }
                throw th;
            }
        }
    }

    private Address createAddress(HttpUrl url) {
        SSLSocketFactory sslSocketFactory = null;
        HostnameVerifier hostnameVerifier = null;
        CertificatePinner certificatePinner = null;
        if (url.isHttps()) {
            sslSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        }
        return new Address(url.host(), url.port(), this.client.dns(), this.client.socketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private boolean recover(IOException e, StreamAllocation streamAllocation, boolean requestSendStarted, Request userRequest) {
        streamAllocation.streamFailed(e);
        if (this.client.retryOnConnectionFailure()) {
            return !(requestSendStarted && (userRequest.body() instanceof UnrepeatableRequestBody)) && isRecoverable(e, requestSendStarted) && streamAllocation.hasMoreRoutes();
        }
        return false;
    }

    private boolean isRecoverable(IOException e, boolean requestSendStarted) {
        if (e instanceof ProtocolException) {
            return false;
        }
        return e instanceof InterruptedIOException ? (e instanceof SocketTimeoutException) && !requestSendStarted : (((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private Request followUpRequest(Response userResponse, Route route) throws IOException {
        String location;
        HttpUrl url;
        Proxy selectedProxy;
        if (userResponse == null) {
            throw new IllegalStateException();
        }
        int responseCode = userResponse.code();
        String method = userResponse.request().method();
        switch (responseCode) {
            case ArcAnimationFactory.MAXIMUM_SWEEP_ANGLE /* 300 */:
            case 301:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!method.equals(HttpRequest.METHOD_GET) && !method.equals(HttpRequest.METHOD_HEAD)) {
                    return null;
                }
                break;
            case 401:
                return this.client.authenticator().authenticate(route, userResponse);
            case 407:
                if (route != null) {
                    selectedProxy = route.proxy();
                } else {
                    selectedProxy = this.client.proxy();
                }
                if (selectedProxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.client.proxyAuthenticator().authenticate(route, userResponse);
            case 408:
                if (!this.client.retryOnConnectionFailure() || (userResponse.request().body() instanceof UnrepeatableRequestBody)) {
                    return null;
                }
                if ((userResponse.priorResponse() != null && userResponse.priorResponse().code() == 408) || retryAfter(userResponse, 0) > 0) {
                    return null;
                }
                return userResponse.request();
            case 503:
                if ((userResponse.priorResponse() != null && userResponse.priorResponse().code() == 503) || retryAfter(userResponse, Integer.MAX_VALUE) != 0) {
                    return null;
                }
                return userResponse.request();
            default:
                return null;
        }
        if (!this.client.followRedirects() || (location = userResponse.header(HttpRequest.HEADER_LOCATION)) == null || (url = userResponse.request().url().resolve(location)) == null) {
            return null;
        }
        boolean sameScheme = url.scheme().equals(userResponse.request().url().scheme());
        if (!sameScheme && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder requestBuilder = userResponse.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            boolean maintainBody = HttpMethod.redirectsWithBody(method);
            if (HttpMethod.redirectsToGet(method)) {
                requestBuilder.method(HttpRequest.METHOD_GET, null);
            } else {
                RequestBody requestBody = maintainBody ? userResponse.request().body() : null;
                requestBuilder.method(method, requestBody);
            }
            if (!maintainBody) {
                requestBuilder.removeHeader("Transfer-Encoding");
                requestBuilder.removeHeader(HttpRequest.HEADER_CONTENT_LENGTH);
                requestBuilder.removeHeader(HttpRequest.HEADER_CONTENT_TYPE);
            }
        }
        if (!sameConnection(userResponse, url)) {
            requestBuilder.removeHeader(HttpRequest.HEADER_AUTHORIZATION);
        }
        return requestBuilder.url(url).build();
    }

    private int retryAfter(Response userResponse, int defaultDelay) {
        String header = userResponse.header("Retry-After");
        if (header == null) {
            return defaultDelay;
        }
        if (header.matches("\\d+")) {
            return Integer.valueOf(header).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean sameConnection(Response response, HttpUrl followUp) {
        HttpUrl url = response.request().url();
        return url.host().equals(followUp.host()) && url.port() == followUp.port() && url.scheme().equals(followUp.scheme());
    }
}

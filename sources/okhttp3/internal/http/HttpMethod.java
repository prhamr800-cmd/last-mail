package okhttp3.internal.http;

import com.android.volley.toolbox.HttpClientStack;
import io.fabric.sdk.android.services.network.HttpRequest;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpMethod {
    public static boolean invalidatesCache(String method) {
        return method.equals(HttpRequest.METHOD_POST) || method.equals(HttpClientStack.HttpPatch.METHOD_NAME) || method.equals(HttpRequest.METHOD_PUT) || method.equals(HttpRequest.METHOD_DELETE) || method.equals("MOVE");
    }

    public static boolean requiresRequestBody(String method) {
        return method.equals(HttpRequest.METHOD_POST) || method.equals(HttpRequest.METHOD_PUT) || method.equals(HttpClientStack.HttpPatch.METHOD_NAME) || method.equals("PROPPATCH") || method.equals("REPORT");
    }

    public static boolean permitsRequestBody(String method) {
        return (method.equals(HttpRequest.METHOD_GET) || method.equals(HttpRequest.METHOD_HEAD)) ? false : true;
    }

    public static boolean redirectsWithBody(String method) {
        return method.equals("PROPFIND");
    }

    public static boolean redirectsToGet(String method) {
        return !method.equals("PROPFIND");
    }

    private HttpMethod() {
    }
}

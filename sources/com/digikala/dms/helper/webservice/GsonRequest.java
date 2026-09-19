package com.digikala.dms.helper.webservice;

import android.util.Log;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.digikala.dms.core.App;
import com.digikala.dms.util.AppConfig;
import com.digikala.dms.util.Util;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.realm.RealmObject;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GsonRequest<T> extends Request<T> {
    private static final String TAG_DEBUG = GsonRequest.class.getSimpleName();
    private static Gson sGson;
    private final HashMap<String, String> mParams;
    private final Response.Listener<T> mResponseListener;
    private final Type mResponseType;

    public GsonRequest(int method, Type responseType, String url, Response.Listener responseListener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.mResponseType = responseType;
        this.mParams = null;
        this.mResponseListener = responseListener;
        initRealmCompatibleGson();
        setRetryPolicies(method);
    }

    public GsonRequest(int method, Type responseType, String url, HashMap<String, String> params, Response.Listener responseListener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.mResponseType = responseType;
        this.mParams = params;
        this.mResponseListener = responseListener;
        initRealmCompatibleGson();
        setRetryPolicies(method);
    }

    @Override // com.android.volley.Request
    protected Response<T> parseNetworkResponse(NetworkResponse response) {
        try {
            String responseJsonStr = new String(response.data, HttpRequest.CHARSET_UTF8);
            return Response.success(sGson.fromJson(responseJsonStr, this.mResponseType), HttpHeaderParser.parseCacheHeaders(response));
        } catch (JsonSyntaxException jse) {
            jse.printStackTrace();
            return Response.error(new ParseError(jse));
        } catch (UnsupportedEncodingException uee) {
            uee.printStackTrace();
            return Response.error(new ParseError(uee));
        }
    }

    @Override // com.android.volley.Request
    protected void deliverResponse(T response) {
        try {
            this.mResponseListener.onResponse(response);
        } catch (NullPointerException npe) {
            Log.e(TAG_DEBUG, "responseListener is not initialized. exception message: " + npe, npe);
        }
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() throws AuthFailureError {
        Map<String, String> headers = new HashMap<>();
        Log.e(TAG_DEBUG, "syncError getHeaders: call ");
        Log.e(TAG_DEBUG, "syncError getHeaders: " + Util.getDeliveryAuthToken(App.getApplication()));
        headers.put("AuthToken", Util.getDeliveryAuthToken(App.getApplication()));
        headers.put("AppVersion", String.valueOf(Util.getAppVersionCode(App.getApplication())));
        headers.put(HttpRequest.HEADER_AUTHORIZATION, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ=");
        return headers;
    }

    @Override // com.android.volley.Request
    protected Map<String, String> getParams() throws AuthFailureError {
        return this.mParams != null ? this.mParams : super.getParams();
    }

    private void initRealmCompatibleGson() {
        sGson = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() { // from class: com.digikala.dms.helper.webservice.GsonRequest.1
            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipField(FieldAttributes f) {
                return f.getDeclaringClass().equals(RealmObject.class);
            }

            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipClass(Class<?> clazz) {
                return false;
            }
        }).create();
    }

    private void setRetryPolicies(int method) {
        int initialTimeoutMs = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        int maxNumRetries = 1;
        float backoffMultiplier = 1.0f;
        if (method == 0) {
            initialTimeoutMs = AppConfig.getRequestsInitialTimeoutMs;
            maxNumRetries = 3;
            backoffMultiplier = 1.0f;
        } else if (method == 1) {
            initialTimeoutMs = AppConfig.postRequestsInitialTimeoutMs;
            maxNumRetries = 1;
            backoffMultiplier = 1.0f;
        }
        setRetryPolicy(new DefaultRetryPolicy(initialTimeoutMs, maxNumRetries, backoffMultiplier));
    }
}

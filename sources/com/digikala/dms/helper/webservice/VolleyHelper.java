package com.digikala.dms.helper.webservice;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.BaseHttpStack;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.Volley;
import io.fabric.sdk.android.services.network.HttpRequest;

/* JADX INFO: loaded from: classes.dex */
public class VolleyHelper {
    private static final String TAG_DEBUG = VolleyHelper.class.getName();
    private static final String TAG_REQUEST = "NO TAG";
    private static Context sContext;
    private static ImageLoader sImageLoaderWithMemoryCache;
    private static boolean sInitialized;
    private static RequestQueue sRequestQueue;

    private VolleyHelper() {
    }

    public static void init(Context appContext) {
        sContext = appContext;
        sRequestQueue = Volley.newRequestQueue(sContext, (BaseHttpStack) new OkHttpStack());
        sImageLoaderWithMemoryCache = new ImageLoader(sRequestQueue, new MemoryBitmapCache());
        sInitialized = true;
    }

    public static <T> void addToRequestQueue(Request<T> req) {
        if (sInitialized) {
            req.setTag(TAG_REQUEST);
            sRequestQueue.add(req);
            try {
                String str = TAG_DEBUG;
                StringBuilder sb = new StringBuilder();
                sb.append("Enqueued Request:\nTag: NO TAG\nMethod: ");
                sb.append(req.getMethod() == 0 ? HttpRequest.METHOD_GET : HttpRequest.METHOD_POST);
                sb.append("\nURL: ");
                sb.append(req.getUrl());
                sb.append("\nHeaders: ");
                sb.append(req.getHeaders().toString());
                sb.append("\nBody: ");
                sb.append(req.getBody());
                sb.append("\nContentType: ");
                sb.append(req.getBodyContentType());
                sb.append("\n");
                Log.i(str, sb.toString());
            } catch (Exception e) {
                Log.e(TAG_DEBUG, e.getMessage() + "");
            }
        }
    }

    public static <T> void addToRequestQueue(Request<T> req, String tag) {
        if (sInitialized) {
            req.setTag(TextUtils.isEmpty(tag) ? TAG_REQUEST : tag);
            VolleyLog.d("Adding request to queue: %s", req.getUrl());
            req.setRetryPolicy(new DefaultRetryPolicy(50000, 0, 5000.0f));
            sRequestQueue.add(req);
            try {
                Log.d(TAG_DEBUG, "addToRequestQueue: 70");
                Log.d(TAG_DEBUG, "addToRequestQueue: " + req.getHeaders().toString());
                Log.d(TAG_DEBUG, "addToRequestQueue: 72");
                Log.d(TAG_DEBUG, "addToRequestQueue: 74");
                Log.d(TAG_DEBUG, "addToRequestQueue: " + req.getBodyContentType());
                return;
            } catch (Exception e) {
                Log.e(TAG_DEBUG, e.getMessage() + "");
                return;
            }
        }
        Log.e(TAG_DEBUG, "Not init");
    }

    public static void cancelPendingRequests(Object tag) {
        if (sInitialized) {
            sRequestQueue.cancelAll(tag);
        }
    }

    public static void clearRequestQueue() {
        if (sInitialized) {
            sRequestQueue.cancelAll(new RequestQueue.RequestFilter() { // from class: com.digikala.dms.helper.webservice.VolleyHelper.1
                @Override // com.android.volley.RequestQueue.RequestFilter
                public boolean apply(Request<?> request) {
                    try {
                        String str = VolleyHelper.TAG_DEBUG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Dequeued Request:\nTag: ");
                        sb.append(request.getTag());
                        sb.append("\nMethod: ");
                        sb.append(request.getMethod() == 0 ? HttpRequest.METHOD_GET : HttpRequest.METHOD_POST);
                        sb.append("\nURL: ");
                        sb.append(request.getUrl());
                        sb.append("\nHeaders: ");
                        sb.append(request.getHeaders().toString());
                        sb.append("\nBody: ");
                        sb.append(request.getBody());
                        sb.append("\nContentType: ");
                        sb.append(request.getBodyContentType());
                        sb.append("\n");
                        Log.e(str, sb.toString());
                        return true;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return true;
                    }
                }
            });
            sRequestQueue = Volley.newRequestQueue(sContext, (BaseHttpStack) new OkHttpStack());
        }
    }

    public static void downloadAndMemoryCacheBitmap(String imageUrl, ImageLoader.ImageListener listener) {
        sImageLoaderWithMemoryCache.get(imageUrl, listener);
    }
}

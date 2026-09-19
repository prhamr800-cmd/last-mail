package com.digikala.dms.helper.webservice;

import android.util.Log;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.digikala.dms.core.App;
import com.digikala.dms.util.DownloadManager;
import com.digikala.dms.util.Util;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Type;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class WebApiRequest<T> {
    private static OnForceUpdateListener mForceUpdateListener;
    private final GsonRequest<?> mGsonRequest;
    private final LoadRequests mLoadRequestsInterface;
    private RequestStatus mStatus = RequestStatus.READY;
    private final String mTag;

    public interface LoadRequests {
        void addRequestToLoadList(WebApiRequest<?> webApiRequest, boolean z);

        void reloadRequests();
    }

    public interface OnForceUpdateListener {
        void checkPermission();

        void downloadComplete(String str);

        void forceUpdate();

        void optionalUpdate();
    }

    public enum RequestStatus {
        READY,
        SENT,
        SUCCESS,
        ERROR
    }

    public interface WebApiListener<D> {
        void onErrorResponse(String str);

        void onResponse(D d);
    }

    public WebApiRequest(int httpMethod, final String query, HashMap<String, String> params, Type responseType, String requestTag, final WebApiListener webApiListener, LoadRequests loadRequestsInterface) {
        this.mTag = requestTag;
        this.mLoadRequestsInterface = loadRequestsInterface;
        Response.Listener<WebApiResponse<T>> responseListener = new Response.Listener<WebApiResponse<T>>() { // from class: com.digikala.dms.helper.webservice.WebApiRequest.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(WebApiResponse<T> response) {
                Log.e("TAG", "onResponse: " + ((WebApiResponse) response).status);
                if (response == null || ((WebApiResponse) response).status == null || !((WebApiResponse) response).status.equals("ForceUpdate")) {
                    if (response != null && ((WebApiResponse) response).status.equals("OptionalUpdate")) {
                        if (query.equalsIgnoreCase(WebApi.ENDPOINT_LOGIN)) {
                            WebApiRequest.mForceUpdateListener.optionalUpdate();
                            WebApiRequest.mForceUpdateListener.checkPermission();
                            WebApiRequest.this.startDownloadAPK(((WebApiResponse) response).message);
                        }
                        webApiListener.onResponse(((WebApiResponse) response).data);
                        WebApiRequest.this.mStatus = RequestStatus.SUCCESS;
                        return;
                    }
                    if (response == null || !((WebApiResponse) response).status.equals("Success")) {
                        WebApiRequest.this.mStatus = RequestStatus.ERROR;
                        String errorMsg = response != null ? ((WebApiResponse) response).message : "Volley Response is Null";
                        webApiListener.onErrorResponse(errorMsg);
                        if (WebApiRequest.this.mLoadRequestsInterface != null) {
                            WebApiRequest.this.mLoadRequestsInterface.reloadRequests();
                            return;
                        }
                        return;
                    }
                    webApiListener.onResponse(((WebApiResponse) response).data);
                    WebApiRequest.this.mStatus = RequestStatus.SUCCESS;
                    return;
                }
                Log.e("TAG", query + "   " + WebApi.ENDPOINT_CONFIRM_SHIPMENTS_BATCH + " onResponse: " + ((WebApiResponse) response).status);
                if (query.equalsIgnoreCase(WebApi.ENDPOINT_LOGIN) || query.contains(WebApi.ENDPOINT_CONFIRM_SHIPMENTS_BATCH)) {
                    WebApiRequest.mForceUpdateListener.checkPermission();
                    WebApiRequest.mForceUpdateListener.forceUpdate();
                    WebApiRequest.this.startDownloadAPK(((WebApiResponse) response).message);
                } else {
                    webApiListener.onResponse(((WebApiResponse) response).data);
                    WebApiRequest.this.mStatus = RequestStatus.SUCCESS;
                }
            }
        };
        Response.ErrorListener errorListener = new Response.ErrorListener() { // from class: com.digikala.dms.helper.webservice.WebApiRequest.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                WebApiRequest.this.mStatus = RequestStatus.ERROR;
                String errorMessage = Util.getErrorMessage(error, App.getApplication());
                webApiListener.onErrorResponse(errorMessage);
                if (WebApiRequest.this.mLoadRequestsInterface != null) {
                    WebApiRequest.this.mLoadRequestsInterface.reloadRequests();
                }
            }
        };
        String url = "https://lg.digikala.com/dms-api/" + query;
        this.mGsonRequest = new GsonRequest<>(httpMethod, responseType, url, params, responseListener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDownloadAPK(String linkUrl) {
        DownloadManager.download(linkUrl);
    }

    public RequestStatus getStatus() {
        return this.mStatus;
    }

    public void setStatus(RequestStatus status) {
        this.mStatus = status;
    }

    public void attach() {
        this.mLoadRequestsInterface.addRequestToLoadList(this, true);
    }

    public void attach(boolean loadDataOnResume) {
        this.mLoadRequestsInterface.addRequestToLoadList(this, loadDataOnResume);
    }

    public void send() {
        VolleyHelper.addToRequestQueue(this.mGsonRequest, this.mTag);
        this.mStatus = RequestStatus.SENT;
    }

    public static void setOnForceUpdateReceived(OnForceUpdateListener onForceUpdateListener) {
        mForceUpdateListener = onForceUpdateListener;
    }

    public static class WebApiResponse<U> {
        private static final String STATUS_ERROR = "Error";
        private static final String STATUS_FAIL = "Fail";
        private static final String STATUS_FORCE_UPDATE = "ForceUpdate";
        private static final String STATUS_OPTIONAL_UPDATE = "OptionalUpdate";
        private static final String STATUS_SUCCESS = "Success";

        @SerializedName("Data")
        private U data;

        @SerializedName("Message")
        private String message;

        @SerializedName("Status")
        private String status;
    }
}

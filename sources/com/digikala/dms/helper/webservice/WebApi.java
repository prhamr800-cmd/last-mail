package com.digikala.dms.helper.webservice;

import android.util.Log;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.RetryPolicy;
import com.digikala.dms.core.App;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.ConstantValue;
import com.digikala.dms.model.design.LoginResult;
import com.digikala.dms.model.design.NonRealmSerialItems;
import com.digikala.dms.model.design.PartialDeliver;
import com.digikala.dms.model.design.ReturnedShipment;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.design.ShipmentPriority;
import com.digikala.dms.model.design.SyncCandidateShipment;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.Rate;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.AppConfig;
import com.digikala.dms.util.Util;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.realm.RealmObject;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class WebApi {
    private static final String ENDPOINT_CHANGE_PASSWORD = "Account/ChangePassword";
    public static final String ENDPOINT_CONFIRM_SHIPMENTS_BATCH = "Driver/DriverConfirm";
    private static final String ENDPOINT_DYNAMIC_SHIPPING_COST = "Driver/DynamicShippingCost";
    private static final String ENDPOINT_FINALIZE_SHIPMENTS_BATCH = "Driver/Finalize";
    private static final String ENDPOINT_FULL_DELIVER = "Driver/CustomerConfirm";
    private static final String ENDPOINT_GET_CONST_VALUES = "Driver/ConstantValue";
    private static final String ENDPOINT_GET_RATE = "Driver/GetRate";
    private static final String ENDPOINT_GET_SHIPMENT = "Order/OrderItem";
    private static final String ENDPOINT_GET_SHIPMENTS = "Order/OrderList";
    private static final String ENDPOINT_LEFT_SHIPMENT = "Driver/LeftOrder";
    public static final String ENDPOINT_LOGIN = "Account/Login";
    private static final String ENDPOINT_LOGOUT = "Account/Logout";
    private static final String ENDPOINT_MISSED_CALL = "Driver/MissCall";
    private static final String ENDPOINT_PARTIAL_DELIVER = "Driver/HalfReturn";
    private static final String ENDPOINT_REJECT_SHIPMENT = "Driver/FullReturn";
    private static final String ENDPOINT_SEND_SHIPMENT_PRIORITY = "Driver/SetPriority";
    private static final String ENDPOINT_SEND_USER_LOCATION = "Driver/TrackLocation";
    private static final String ENDPOINT_SYNC_SHIPMENTS_WITH_BO = "Driver/Sync";

    public static WebApiRequest<LoginResult> makeLoginRequest(String userName, String password, String versionName, String requestTag, WebApiRequest.WebApiListener<LoginResult> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Type type = new TypeToken<WebApiRequest.WebApiResponse<LoginResult>>() { // from class: com.digikala.dms.helper.webservice.WebApi.1
        }.getType();
        HashMap<String, String> params = new HashMap<>();
        params.put("Username", userName);
        params.put("Password", password);
        params.put("VersionName", versionName);
        Log.e("TAG", "makeLoginRequest: " + type);
        return new WebApiRequest<>(1, ENDPOINT_LOGIN, params, type, requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> makeLogoutRequest(String deliveryId, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        return new WebApiRequest<>(1, "Account/Logout?userId=" + deliveryId, null, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.2
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Batch> makeGetBatchRequest(String deliveryId, String requestTag, WebApiRequest.WebApiListener<Batch> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Log.i("TESSST", "makeGetBatchRequest called");
        return new WebApiRequest<>(1, "Order/OrderList?userId=" + deliveryId, null, new TypeToken<WebApiRequest.WebApiResponse<Batch>>() { // from class: com.digikala.dms.helper.webservice.WebApi.3
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Batch> getRateRequest(String requestTag, WebApiRequest.WebApiListener<Rate> webApiListener, WebApiRequest.LoadRequests fragment) {
        Type type = new TypeToken<WebApiRequest.WebApiResponse<Rate>>() { // from class: com.digikala.dms.helper.webservice.WebApi.4
        }.getType();
        Log.e("tekenTest", "getRateRequest: " + type);
        return new WebApiRequest<>(1, ENDPOINT_GET_RATE, null, type, requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> makeConfirmBatchRequest(String batchId, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Log.i("CheckPackIdLog", "DriverConfirm     :" + batchId);
        return new WebApiRequest<>(1, "Driver/DriverConfirm?packId=" + batchId, null, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.5
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<ArrayList<Shipment>> makeGetShipment(String batchId, String orderId, String requestTag, WebApiRequest.WebApiListener<ArrayList<Shipment>> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Log.i("CheckPackIdLog", "GetDetails     :" + batchId);
        return new WebApiRequest<>(1, "Order/OrderItem?orderId=" + orderId + "&PackId=" + batchId, null, new TypeToken<WebApiRequest.WebApiResponse<ArrayList<Shipment>>>() { // from class: com.digikala.dms.helper.webservice.WebApi.6
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<ConstantValue> getConstantValueResponse(String deliveryId, String requestTag, WebApiRequest.WebApiListener<ConstantValue> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Log.e("TAG", "getConstantValueResponse: ");
        return new WebApiRequest<>(1, "Driver/ConstantValue?id=" + deliveryId, null, new TypeToken<WebApiRequest.WebApiResponse<ConstantValue>>() { // from class: com.digikala.dms.helper.webservice.WebApi.7
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> makeFullDeliverRequest(String batchId, String shipmentId, String cardTypeId, String cardNumber, String comment, String PaymentMethod, String signature, LatLong latLong, String gpsStatus, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        HashMap<String, String> param = new HashMap<>();
        Log.i("CheckPackIdLog", "full deliver:  " + batchId);
        param.put("PackId", batchId);
        param.put("OrderId", shipmentId);
        param.put("Signature", signature);
        param.put("Latitude", lat);
        param.put("Longitude", lng);
        param.put("CardTypeId", cardTypeId);
        param.put("CardNumber", cardNumber);
        param.put("Description", comment);
        param.put("GpsStatus", gpsStatus);
        if (PaymentMethod != null && !PaymentMethod.isEmpty()) {
            param.put("PaymentMethod", PaymentMethod);
        }
        Log.i("fulldelivery", "param:  " + param);
        return new WebApiRequest<>(1, ENDPOINT_FULL_DELIVER, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.8
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static void makeDynamicShippingCost(String batchId, String orderId, ArrayList<SerialItems> products, Response.Listener<JSONObject> responseListener, Response.ErrorListener errorListener) {
        Type paramType = new TypeToken<PartialDeliver>() { // from class: com.digikala.dms.helper.webservice.WebApi.9
        }.getType();
        Gson gson = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() { // from class: com.digikala.dms.helper.webservice.WebApi.10
            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipField(FieldAttributes f) {
                return f.getDeclaringClass().equals(RealmObject.class);
            }

            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipClass(Class<?> clazz) {
                return false;
            }
        }).create();
        PartialDeliver partialDeliver = new PartialDeliver();
        partialDeliver.setPackId(batchId);
        partialDeliver.setOrderId(orderId);
        partialDeliver.setSerialOrBatchItems(products);
        String gggg = gson.toJson(partialDeliver);
        Log.i("makeDynamic_Params", gggg);
        MCXIAOKEJsonObjectRequest request = new MCXIAOKEJsonObjectRequest(1, "https://lg.digikala.com/dms-api/Driver/DynamicShippingCost", gson.toJson(partialDeliver, paramType), responseListener, errorListener) { // from class: com.digikala.dms.helper.webservice.WebApi.11
            @Override // com.android.volley.Request
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = new HashMap<>();
                headers.put("AuthToken", Util.getDeliveryAuthToken(App.getApplication()));
                headers.put("AppVersion", String.valueOf(Util.getAppVersionCode(App.getApplication())));
                headers.put(HttpRequest.HEADER_AUTHORIZATION, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ=");
                return headers;
            }

            @Override // com.android.volley.Request
            public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
                return super.setRetryPolicy(new DefaultRetryPolicy(AppConfig.postRequestsInitialTimeoutMs, 1, 1.0f));
            }
        };
        VolleyHelper.addToRequestQueue(request);
    }

    public static void makePartialDeliverRequest(String batchId, String shipmentId, String cardTypeId, String cardNumber, String comment, String PaymentMethod, Long FinalPayableAmount, ArrayList<SerialItems> returnedProducts, String signature, LatLong latLong, String gpsStatus, String requestTag, Response.Listener<JSONObject> responseListener, Response.ErrorListener errorListener) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Type paramType = new TypeToken<PartialDeliver>() { // from class: com.digikala.dms.helper.webservice.WebApi.12
        }.getType();
        Gson gson = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() { // from class: com.digikala.dms.helper.webservice.WebApi.13
            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipField(FieldAttributes f) {
                return f.getDeclaringClass().equals(RealmObject.class);
            }

            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipClass(Class<?> clazz) {
                return false;
            }
        }).create();
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        PartialDeliver partialDeliver = new PartialDeliver();
        partialDeliver.setPackId(batchId);
        partialDeliver.setOrderId(shipmentId);
        partialDeliver.setSerialOrBatchItems(returnedProducts);
        partialDeliver.setSignature(signature);
        partialDeliver.setLatitude(lat);
        partialDeliver.setLongitude(lng);
        partialDeliver.setCardTypeId(cardTypeId);
        partialDeliver.setCardNumber(cardNumber);
        partialDeliver.setComment(comment);
        partialDeliver.setComment(comment);
        partialDeliver.setGpsStatus(gpsStatus);
        partialDeliver.setFinalPayableAmount(FinalPayableAmount);
        if (PaymentMethod != null && !PaymentMethod.isEmpty()) {
            partialDeliver.setPaymentMethod(PaymentMethod);
        }
        String gggg = gson.toJson(partialDeliver);
        Log.i("param_partialDeliver", gggg);
        MCXIAOKEJsonObjectRequest request = new MCXIAOKEJsonObjectRequest(1, "https://lg.digikala.com/dms-api/Driver/HalfReturn", gson.toJson(partialDeliver, paramType), responseListener, errorListener) { // from class: com.digikala.dms.helper.webservice.WebApi.14
            @Override // com.android.volley.Request
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = new HashMap<>();
                headers.put("AuthToken", Util.getDeliveryAuthToken(App.getApplication()));
                headers.put("AppVersion", String.valueOf(Util.getAppVersionCode(App.getApplication())));
                headers.put(HttpRequest.HEADER_AUTHORIZATION, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ=");
                return headers;
            }

            @Override // com.android.volley.Request
            public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
                return super.setRetryPolicy(new DefaultRetryPolicy(AppConfig.postRequestsInitialTimeoutMs, 1, 1.0f));
            }
        };
        VolleyHelper.addToRequestQueue(request);
    }

    public static WebApiRequest<Boolean> makeRejectShipmentRequest(String batchId, ReturnedShipment returnedShipment, LatLong latLong, String gpsStatus, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        HashMap<String, String> param = new HashMap<>();
        Log.i("CheckPackIdLog", "FullReturn   :" + batchId);
        param.put("PackId", batchId);
        param.put("OrderId", returnedShipment.getShipmentId());
        param.put("ReasonId", returnedShipment.getReasonId());
        param.put("Latitude", lat);
        param.put("Longitude", lng);
        param.put("GpsStatus", gpsStatus);
        return new WebApiRequest<>(1, ENDPOINT_REJECT_SHIPMENT, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.15
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> postLocation(String packId, LatLong latLong, String datetime, String battery, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        HashMap<String, String> param = new HashMap<>();
        param.put("packId", packId);
        param.put(Parameters.LATITUDE, lat);
        param.put(Parameters.LONGITUDE, lng);
        param.put("datetime", datetime);
        param.put("battery", battery);
        Log.e("battery_postLocation", battery);
        return new WebApiRequest<>(1, ENDPOINT_SEND_USER_LOCATION, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.16
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> makeMissedCallRequest(String batchId, String shipmentId, LatLong latLong, String gpsStatus, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        HashMap<String, String> param = new HashMap<>();
        Log.i("CheckPackIdLog", "missCall   :" + batchId);
        param.put("PackId", batchId);
        param.put("OrderId", shipmentId);
        param.put("Latitude", lat);
        param.put("Longitude", lng);
        param.put("GpsStatus", gpsStatus);
        return new WebApiRequest<>(1, ENDPOINT_MISSED_CALL, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.17
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static WebApiRequest<Boolean> makeLeftShipmentRequest(String batchId, ReturnedShipment returnedShipment, LatLong latLong, String gpsStatus, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Log.i("CheckPackIdLog", "FullReturn   :" + batchId);
        String lat = "";
        String lng = "";
        if (latLong != null) {
            lat = String.valueOf(latLong.getLatitude());
            lng = String.valueOf(latLong.getLongitude());
        }
        HashMap<String, String> param = new HashMap<>();
        Log.i("CheckPackIdLog", "missCall   :" + batchId);
        param.put("PackId", batchId);
        param.put("OrderId", returnedShipment.getShipmentId());
        param.put("UnprocessedReasonId", returnedShipment.getReasonId());
        param.put("Latitude", lat);
        param.put("Longitude", lng);
        param.put("GpsStatus", gpsStatus);
        return new WebApiRequest<>(1, ENDPOINT_LEFT_SHIPMENT, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.18
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static void makeSyncShipmentsWithBackOfficeRequest(String deliveryId, String batchId, List<Shipment> shipments, Response.Listener<JSONObject> responseListener, Response.ErrorListener errorListener) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Gson gson = new GsonBuilder().setExclusionStrategies(new ExclusionStrategy() { // from class: com.digikala.dms.helper.webservice.WebApi.19
            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipField(FieldAttributes f) {
                return f.getDeclaringClass().equals(RealmObject.class);
            }

            @Override // com.google.gson.ExclusionStrategy
            public boolean shouldSkipClass(Class<?> clazz) {
                return false;
            }
        }).create();
        Type paramType = new TypeToken<ArrayList<SyncCandidateShipment>>() { // from class: com.digikala.dms.helper.webservice.WebApi.20
        }.getType();
        ArrayList<SyncCandidateShipment> syncCandidateShipments = new ArrayList<>();
        Iterator<Shipment> it = shipments.iterator();
        while (it.hasNext()) {
            Shipment shipment = it.next();
            SyncCandidateShipment syncCandidateShipment = new SyncCandidateShipment();
            syncCandidateShipment.setOrderId(shipment.getOrderId());
            syncCandidateShipment.setDeliveryDateTime(shipment.getConfirmTime());
            syncCandidateShipment.setReasonId(shipment.getRejectReasonId());
            syncCandidateShipment.setStatus(shipment.getStatus());
            syncCandidateShipment.setSignature(shipment.getSignature());
            syncCandidateShipment.setCardTypeId(shipment.getCardTypeId());
            syncCandidateShipment.setCardNumber(shipment.getCardNumber());
            syncCandidateShipment.setComment(shipment.getComment());
            syncCandidateShipment.setLatitude(shipment.getConfirmLocation().getLatitude());
            syncCandidateShipment.setLongitude(shipment.getConfirmLocation().getLongitude());
            if (shipment.getPaymentMethod() != null && !shipment.getPaymentMethod().trim().isEmpty()) {
                syncCandidateShipment.setPayableMethod(shipment.getPaymentMethod());
            }
            ArrayList<NonRealmSerialItems> returnedProducts = new ArrayList<>();
            for (SerialItems returnedProduct : shipment.getReturnedProducts()) {
                returnedProducts.add(new NonRealmSerialItems(returnedProduct.getSerialItem(), returnedProduct.getReasonId(), returnedProduct.getItemBatchId(), returnedProduct.getOrderItemId(), returnedProduct.getCount(), returnedProduct.getBasketId()));
                it = it;
            }
            syncCandidateShipment.setSerialOrBatchItems(returnedProducts);
            syncCandidateShipment.setUserId(deliveryId);
            syncCandidateShipment.setPackId(batchId);
            syncCandidateShipment.setFinalPayableAmount(shipment.getFinalPayableAmount());
            syncCandidateShipments.add(syncCandidateShipment);
            it = it;
        }
        String gggg = gson.toJson(syncCandidateShipments);
        Log.e("gggg", gggg);
        MCXIAOKEJsonObjectRequest request = new MCXIAOKEJsonObjectRequest(1, "https://lg.digikala.com/dms-api/Driver/Sync", gson.toJson(syncCandidateShipments, paramType), responseListener, errorListener) { // from class: com.digikala.dms.helper.webservice.WebApi.21
            @Override // com.android.volley.Request
            public Map<String, String> getHeaders() {
                Map<String, String> headers = new HashMap<>();
                headers.put("AuthToken", Util.getDeliveryAuthToken(App.getApplication()));
                headers.put("AppVersion", String.valueOf(Util.getAppVersionCode(App.getApplication())));
                headers.put(HttpRequest.HEADER_AUTHORIZATION, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ=");
                return headers;
            }

            @Override // com.android.volley.Request
            public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
                return super.setRetryPolicy(new DefaultRetryPolicy(AppConfig.postRequestsInitialTimeoutMs, 1, 1.0f));
            }
        };
        VolleyHelper.addToRequestQueue(request);
    }

    public static WebApiRequest<Batch> makeFinalizeBatchRequest(String batchId, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        return new WebApiRequest<>(1, "Driver/Finalize?packId=" + batchId, null, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.22
        }.getType(), requestTag, webApiListener, fragment);
    }

    public static void sendShipmentListByPriority(ShipmentPriority mShipmentPriority, Response.Listener<JSONObject> responseListener, Response.ErrorListener errorListener) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        Type paramType = new TypeToken<ShipmentPriority>() { // from class: com.digikala.dms.helper.webservice.WebApi.23
        }.getType();
        Gson gson = new Gson();
        MCXIAOKEJsonObjectRequest request = new MCXIAOKEJsonObjectRequest(1, "https://lg.digikala.com/dms-api/Driver/SetPriority", gson.toJson(mShipmentPriority, paramType), responseListener, errorListener) { // from class: com.digikala.dms.helper.webservice.WebApi.24
            @Override // com.android.volley.Request
            public Map<String, String> getHeaders() throws AuthFailureError {
                Map<String, String> headers = new HashMap<>();
                headers.put("AuthToken", Util.getDeliveryAuthToken(App.getApplication()));
                headers.put("AppVersion", String.valueOf(Util.getAppVersionCode(App.getApplication())));
                headers.put(HttpRequest.HEADER_AUTHORIZATION, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ=");
                return headers;
            }

            @Override // com.android.volley.Request
            public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
                return super.setRetryPolicy(new DefaultRetryPolicy(AppConfig.postRequestsInitialTimeoutMs, 1, 1.0f));
            }
        };
        VolleyHelper.addToRequestQueue(request);
    }

    public static WebApiRequest<Boolean> changePassword(String deliveryId, String Password, String NewPassword, String requestTag, WebApiRequest.WebApiListener<Boolean> webApiListener, WebApiRequest.LoadRequests fragment) {
        AnswersHelper.logNumberRequestAndResponse("Request", "Request", "");
        AnalyticHelper.responseRequestEvent("Request", "Request", "");
        HashMap<String, String> param = new HashMap<>();
        param.put("UserId", deliveryId);
        param.put("Password", Password);
        param.put("NewPassword", NewPassword);
        return new WebApiRequest<>(1, ENDPOINT_CHANGE_PASSWORD, param, new TypeToken<WebApiRequest.WebApiResponse<Boolean>>() { // from class: com.digikala.dms.helper.webservice.WebApi.25
        }.getType(), requestTag, webApiListener, fragment);
    }
}

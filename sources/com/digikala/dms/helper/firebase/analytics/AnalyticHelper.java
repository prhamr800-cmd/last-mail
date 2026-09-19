package com.digikala.dms.helper.firebase.analytics;

import android.os.Bundle;
import com.digikala.dms.core.App;
import com.digikala.dms.model.design.TimeTracker;
import com.digikala.dms.model.domain.LatLong;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public class AnalyticHelper {
    private static final String EVENT_CHECK_GOOGLE_PLAY_SERVICES = "location_service_stop";
    private static final String EVENT_CLOSE_SHIPMENT = "Close_Shipment";
    private static final String EVENT_CONFIRM_BATCH = "Confirm_Batch";
    private static final String EVENT_DELIVERED_SHIPMENT = "Delivered_Shipment";
    private static final String EVENT_FINALIZE_TRIP = "Finalize_Trip";
    private static final String EVENT_FINALIZE_TRIP_BACKGROUND = "Finalize_Trip_Background";
    private static final String EVENT_FINALIZE_TRIP_STATUS = "Finalize_Trip_Status";
    private static final String EVENT_LOCATION_SERVICE_START = "location_service_start";
    private static final String EVENT_LOCATION_SERVICE_STOP = "location_service_stop";
    private static final String EVENT_LOG_IN = "Log_In";
    private static final String EVENT_LOG_OUT = "Log_Out";
    private static final String EVENT_MAP_FRAGMENT = "Map_Fragment";
    private static final String EVENT_RESPONSE_REQUEST = "Response_Request";
    private static final String EVENT_RETURN_SHIPMENT = "Return_Shipment";
    private static final String EVENT_SEARCH_WITH_BARCODE = "Search_With_Barcode";
    private static final String EVENT_SETTING_ACTIVITY = "Setting_Activity";
    private static final String PARAM_BATCH_SIZE_NUMBER = "Batch_Size_Number";
    private static final String PARAM_CUSTOMER_RATE = "Customer_Rate";
    private static final String PARAM_DC_ID = "User_Id";
    private static final String PARAM_EARLY_MINUTES = "Early_Minutes";
    private static final String PARAM_ERROR = "Error";
    private static final String PARAM_LATE_MINUTES = "Late_Minutes";
    private static final String PARAM_LOCATION = "Location";
    private static final String PARAM_NOT_SYNCED_SHIPMENTS_NO = "Not_Synced_Shipments_No";
    private static final String PARAM_NOT_SYNCED_SHIPMENTS_RATIO = "Not_Synced_Shipments_Ratio";
    private static final String PARAM_On_TIME = "On_Time";
    private static final String PARAM_PRODUCT_ID = "Product_ID";
    private static final String PARAM_REASON = "Reason";
    private static final String PARAM_REASON_ID = "Reason_ID";
    private static final String PARAM_RESPONSE_REQUEST_TYPE = "TYPE";
    private static final String PARAM_STATUS = "Status";
    private static final String PARAM_SYNCED_SHIPMENTS_NO = "Synced_Shipments_No";
    private static final String PARAM_SYNCED_SHIPMENTS_RATIO = "Synced_Shipments_Ratio";
    private static final String PARAM_TIME_INTERVAL = "time_interval";
    private static final String PARAM_USER_ID = "User_Id";
    public static final String VALUE_REQUEST = "Request";
    public static final String VALUE_RESPONSE = "Response";
    public static final String VALUE_RESPONSE_ERROR = "Response Error";
    public static final String VALUE_RESPONSE_SUCCESS = "Response Success";
    public static final String VALUE_STATUS_CHANGE_LANGUAGE = "Change Language";
    public static final String VALUE_STATUS_DELIVERED_FULL = "Fully Delivered";
    public static final String VALUE_STATUS_DELIVERED_PARTIAL = "Partially Delivered";
    public static final String VALUE_STATUS_ERROR = "Error";
    public static final String VALUE_STATUS_FOUND_ITEM = "Found Item";
    public static final String VALUE_STATUS_FOUND_LOCATION = "Found Location";
    public static final String VALUE_STATUS_LEFT = "Left";
    public static final String VALUE_STATUS_LOCK_SCREEN_OFF = "OFF Lock Screen";
    public static final String VALUE_STATUS_LOCK_SCREEN_ON = "ON Lock Screen";
    public static final String VALUE_STATUS_MISSED_CALL = "Missed Call";
    public static final String VALUE_STATUS_NOT_FOUND_ITEM = "Not Found Item";
    public static final String VALUE_STATUS_NOT_FOUND_LOCATION = "Not Found Location";
    public static final String VALUE_STATUS_RETURNED = "Returned";
    public static final String VALUE_STATUS_SUCCESS = "Success";
    private static FirebaseAnalytics firebaseAnalytics = App.getfirebaseAnalytics();

    public static void logInEvent(String userId, String status) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("User_Id", userId);
            bundle.putString(PARAM_STATUS, status);
            firebaseAnalytics.logEvent(EVENT_LOG_IN, bundle);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void logOutEvent(String userId, String status) {
        Bundle bundle = new Bundle();
        bundle.putString("User_Id", userId);
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent(EVENT_LOG_OUT, bundle);
    }

    public static void settingActivityEvent(String status) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent(EVENT_SETTING_ACTIVITY, bundle);
    }

    public static void searchWithBarcodeEvent(String status) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent(EVENT_SEARCH_WITH_BARCODE, bundle);
    }

    public static void mapFragmentEvent(String status) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent(EVENT_MAP_FRAGMENT, bundle);
    }

    public static void confirmBatchEvent(String deliveryId, int batchSizeNo) {
        Bundle bundle = new Bundle();
        bundle.putString("User_Id", deliveryId);
        bundle.putInt(PARAM_BATCH_SIZE_NUMBER, batchSizeNo);
        firebaseAnalytics.logEvent(EVENT_CONFIRM_BATCH, bundle);
    }

    public static void closeShipmentEvent(String status, LatLong latLong) {
        String strValueOf;
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        if (latLong != null) {
            strValueOf = String.valueOf(latLong.getLatitude() + " , " + latLong.getLongitude());
        } else {
            strValueOf = "Unavailable Location";
        }
        bundle.putString("Location", strValueOf);
        firebaseAnalytics.logEvent(EVENT_CLOSE_SHIPMENT, bundle);
    }

    public static void deliveredShipmentEvent(String status, String timeScope, LatLong latLong, int customerRate) {
        String stateOnTime;
        String strValueOf;
        TimeTracker timeTracker = null;
        try {
            try {
                timeTracker = TimeTracker.getDeliveryTimeTracker(timeScope);
                if (timeTracker.getState() == 0) {
                    stateOnTime = "YES";
                } else {
                    stateOnTime = "NO";
                }
            } catch (Exception e) {
                e.printStackTrace();
                stateOnTime = "UnKnown";
            }
            Bundle bundle = new Bundle();
            bundle.putString(PARAM_STATUS, status);
            bundle.putString(PARAM_On_TIME, stateOnTime);
            bundle.putInt(PARAM_LATE_MINUTES, timeTracker.getState() == 1 ? timeTracker.getDiffTime() : 0);
            bundle.putInt(PARAM_EARLY_MINUTES, timeTracker.getState() == 2 ? timeTracker.getDiffTime() : 0);
            if (latLong != null) {
                strValueOf = String.valueOf(latLong.getLatitude() + " , " + latLong.getLongitude());
            } else {
                strValueOf = "Unavailable Location";
            }
            bundle.putString("Location", strValueOf);
            bundle.putInt(PARAM_CUSTOMER_RATE, customerRate);
            firebaseAnalytics.logEvent(EVENT_DELIVERED_SHIPMENT, bundle);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void responseRequestEvent(String type, String status, String error) {
        Bundle bundle = new Bundle();
        try {
            if (error.length() > 100) {
                error = error.substring(0, 100);
            }
            bundle.putString(PARAM_RESPONSE_REQUEST_TYPE, type);
            bundle.putString(PARAM_STATUS, status);
            bundle.putString("Error", error);
        } catch (Exception e) {
            e.printStackTrace();
            bundle.putString("Error", "");
        }
        firebaseAnalytics.logEvent(EVENT_RESPONSE_REQUEST, bundle);
    }

    public static void returnShipment(String productId, String reasonId, String reason) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_PRODUCT_ID, productId);
        bundle.putString(PARAM_REASON_ID, reasonId);
        bundle.putString(PARAM_REASON, reason);
        firebaseAnalytics.logEvent(EVENT_RETURN_SHIPMENT, bundle);
    }

    public static void finalizeTripEvent(String courierId, int batchSize, int syncedShipmentsNo, int notSyncedShipmentsNo) {
        Bundle bundle = new Bundle();
        bundle.putString("User_Id", courierId);
        bundle.putInt(PARAM_BATCH_SIZE_NUMBER, batchSize);
        bundle.putInt(PARAM_SYNCED_SHIPMENTS_NO, syncedShipmentsNo);
        bundle.putInt(PARAM_NOT_SYNCED_SHIPMENTS_NO, notSyncedShipmentsNo);
        bundle.putString(PARAM_SYNCED_SHIPMENTS_RATIO, calculateRatioPercent(syncedShipmentsNo, batchSize));
        bundle.putString(PARAM_NOT_SYNCED_SHIPMENTS_RATIO, calculateRatioPercent(notSyncedShipmentsNo, batchSize));
        firebaseAnalytics.logEvent(EVENT_FINALIZE_TRIP, bundle);
    }

    public static void finalizeTripStatusEvent(String status, String error) {
        Bundle bundle = new Bundle();
        try {
            if (error.length() > 100) {
                error = error.substring(0, 100);
            }
            bundle.putString(PARAM_STATUS, status);
            bundle.putString("Error", error);
        } catch (Exception e) {
            e.printStackTrace();
            bundle.putString("Error", "");
        }
        firebaseAnalytics.logEvent(EVENT_FINALIZE_TRIP_STATUS, bundle);
    }

    public static void finalizeTripBackgroundEvent(String status, String error) {
        Bundle bundle = new Bundle();
        try {
            if (error.length() > 100) {
                error = error.substring(0, 100);
            }
            bundle.putString(PARAM_STATUS, status);
            bundle.putString("Error", error);
        } catch (Exception e) {
            e.printStackTrace();
            bundle.putString("Error", "");
        }
        firebaseAnalytics.logEvent(EVENT_FINALIZE_TRIP_BACKGROUND, bundle);
    }

    private static String calculateRatioPercent(int portion, int total) {
        StringBuilder sb = new StringBuilder();
        double d = portion * 100;
        double d2 = total;
        Double.isNaN(d);
        Double.isNaN(d2);
        double dRound = Math.round((d / d2) * 100.0d);
        Double.isNaN(dRound);
        sb.append(dRound / 100.0d);
        sb.append("%");
        return sb.toString();
    }

    public static void locationServiceStart(String courierId, String timeInterval, String dc_id) {
        Bundle bundle = new Bundle();
        bundle.putString("User_Id", courierId);
        bundle.putString(PARAM_TIME_INTERVAL, timeInterval);
        bundle.putString("User_Id", dc_id);
        firebaseAnalytics.logEvent(EVENT_LOCATION_SERVICE_START, bundle);
    }

    public static void locationServiceStop(String status) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent("location_service_stop", bundle);
    }

    public static void checkGooglePlayServices(String status) {
        Bundle bundle = new Bundle();
        bundle.putString(PARAM_STATUS, status);
        firebaseAnalytics.logEvent("location_service_stop", bundle);
    }
}

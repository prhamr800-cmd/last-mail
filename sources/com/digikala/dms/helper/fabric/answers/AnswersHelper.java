package com.digikala.dms.helper.fabric.answers;

import android.util.Log;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import com.digikala.dms.model.design.TimeTracker;
import com.digikala.dms.model.domain.LatLong;

/* JADX INFO: loaded from: classes2.dex */
public class AnswersHelper {
    private static final String EVENT_CHECK_GOOGLE_PLAY_SERVICES = "location_service_stop";
    private static final String EVENT_FINALIZE_TRIP_BACKGROUND = "Finalize_Trip_Background";
    private static final String EVENT_FINALIZE_TRIP_STATUS = "Finalize_Trip_Status";
    private static final String EVENT_LOCATION_SERVICE_START = "location_service_start";
    private static final String EVENT_LOCATION_SERVICE_STOP = "location_service_stop";
    private static final String EVENT_LOG_IN = "Log_In";
    private static final String EVENT_LOG_OUT = "Log_Out";
    private static final String EVENT_MAP_FRAGMENT = "Map_Fragment";
    private static final String EVENT_SEARCH_WITH_BARCODE = "Search_With_Barcode";
    private static final String EVENT_SETTING_ACTIVITY = "Setting_Activity";
    private static final String KEY_CUSTOM_ATTRIBUTE_BATCH_SIZE = "Batch Size";
    private static final String KEY_CUSTOM_ATTRIBUTE_COURIER_ID = "Courier Id";
    private static final String KEY_CUSTOM_ATTRIBUTE_CUSTOMER_RATE = "Customer Rate";
    private static final String KEY_CUSTOM_ATTRIBUTE_DC_ID = "dc_id";
    private static final String KEY_CUSTOM_ATTRIBUTE_EARLY = "Early Minutes";
    private static final String KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_NO = "Expanded Bottom Sheet No";
    private static final String KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_RATIO = "Expanded Bottom Sheet Ratio";
    private static final String KEY_CUSTOM_ATTRIBUTE_LATE = "Late Minutes";
    private static final String KEY_CUSTOM_ATTRIBUTE_LOCATION = "Lat-Long";
    private static final String KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_NO = "Not-Synced Shipments No";
    private static final String KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_RATIO = "Not-Synced Shipments Ratio";
    private static final String KEY_CUSTOM_ATTRIBUTE_ONTIME = "On-time";
    private static final String KEY_CUSTOM_ATTRIBUTE_PAYMENT_TYPE = "Payment Type";
    private static final String KEY_CUSTOM_ATTRIBUTE_PRODUCT_ID = "Product ID";
    private static final String KEY_CUSTOM_ATTRIBUTE_REASON = "Reason";
    private static final String KEY_CUSTOM_ATTRIBUTE_REASON_ID = "Reason ID";
    private static final String KEY_CUSTOM_ATTRIBUTE_RESPONSE_ERROR_MESSAGE = "Error Message";
    private static final String KEY_CUSTOM_ATTRIBUTE_RESPONSE_REQUEST = "Numbers";
    private static final String KEY_CUSTOM_ATTRIBUTE_RESPONSE_REQUEST_STATUS = "Status";
    private static final String KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_NO = "Settled Bottom Sheet No";
    private static final String KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_RATIO = "Settled Bottom Sheet Ratio";
    private static final String KEY_CUSTOM_ATTRIBUTE_STATUS = "Status";
    private static final String KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_NO = "Synced Shipments No";
    private static final String KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_RATIO = "Synced Shipments Ratio";
    private static final String KEY_CUSTOM_ATTRIBUTE_TIME_INTERVAL = "time_interval";
    private static final String NAME_EVENT_ALL_SHIPMENT = "All Shipment";
    private static final String NAME_EVENT_CONFIRM_BATCH = "Confirm Batch";
    private static final String NAME_EVENT_CONFIRM_PRIORITY = "Confirm priority";
    private static final String NAME_EVENT_DELIVERED_SHIPMENT = "Delivered Shipment";
    private static final String NAME_EVENT_FINALIZE_TRIP = "Finalize Trip";
    private static final String NAME_EVENT_RESPONSE_REQUEST_NUMBER = "Response Request Number";
    private static final String NAME_EVENT_RETURN_SHIPMENT = "Return Shipment";
    private static final String PARAM_ERROR = "Error";
    private static final String PARAM_STATUS = "Status";
    private static final String PARAM_USER_ID = "User_Id";
    public static final String RESPONSE_ERROR = "Response Error";
    public static final String RESPONSE_SUCCESS = "Response Success";
    public static final String VALUE_REQUEST = "Request";
    public static final String VALUE_RESPONSE = "Response";
    public static final String VALUE_STATE_DELIVERED_FULL = "Fully Delivered";
    public static final String VALUE_STATE_DELIVERED_PARTIAL = "Partially Delivered";
    public static final String VALUE_STATE_LEFT = "Left";
    public static final String VALUE_STATE_MISSED_CALL = "Missed Call";
    public static final String VALUE_STATE_RETURNED = "Returned";
    public static final String VALUE_STATUS_CHANGE_LANGUAGE = "Change Language";
    public static final String VALUE_STATUS_ERROR = "Error";
    public static final String VALUE_STATUS_FOUND_ITEM = "Found Item";
    public static final String VALUE_STATUS_FOUND_LOCATION = "Found Location";
    public static final String VALUE_STATUS_LOCK_SCREEN_OFF = "OFF Lock Screen";
    public static final String VALUE_STATUS_LOCK_SCREEN_ON = "ON Lock Screen";
    public static final String VALUE_STATUS_NOT_FOUND_ITEM = "Not Found Item";
    public static final String VALUE_STATUS_NOT_FOUND_LOCATION = "Not Found Location";
    public static final String VALUE_STATUS_SUCCESS = "Success";

    public static void logConfirmBatchEvent(String deliveryId, int batchSize, int settledBottomSheetNo, int expandedBottomSheetNo) {
        Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_CONFIRM_BATCH).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_COURIER_ID, deliveryId).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_BATCH_SIZE, Integer.valueOf(batchSize)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_NO, Integer.valueOf(settledBottomSheetNo)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_NO, Integer.valueOf(expandedBottomSheetNo)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_RATIO, calculateRatioPercent(settledBottomSheetNo, batchSize)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_RATIO, calculateRatioPercent(expandedBottomSheetNo, batchSize)));
    }

    public static void logCloseShipment(String status, String timeScope, LatLong latLong, String paymentType, int customerRate) {
        String stateOnTime;
        TimeTracker timeTracker = new TimeTracker();
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
        if (customerRate != -1) {
            Log.i("answer", customerRate + " , " + status);
            Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_DELIVERED_SHIPMENT).putCustomAttribute("Status", status).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_ONTIME, stateOnTime).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_LATE, Integer.valueOf(timeTracker.getState() == 1 ? timeTracker.getDiffTime() : 0)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_EARLY, Integer.valueOf(timeTracker.getState() == 2 ? timeTracker.getDiffTime() : 0)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_LOCATION, latLong != null ? String.valueOf(latLong.getLatitude() + 45.0d + latLong.getLongitude()) : "Unavailable Location").putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_PAYMENT_TYPE, paymentType).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_CUSTOMER_RATE, Integer.valueOf(customerRate)));
        }
        Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_ALL_SHIPMENT).putCustomAttribute("Status", status).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_ONTIME, stateOnTime).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_LATE, Integer.valueOf(timeTracker.getState() == 1 ? timeTracker.getDiffTime() : 0)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_EARLY, Integer.valueOf(timeTracker.getState() == 2 ? timeTracker.getDiffTime() : 0)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_LOCATION, latLong != null ? String.valueOf(latLong.getLatitude() + 45.0d + latLong.getLongitude()) : "Unavailable Location"));
    }

    public static void logReturnShipment(String productId, String reasonId, String reason) {
        Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_RETURN_SHIPMENT).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_PRODUCT_ID, productId).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_REASON_ID, reasonId).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_REASON, reason));
    }

    public static void logFinalizeTripEvent(String courierId, int batchSize, int syncedShipmentsNo, int notSyncedShipmentsNo) {
        Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_FINALIZE_TRIP).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_COURIER_ID, courierId).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_BATCH_SIZE, Integer.valueOf(batchSize)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_NO, Integer.valueOf(syncedShipmentsNo)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_NO, Integer.valueOf(notSyncedShipmentsNo)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_RATIO, calculateRatioPercent(syncedShipmentsNo, batchSize)).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_RATIO, calculateRatioPercent(notSyncedShipmentsNo, batchSize)));
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

    public static void logNumberRequestAndResponse(String type, String status, String error) {
        Answers.getInstance().logCustom(new CustomEvent(NAME_EVENT_RESPONSE_REQUEST_NUMBER).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_RESPONSE_REQUEST, type).putCustomAttribute("Status", status));
    }

    public static void logInEvent(String userId, String status) {
        Answers.getInstance().logCustom(new CustomEvent(EVENT_LOG_IN).putCustomAttribute(PARAM_USER_ID, userId).putCustomAttribute("Status", status));
    }

    public static void logOutEvent(String userId, String status) {
        Answers.getInstance().logCustom(new CustomEvent(EVENT_LOG_OUT).putCustomAttribute(PARAM_USER_ID, userId).putCustomAttribute("Status", status));
    }

    public static void settingActivityEvent(String status) {
        Answers.getInstance().logCustom(new CustomEvent(EVENT_SETTING_ACTIVITY).putCustomAttribute("Status", status));
    }

    public static void searchWithBarcodeEvent(String status) {
        Answers.getInstance().logCustom(new CustomEvent(EVENT_SEARCH_WITH_BARCODE).putCustomAttribute("Status", status));
    }

    public static void mapFragmentEvent(String status) {
        Answers.getInstance().logCustom(new CustomEvent(EVENT_MAP_FRAGMENT).putCustomAttribute("Status", status));
    }

    public static void finalizeTripStatusEvent(String status, String error) {
        try {
            if (error.length() > 100) {
                error = error.substring(0, 80);
            }
            Answers.getInstance().logCustom(new CustomEvent(EVENT_FINALIZE_TRIP_STATUS).putCustomAttribute("Status", status).putCustomAttribute("Error", error));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void finalizeTripBackgroundEvent(String status, String error) {
        try {
            if (error.length() > 100) {
                error = error.substring(0, 80);
            }
            Answers.getInstance().logCustom(new CustomEvent(EVENT_FINALIZE_TRIP_BACKGROUND).putCustomAttribute("Status", status).putCustomAttribute("Error", error));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void locationServiceStart(String deliveryId, String timeInterval, String distributionCenter) {
        try {
            Answers.getInstance().logCustom(new CustomEvent(EVENT_LOCATION_SERVICE_START).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_COURIER_ID, deliveryId).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_TIME_INTERVAL, timeInterval).putCustomAttribute(KEY_CUSTOM_ATTRIBUTE_DC_ID, distributionCenter));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void locationServiceStop(String status) {
        try {
            Answers.getInstance().logCustom(new CustomEvent("location_service_stop").putCustomAttribute("Status", status));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void checkGooglePlayServices(String status) {
        try {
            Answers.getInstance().logCustom(new CustomEvent("location_service_stop").putCustomAttribute("Status", status));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

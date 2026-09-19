package com.digikala.dms.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.ParseError;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.digikala.dms.R;
import com.digikala.dms.helper.SharedPreferencesHelper;
import com.digikala.dms.model.design.TrackingType;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Util {
    private static final String KEY_SHARED_PREFERENCES_CLOSE_LIST_SIZE = "close_list_size";
    private static final String KEY_SHARED_PREFERENCES_DC_ID = "distributionPointId";
    private static final String KEY_SHARED_PREFERENCES_DELIVERY_AUTH_TOKEN = "authToken";
    private static final String KEY_SHARED_PREFERENCES_DELIVERY_ID = "deliveryId";
    private static final String KEY_SHARED_PREFERENCES_DISTANCE_TRAVELED = "distanceTraveled";
    private static final String KEY_SHARED_PREFERENCES_IS_PRIORITY_SET = "isPrioritySet";
    private static final String KEY_SHARED_PREFERENCES_IS_USER_HAS_TRACKING = "isUserHasTracking";
    private static final String KEY_SHARED_PREFERENCES_LANGUAGE = "language";
    private static final String KEY_SHARED_PREFERENCES_LAST_LAT_LNG = "deliveryId";
    private static final String KEY_SHARED_PREFERENCES_LAST_LOCATION = "lastLocation";
    private static final String KEY_SHARED_PREFERENCES_LAST_SHIPMENT_ID = "deliveryId";
    private static final String KEY_SHARED_PREFERENCES_PACK_ID = "packId";
    private static final String KEY_SHARED_PREFERENCES_QUESTION_CONTEXT = "questionContext";
    private static final String KEY_SHARED_PREFERENCES_QUESTION_ID = "questionId";
    private static final String KEY_SHARED_PREFERENCES_QUESTION_RATE_RANGE = "questionEateRange";
    private static final String KEY_SHARED_PREFERENCES_REALM_KEY = "realmKey";
    private static final String KEY_SHARED_PREFERENCES_SERVER_DATE_TIME = "server_date_time";
    private static final String KEY_SHARED_PREFERENCES_SYNC_DATA_IN_BACKGROUND = "background_sync_data";
    private static final String KEY_SHARED_PREFERENCES_USER_TRACK_INTERVAL = "userTrackInterval";
    private static final String SHIPMENT_PREFERENCE = "shipment_preference";
    private static final String TAG_DEBUG = Util.class.getSimpleName();

    public static void setDeliveryAuthToken(Context context, String authToken) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        Log.e("TAG", "syncError SET getDeliveryAuthToken:87 " + authToken);
        deliverySharedPreferences.edit().putString(KEY_SHARED_PREFERENCES_DELIVERY_AUTH_TOKEN, authToken).commit();
    }

    public static String getDeliveryAuthToken(Context context) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        Log.e("TAG", "syncError getDeliveryAuthToken:85 ");
        String authToken = deliverySharedPreferences.getString(KEY_SHARED_PREFERENCES_DELIVERY_AUTH_TOKEN, "");
        Log.e("TAG", "syncError getDeliveryAuthToken:87 " + authToken);
        return authToken;
    }

    public static void setDeliveryId(Context context, String id) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        deliverySharedPreferences.edit().putString("deliveryId", id).commit();
    }

    public static String getDeliveryId(Context context) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        String deliveryId = deliverySharedPreferences.getString("deliveryId", "");
        return deliveryId;
    }

    public static void setBachId(Context context, String packId) {
        SharedPreferences mSharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        mSharedPreferences.edit().putString(KEY_SHARED_PREFERENCES_PACK_ID, packId).commit();
    }

    public static String getBatchId(Context context) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        String deliveryId = deliverySharedPreferences.getString(KEY_SHARED_PREFERENCES_PACK_ID, "");
        return deliveryId;
    }

    public static void setDistributionPointId(Context context, String id) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        deliverySharedPreferences.edit().putString(KEY_SHARED_PREFERENCES_DC_ID, id).commit();
    }

    public static String getDistributionPointId(Context context) {
        SharedPreferences deliverySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        String deliveryId = deliverySharedPreferences.getString(KEY_SHARED_PREFERENCES_DC_ID, "");
        return deliveryId;
    }

    public static void setCourierTrackingType(Context context, TrackingType trackingType) {
        SharedPreferences questionSharedPreferences = SharedPreferencesHelper.getQuestionSharedPreferences(context);
        questionSharedPreferences.edit().putInt(KEY_SHARED_PREFERENCES_USER_TRACK_INTERVAL, trackingType == null ? 0 : trackingType.getTimeInterval().intValue()).putBoolean(KEY_SHARED_PREFERENCES_IS_USER_HAS_TRACKING, trackingType != null ? trackingType.getHasTrack().booleanValue() : false).commit();
    }

    public static TrackingType getCourierTrackingType(Context context) {
        SharedPreferences questionSharedPreferences = SharedPreferencesHelper.getQuestionSharedPreferences(context);
        int timeInterval = questionSharedPreferences.getInt(KEY_SHARED_PREFERENCES_USER_TRACK_INTERVAL, 7000);
        boolean hasTrack = questionSharedPreferences.getBoolean(KEY_SHARED_PREFERENCES_IS_USER_HAS_TRACKING, false);
        return new TrackingType(Boolean.valueOf(hasTrack), Integer.valueOf(timeInterval));
    }

    public static void setShipmentNextStepIsPriority(Context context, Boolean isPriority) {
        SharedPreferences prioritySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        prioritySharedPreferences.edit().putBoolean(KEY_SHARED_PREFERENCES_IS_PRIORITY_SET, isPriority.booleanValue()).commit();
    }

    public static boolean getShipmentNextStepIsPriority(Context context) {
        SharedPreferences prioritySharedPreferences = SharedPreferencesHelper.getDeliverySharedPreferences(context);
        return prioritySharedPreferences.getBoolean(KEY_SHARED_PREFERENCES_IS_PRIORITY_SET, false);
    }

    public static int dpToPx(Context context, float dp) {
        float scale = context.getResources().getDisplayMetrics().density;
        return Math.round(dp * scale);
    }

    public static boolean hasJellyBean() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean hasLollipop() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static void showRtlSnackbar(View parent, String alertText, String actionText, int actionColor, View.OnClickListener actionClickListener) {
        Snackbar snackbar = Snackbar.make(parent, alertText, -2);
        View snackbarView = snackbar.getView();
        TextView alertTextView = (TextView) snackbarView.findViewById(R.id.snackbar_text);
        snackbarView.findViewById(R.id.snackbar_action);
        ((LinearLayout) snackbarView).removeView(alertTextView);
        ((LinearLayout) snackbarView).addView(alertTextView);
        alertTextView.setTextColor(-1);
        snackbar.setActionTextColor(ContextCompat.getColor(parent.getContext(), actionColor));
        snackbar.setAction(actionText, actionClickListener);
        snackbar.show();
    }

    public static int getAppVersionCode(Context context) {
        return 21;
    }

    public static String getAppVersionName(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG_DEBUG, "Package name not found", e);
            return null;
        }
    }

    public static String formatPrice(String price) {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols();
        symbols.setGroupingSeparator(',');
        DecimalFormat df = new DecimalFormat();
        df.setDecimalFormatSymbols(symbols);
        df.setGroupingSize(3);
        return df.format(Long.parseLong(price));
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String getCurrentDateTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date());
    }

    public static String convertNumberStringToPersian(String numberStr) throws NumberFormatException {
        int persianUnicode;
        String persianNumberStr = "";
        for (int i = 0; i < numberStr.length(); i++) {
            int numberUnicode = numberStr.charAt(i);
            if (numberUnicode >= 48 && numberUnicode <= 57) {
                persianUnicode = numberUnicode + 1728;
            } else if (numberUnicode >= 1632 && numberUnicode <= 1641) {
                persianUnicode = numberUnicode + 144;
            } else if (numberUnicode >= 1776 && numberUnicode <= 1785) {
                persianUnicode = numberUnicode;
            } else {
                throw new NumberFormatException("\"numberStr\" has an invalid digit character");
            }
            persianNumberStr = persianNumberStr + ((char) persianUnicode);
        }
        return persianNumberStr;
    }

    public static String persianizeDigitsInString(String str) {
        int persianizedUnicode;
        String persianizedStr = "";
        for (int i = 0; i < str.length(); i++) {
            int unicode = str.charAt(i);
            if (unicode >= 48 && unicode <= 57) {
                persianizedUnicode = unicode + 1728;
            } else if (unicode >= 1632 && unicode <= 1641) {
                persianizedUnicode = unicode + 144;
            } else {
                persianizedUnicode = unicode;
            }
            persianizedStr = persianizedStr + ((char) persianizedUnicode);
        }
        return persianizedStr;
    }

    public static void expand(final View v) {
        v.measure(-1, -2);
        final int targetHeight = v.getMeasuredHeight();
        v.getLayoutParams().height = 1;
        v.setVisibility(0);
        Animation a = new Animation() { // from class: com.digikala.dms.util.Util.1
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                v.getLayoutParams().height = interpolatedTime == 1.0f ? -2 : (int) (targetHeight * interpolatedTime);
                v.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        a.setDuration((int) (targetHeight / v.getContext().getResources().getDisplayMetrics().density));
        v.startAnimation(a);
    }

    public static void collapse(final View v) {
        final int initialHeight = v.getMeasuredHeight();
        Animation a = new Animation() { // from class: com.digikala.dms.util.Util.2
            @Override // android.view.animation.Animation
            protected void applyTransformation(float interpolatedTime, Transformation t) {
                if (interpolatedTime == 1.0f) {
                    v.setVisibility(8);
                    return;
                }
                v.getLayoutParams().height = initialHeight - ((int) (initialHeight * interpolatedTime));
                v.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        a.setDuration((int) (initialHeight / v.getContext().getResources().getDisplayMetrics().density));
        v.startAnimation(a);
    }

    public static void call(Context context, String tel) throws Exception {
        Intent intent = new Intent("android.intent.action.DIAL");
        String phone = tel.replace("-", "");
        intent.setData(Uri.parse("tel:" + phone));
        context.startActivity(intent);
    }

    public static void saveLatestShipmentIDToSharedPreference(Context context, String id) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString("deliveryId", id);
        editor.commit();
    }

    public static String getLatestShipmentIDFromSharedPreference(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        String id = preferences.getString("deliveryId", "");
        return id;
    }

    public static void saveLatestLatLngToSharedPreference(Context context, LatLng latLng) {
        String latLngString = "";
        if (latLng != null) {
            latLngString = String.valueOf(latLng.latitude) + "#" + String.valueOf(latLng.longitude);
        }
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString("deliveryId", latLngString);
        editor.commit();
    }

    public static LatLng getLatestLatLngFromSharedPreference(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        String latLngStr = preferences.getString("deliveryId", "");
        if (latLngStr.equals("")) {
            return null;
        }
        String[] latLngStrArray = latLngStr.split("#");
        try {
            LatLng latLng = new LatLng(Double.parseDouble(latLngStrArray[0]), Double.parseDouble(latLngStrArray[1]));
            return latLng;
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public static void saveLanguageToSharedPreference(Context context, String language) {
        SharedPreferences preferences = SharedPreferencesHelper.getDefaultSharedPreferences(context);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(KEY_SHARED_PREFERENCES_LANGUAGE, language);
        editor.commit();
    }

    public static String getLanguageFromSharedPreference(Context context) {
        SharedPreferences preferences = SharedPreferencesHelper.getDefaultSharedPreferences(context);
        String language = preferences.getString(KEY_SHARED_PREFERENCES_LANGUAGE, "fa");
        return language;
    }

    public static void saveRealmKeyToSharedPreference(Context context, byte[] key) {
        String ketStr = new String(key);
        SharedPreferences preferences = SharedPreferencesHelper.getDefaultSharedPreferences(context);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(KEY_SHARED_PREFERENCES_REALM_KEY, ketStr);
        editor.commit();
    }

    public static byte[] getRealmKeyFromSharedPreference(Context context) {
        byte[] bArr = new byte[64];
        SharedPreferences preferences = SharedPreferencesHelper.getDefaultSharedPreferences(context);
        String keyStr = preferences.getString(KEY_SHARED_PREFERENCES_REALM_KEY, null);
        if (keyStr != null) {
            return keyStr.getBytes();
        }
        return null;
    }

    public static void saveLastLocationToSharedPreference(Context context, Location latLng) {
        String latLngString = "";
        if (latLng != null) {
            latLngString = String.valueOf(latLng.getLatitude()) + "#" + String.valueOf(latLng.getLongitude());
        }
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(KEY_SHARED_PREFERENCES_LAST_LOCATION, latLngString);
        editor.commit();
    }

    public static Location getLastLocationFromSharedPreference(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        String latLngStr = preferences.getString(KEY_SHARED_PREFERENCES_LAST_LOCATION, "");
        if (latLngStr.equals("")) {
            return null;
        }
        try {
            String[] latLngStrArray = latLngStr.split("#");
            Location location = new Location("point");
            location.setLatitude(Double.parseDouble(latLngStrArray[0]));
            location.setLongitude(Double.parseDouble(latLngStrArray[1]));
            return location;
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public static void saveDistanceTraveledToSharedPreference(Context context, double distanceTraveled) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(KEY_SHARED_PREFERENCES_DISTANCE_TRAVELED, Double.toString(distanceTraveled));
        editor.commit();
    }

    public static double getDistanceTraveledFromSharedPreference(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        String distanceStr = preferences.getString(KEY_SHARED_PREFERENCES_DISTANCE_TRAVELED, "");
        if (distanceStr == null || distanceStr.equals("")) {
            return 0.0d;
        }
        return Double.parseDouble(distanceStr);
    }

    public static void hideKeyboard(Activity activity) {
        try {
            InputMethodManager inputManager = (InputMethodManager) activity.getSystemService("input_method");
            inputManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e) {
        }
    }

    public static String getErrorMessage(Object error, Context context) {
        if (error instanceof TimeoutError) {
            return context.getResources().getString(R.string.generic_server_timeout);
        }
        if (error instanceof ServerError) {
            return context.getResources().getString(R.string.generic_server_down);
        }
        if (error instanceof AuthFailureError) {
            return context.getResources().getString(R.string.auth_failed);
        }
        if (error instanceof NetworkError) {
            return context.getResources().getString(R.string.no_internet);
        }
        if (error instanceof ParseError) {
            return context.getResources().getString(R.string.parsing_failed);
        }
        return context.getResources().getString(R.string.generic_error);
    }

    public static void setCloseListSize(Context context, int index) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putInt(KEY_SHARED_PREFERENCES_CLOSE_LIST_SIZE, index);
        editor.commit();
    }

    public static int getCloseListSize(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        int index = preferences.getInt(KEY_SHARED_PREFERENCES_CLOSE_LIST_SIZE, -1);
        return index;
    }

    public static void setServerDateTimeResponse(Context context, String dateTime) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(KEY_SHARED_PREFERENCES_SERVER_DATE_TIME, dateTime);
        editor.commit();
    }

    public static String getServerDateTimeResponse(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHIPMENT_PREFERENCE, 0);
        String dateTime = preferences.getString(KEY_SHARED_PREFERENCES_SERVER_DATE_TIME, "");
        return dateTime;
    }

    public static boolean isTimeValid(String dateTime) {
        if (dateTime.equals("")) {
            return false;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
        SimpleDateFormat outputDate = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        Date serverCompleteDate = null;
        Date serverDate = null;
        Date deviceDate = null;
        try {
            serverCompleteDate = sdf.parse(dateTime);
            serverDate = outputDate.parse(outputDate.format(serverCompleteDate));
            deviceDate = outputDate.parse(outputDate.format(new Date()));
        } catch (ParseException e) {
        }
        if (serverDate.compareTo(deviceDate) > 0 || serverDate.compareTo(deviceDate) < 0) {
            return true;
        }
        SimpleDateFormat outputTime = new SimpleDateFormat("HH:mm:ss", Locale.US);
        long diffHours = 0;
        try {
            Date serverTime = outputTime.parse(outputTime.format(serverCompleteDate));
            Date deviceTime = outputTime.parse(outputTime.format(new Date()));
            long timeDifference = serverTime.getTime() - deviceTime.getTime();
            diffHours = (timeDifference / 3600000) % 24;
        } catch (ParseException e2) {
        }
        return diffHours >= 1 || diffHours <= -1;
    }

    public static String getGpsStatus(Context context) {
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
            if (locationManager != null) {
                boolean status = locationManager.isProviderEnabled("gps");
                if (status) {
                    return "on";
                }
                return "off";
            }
            return "off";
        } catch (Exception e) {
            return "off";
        }
    }
}

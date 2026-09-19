package com.snowplowanalytics.snowplow.tracker.utils;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Base64;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Util {
    private static final String TAG = Util.class.getSimpleName();

    public static String getTimestamp() {
        return Long.toString(System.currentTimeMillis());
    }

    public static String base64Encode(String string) {
        return Base64.encodeToString(string.getBytes(), 2);
    }

    public static String getEventId() {
        return UUID.randomUUID().toString();
    }

    public static JSONObject mapToJSONObject(Map map) {
        Logger.v(TAG, "Converting a map to a JSONObject: %s", map);
        if (Build.VERSION.SDK_INT >= 19) {
            return new JSONObject(map);
        }
        JSONObject retObject = new JSONObject();
        Set<Map.Entry> entries = map.entrySet();
        for (Map.Entry entry : entries) {
            String key = (String) entry.getKey();
            Object value = getJsonSafeObject(entry.getValue());
            try {
                retObject.put(key, value);
            } catch (JSONException e) {
                Logger.e(TAG, "Could not put key '%s' and value '%s' into new JSONObject: %s", key, value, e);
                e.printStackTrace();
            }
        }
        return retObject;
    }

    private static Object getJsonSafeObject(Object o) {
        if (Build.VERSION.SDK_INT >= 19) {
            return o;
        }
        if (o == null) {
            return JSONObject.NULL;
        }
        if ((o instanceof JSONObject) || (o instanceof JSONArray)) {
            return o;
        }
        if (o instanceof Collection) {
            JSONArray retArray = new JSONArray();
            for (Object entry : (Collection) o) {
                retArray.put(getJsonSafeObject(entry));
            }
            return retArray;
        }
        if (o.getClass().isArray()) {
            JSONArray retArray2 = new JSONArray();
            int length = Array.getLength(o);
            for (int i = 0; i < length; i++) {
                retArray2.put(getJsonSafeObject(Array.get(o, i)));
            }
            return retArray2;
        }
        if (o instanceof Map) {
            return mapToJSONObject((Map) o);
        }
        if ((o instanceof Boolean) || (o instanceof Byte) || (o instanceof Character) || (o instanceof Double) || (o instanceof Float) || (o instanceof Integer) || (o instanceof Long) || (o instanceof Short) || (o instanceof String)) {
            return o;
        }
        if (o.getClass().getPackage().getName().startsWith("java.")) {
            return o.toString();
        }
        return null;
    }

    public static long getUTF8Length(String s) {
        long len = 0;
        int i = 0;
        while (i < s.length()) {
            char code = s.charAt(i);
            if (code <= 127) {
                len++;
            } else if (code <= 2047) {
                len += 2;
            } else if (code >= 55296 && code <= 57343) {
                len += 4;
                i++;
            } else {
                len = code < 65535 ? len + 3 : len + 4;
            }
            i++;
        }
        return len;
    }

    public static boolean isOnline(Context context) {
        Logger.v(TAG, "Checking tracker internet connectivity.", new Object[0]);
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            NetworkInfo ni = cm.getActiveNetworkInfo();
            boolean connected = ni != null && ni.isConnected();
            Logger.d(TAG, "Tracker connection online: %s", Boolean.valueOf(connected));
            return connected;
        } catch (SecurityException e) {
            Logger.e(TAG, "Security exception checking connection: %s", e.toString());
            return true;
        }
    }

    public static boolean isTimeInRange(long startTime, long checkTime, long range) {
        return startTime > checkTime - range;
    }

    public static String joinLongList(List<Long> list) {
        String s = "";
        for (int i = 0; i < list.size(); i++) {
            Long longVal = list.get(i);
            if (longVal != null) {
                s = s + Long.toString(list.get(i).longValue());
                if (i < list.size() - 1) {
                    s = s + ",";
                }
            }
        }
        int i2 = s.length();
        if (s.substring(i2 - 1).equals(",")) {
            return s.substring(0, s.length() - 1);
        }
        return s;
    }

    public static SelfDescribingJson getGeoLocationContext(Context context) {
        Location location = getLastKnownLocation(context);
        if (location != null) {
            Map<String, Object> pairs = new HashMap<>();
            addToMap(Parameters.LATITUDE, Double.valueOf(location.getLatitude()), pairs);
            addToMap(Parameters.LONGITUDE, Double.valueOf(location.getLongitude()), pairs);
            addToMap(Parameters.ALTITUDE, Double.valueOf(location.getAltitude()), pairs);
            addToMap(Parameters.LATLONG_ACCURACY, Float.valueOf(location.getAccuracy()), pairs);
            addToMap(Parameters.SPEED, Float.valueOf(location.getSpeed()), pairs);
            addToMap(Parameters.BEARING, Float.valueOf(location.getBearing()), pairs);
            addToMap("timestamp", Long.valueOf(System.currentTimeMillis()), pairs);
            if (mapHasKeys(pairs, Parameters.LATITUDE, Parameters.LONGITUDE)) {
                return new SelfDescribingJson(TrackerConstants.GEOLOCATION_SCHEMA, pairs);
            }
            return null;
        }
        return null;
    }

    public static Location getLastKnownLocation(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        String locationProvider = null;
        try {
            if (locationManager.isProviderEnabled("gps")) {
                locationProvider = "gps";
            } else if (locationManager.isProviderEnabled("network")) {
                locationProvider = "network";
            } else {
                List<String> locationProviders = locationManager.getProviders(true);
                if (locationProviders.size() > 0) {
                    locationProvider = locationProviders.get(0);
                }
            }
            if (locationProvider == null || locationProvider.equals("")) {
                return null;
            }
            Location location = locationManager.getLastKnownLocation(locationProvider);
            return location;
        } catch (SecurityException ex) {
            Logger.e(TAG, "Exception occurred when retrieving location: %s", ex.toString());
            return null;
        }
    }

    public static SelfDescribingJson getMobileContext(Context context) {
        Map<String, Object> pairs = new HashMap<>();
        addToMap(Parameters.OS_TYPE, getOsType(), pairs);
        addToMap(Parameters.OS_VERSION, getOsVersion(), pairs);
        addToMap(Parameters.DEVICE_MODEL, getDeviceModel(), pairs);
        addToMap(Parameters.DEVICE_MANUFACTURER, getDeviceVendor(), pairs);
        addToMap(Parameters.CARRIER, getCarrier(context), pairs);
        addToMap(Parameters.ANDROID_IDFA, getAndroidIdfa(context), pairs);
        NetworkInfo networkInfo = getNetworkInfo(context);
        addToMap(Parameters.NETWORK_TYPE, getNetworkType(networkInfo), pairs);
        addToMap(Parameters.NETWORK_TECHNOLOGY, getNetworkTechnology(networkInfo), pairs);
        if (mapHasKeys(pairs, Parameters.OS_TYPE, Parameters.OS_VERSION, Parameters.DEVICE_MANUFACTURER, Parameters.DEVICE_MODEL)) {
            return new SelfDescribingJson(TrackerConstants.MOBILE_SCHEMA, pairs);
        }
        return null;
    }

    public static String getOsType() {
        return AbstractSpiCall.ANDROID_CLIENT_TYPE;
    }

    public static String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static String getDeviceVendor() {
        return Build.MANUFACTURER;
    }

    public static String getCarrier(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            String carrierName = telephonyManager.getNetworkOperatorName();
            if (!carrierName.equals("")) {
                return carrierName;
            }
            return null;
        }
        return null;
    }

    public static String getAndroidIdfa(Context context) {
        try {
            Object AdvertisingInfoObject = invokeStaticMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[]{Context.class}, context);
            return (String) invokeInstanceMethod(AdvertisingInfoObject, "getId", null, new Object[0]);
        } catch (Exception e) {
            Logger.e(TAG, "Exception getting the Advertising ID: %s", e.toString());
            return null;
        }
    }

    public static String getNetworkType(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return "offline";
        }
        String maybeNetworkType = networkInfo.getTypeName().toLowerCase();
        byte b = -1;
        int iHashCode = maybeNetworkType.hashCode();
        if (iHashCode != -1068855134) {
            if (iHashCode == 3649301 && maybeNetworkType.equals("wifi")) {
                b = 1;
            }
        } else if (maybeNetworkType.equals("mobile")) {
            b = 0;
        }
        switch (b) {
            case 0:
            case 1:
                return maybeNetworkType;
            default:
                return "offline";
        }
    }

    public static String getNetworkTechnology(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return null;
        }
        String networkType = networkInfo.getTypeName();
        if (!networkType.equalsIgnoreCase("MOBILE")) {
            return null;
        }
        String networkTech = networkInfo.getSubtypeName();
        return networkTech;
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            NetworkInfo maybeNi = cm.getActiveNetworkInfo();
            if (maybeNi == null) {
                return null;
            }
            if (!maybeNi.isConnected()) {
                return null;
            }
            return maybeNi;
        } catch (SecurityException e) {
            Logger.e(TAG, "Security exception getting NetworkInfo: %s", e.toString());
            return null;
        }
    }

    public static boolean mapHasKeys(Map<String, Object> map, String... keys) {
        for (String key : keys) {
            if (!map.containsKey(key)) {
                return false;
            }
        }
        return true;
    }

    public static void addToMap(String key, Object value, Map<String, Object> map) {
        if (key != null && value != null && !key.isEmpty()) {
            map.put(key, value);
        }
    }

    private static Object invokeStaticMethod(String className, String methodName, Class[] cArgs, Object... args) throws Exception {
        return invokeMethod(Class.forName(className), methodName, null, cArgs, args);
    }

    private static Object invokeInstanceMethod(Object instance, String methodName, Class[] cArgs, Object... args) throws Exception {
        return invokeMethod(instance.getClass(), methodName, instance, cArgs, args);
    }

    private static Object invokeMethod(Class classObject, String methodName, Object instance, Class[] cArgs, Object... args) throws Exception {
        Method methodObject = classObject.getMethod(methodName, cArgs);
        return methodObject.invoke(instance, args);
    }

    public static byte[] serialize(Map<String, String> map) {
        try {
            ByteArrayOutputStream mem_out = new ByteArrayOutputStream();
            ObjectOutputStream out = new ObjectOutputStream(mem_out);
            out.writeObject(map);
            out.close();
            mem_out.close();
            byte[] newByteArray = mem_out.toByteArray();
            return newByteArray;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Map<String, String> deserializer(byte[] bytes) {
        try {
            ByteArrayInputStream mem_in = new ByteArrayInputStream(bytes);
            ObjectInputStream in = new ObjectInputStream(mem_in);
            Map<String, String> map = (HashMap) in.readObject();
            in.close();
            mem_in.close();
            return map;
        } catch (IOException | ClassNotFoundException | NullPointerException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String stackTraceToString(Throwable e) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        e.printStackTrace(pw);
        return sw.toString();
    }
}

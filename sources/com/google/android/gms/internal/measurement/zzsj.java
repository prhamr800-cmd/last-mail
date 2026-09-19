package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class zzsj {
    private static HashMap<String, String> zzbrc;
    private static Object zzbrh;
    private static boolean zzbri;
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    private static final Uri zzbqy = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzbqz = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzbra = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static final AtomicBoolean zzbrb = new AtomicBoolean();
    private static final HashMap<String, Boolean> zzbrd = new HashMap<>();
    private static final HashMap<String, Integer> zzbre = new HashMap<>();
    private static final HashMap<String, Long> zzbrf = new HashMap<>();
    private static final HashMap<String, Float> zzbrg = new HashMap<>();
    private static String[] zzbrj = new String[0];

    private static void zza(ContentResolver contentResolver) {
        if (zzbrc == null) {
            zzbrb.set(false);
            zzbrc = new HashMap<>();
            zzbrh = new Object();
            zzbri = false;
            contentResolver.registerContentObserver(CONTENT_URI, true, new zzsk(null));
            return;
        }
        if (zzbrb.getAndSet(false)) {
            zzbrc.clear();
            zzbrd.clear();
            zzbre.clear();
            zzbrf.clear();
            zzbrg.clear();
            zzbrh = new Object();
            zzbri = false;
        }
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzsj.class) {
            zza(contentResolver);
            Object obj = zzbrh;
            if (zzbrc.containsKey(str)) {
                String str3 = zzbrc.get(str);
                if (str3 == null) {
                    str3 = null;
                }
                return str3;
            }
            for (String str4 : zzbrj) {
                if (str.startsWith(str4)) {
                    if (!zzbri || zzbrc.isEmpty()) {
                        zzbrc.putAll(zza(contentResolver, zzbrj));
                        zzbri = true;
                        if (zzbrc.containsKey(str)) {
                            String str5 = zzbrc.get(str);
                            if (str5 == null) {
                                str5 = null;
                            }
                            return str5;
                        }
                    }
                    return null;
                }
            }
            Cursor cursorQuery = contentResolver.query(CONTENT_URI, null, null, new String[]{str}, null);
            if (cursorQuery == null) {
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    zza(obj, str, (String) null);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                String string = cursorQuery.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                zza(obj, str, string);
                if (string == null) {
                    string = null;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return string;
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    private static void zza(Object obj, String str, String str2) {
        synchronized (zzsj.class) {
            if (obj == zzbrh) {
                zzbrc.put(str, str2);
            }
        }
    }

    private static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor cursorQuery = contentResolver.query(zzbqy, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (cursorQuery == null) {
            return treeMap;
        }
        while (cursorQuery.moveToNext()) {
            try {
                treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
            } finally {
                cursorQuery.close();
            }
        }
        return treeMap;
    }
}

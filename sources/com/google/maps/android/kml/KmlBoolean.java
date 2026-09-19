package com.google.maps.android.kml;

/* JADX INFO: loaded from: classes2.dex */
public class KmlBoolean {
    public static boolean parseBoolean(String text) {
        if ("1".equals(text) || "true".equals(text)) {
            return true;
        }
        return false;
    }
}

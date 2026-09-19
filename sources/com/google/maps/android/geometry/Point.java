package com.google.maps.android.geometry;

/* JADX INFO: loaded from: classes2.dex */
public class Point {
    public final double x;
    public final double y;

    public Point(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public String toString() {
        String strValueOf = String.valueOf("Point{x=");
        double d = this.x;
        double d2 = this.y;
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 53);
        sb.append(strValueOf);
        sb.append(d);
        sb.append(", y=");
        sb.append(d2);
        sb.append("}");
        return sb.toString();
    }
}

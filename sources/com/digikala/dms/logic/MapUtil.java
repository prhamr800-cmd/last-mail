package com.digikala.dms.logic;

import android.util.Log;
import com.google.android.gms.maps.model.LatLng;
import java.text.DecimalFormat;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MapUtil {
    private LinearRegression regression = new LinearRegression();

    public double calculationByDistance(LatLng StartP, LatLng EndP) {
        double lat1 = StartP.latitude;
        double lat2 = EndP.latitude;
        double lon1 = StartP.longitude;
        double lon2 = EndP.longitude;
        double dLat = Math.toRadians(lat2 - lat1);
        double dLon = Math.toRadians(lon2 - lon1);
        double a = (Math.sin(dLat / 2.0d) * Math.sin(dLat / 2.0d)) + (Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) * Math.sin(dLon / 2.0d) * Math.sin(dLon / 2.0d));
        double c = Math.asin(Math.sqrt(a)) * 2.0d;
        double d = 6371;
        Double.isNaN(d);
        double valueResult = d * c;
        DecimalFormat newFormat = new DecimalFormat("####");
        int kmInDec = Integer.valueOf(newFormat.format(valueResult / 1.0d)).intValue();
        double km = valueResult % 1000.0d;
        int meterInDec = Integer.valueOf(newFormat.format(km)).intValue();
        Log.i("Radius Value", "" + valueResult + "   KM  " + kmInDec + " Meter   " + meterInDec);
        double d2 = (double) 6371;
        Double.isNaN(d2);
        return d2 * c;
    }

    public int minDistanceBetweenListAndGPSMember(List<LatLng> latLngs, LatLng gps) {
        int minMember = 0;
        double minDistance = Double.MAX_VALUE;
        for (int i = 0; i < latLngs.size(); i++) {
            Double distance = Double.valueOf(calculationByDistance(gps, latLngs.get(i)));
            Log.i("distance", "dis = " + distance);
            if (distance.doubleValue() < minDistance) {
                minDistance = distance.doubleValue();
                minMember = i;
            }
        }
        if (minDistance > 2.0d) {
            return -1;
        }
        return minMember;
    }

    public LatLng getProjectLocation(List<LatLng> latLngs, LatLng gps) {
        LatLng firstLocation;
        LatLng secondLocation;
        int nearMember = minDistanceBetweenListAndGPSMember(latLngs, gps);
        if (nearMember == -1) {
            return gps;
        }
        if (nearMember == 0) {
            firstLocation = latLngs.get(nearMember);
            secondLocation = latLngs.get(nearMember + 1);
        } else {
            firstLocation = latLngs.get(nearMember - 1);
            secondLocation = latLngs.get(nearMember);
        }
        Point startPoint = new Point(firstLocation.latitude, firstLocation.longitude);
        Point endPoint = new Point(secondLocation.latitude, secondLocation.longitude);
        Point gpsPoint = new Point(gps.latitude, gps.longitude);
        Point pointInsideLine = this.regression.getProjectedPointOnLine(startPoint, endPoint, gpsPoint);
        if (nearMember == 0 || nearMember == latLngs.size() - 1) {
            return new LatLng(pointInsideLine.x, pointInsideLine.y);
        }
        if (this.regression.checkPointInsideLine(startPoint, endPoint, pointInsideLine)) {
            return new LatLng(pointInsideLine.x, pointInsideLine.y);
        }
        LatLng firstLocation2 = latLngs.get(nearMember);
        LatLng firstLocation3 = firstLocation2;
        LatLng secondLocation2 = latLngs.get(nearMember + 1);
        LatLng secondLocation3 = secondLocation2;
        Point startPoint2 = new Point(firstLocation3.latitude, firstLocation3.longitude);
        Point endPoint2 = new Point(secondLocation3.latitude, secondLocation3.longitude);
        Point gpsPoint2 = new Point(gps.latitude, gps.longitude);
        Point pointInsideLine2 = this.regression.getProjectedPointOnLine(startPoint2, endPoint2, gpsPoint2);
        return new LatLng(pointInsideLine2.x, pointInsideLine2.y);
    }
}

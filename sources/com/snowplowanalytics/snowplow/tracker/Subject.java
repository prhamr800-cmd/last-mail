package com.snowplowanalytics.snowplow.tracker;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class Subject {
    private static String TAG = Subject.class.getSimpleName();
    private HashMap<String, String> standardPairs;

    public static class SubjectBuilder {
        private Context context = null;

        public SubjectBuilder context(Context context) {
            this.context = context;
            return this;
        }

        public Subject build() {
            return new Subject(this);
        }
    }

    private Subject(SubjectBuilder builder) {
        this.standardPairs = new HashMap<>();
        setDefaultTimezone();
        setDefaultLanguage();
        if (builder.context != null) {
            setDefaultScreenResolution(builder.context);
        }
        Logger.v(TAG, "Subject created successfully.", new Object[0]);
    }

    private void setDefaultTimezone() {
        TimeZone tz = Calendar.getInstance().getTimeZone();
        setTimezone(tz.getID());
    }

    private void setDefaultLanguage() {
        setLanguage(Locale.getDefault().getDisplayLanguage());
    }

    public void setDefaultScreenResolution(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display display = windowManager.getDefaultDisplay();
        Point size = new Point();
        if (Build.VERSION.SDK_INT >= 13) {
            display.getSize(size);
            setScreenResolution(size.x, size.y);
        } else {
            setScreenResolution(display.getWidth(), display.getHeight());
        }
    }

    public void setUserId(String userId) {
        this.standardPairs.put(Parameters.UID, userId);
    }

    public void setScreenResolution(int width, int height) {
        String res = Integer.toString(width) + "x" + Integer.toString(height);
        this.standardPairs.put(Parameters.RESOLUTION, res);
    }

    public void setViewPort(int width, int height) {
        String res = Integer.toString(width) + "x" + Integer.toString(height);
        this.standardPairs.put(Parameters.VIEWPORT, res);
    }

    public void setColorDepth(int depth) {
        this.standardPairs.put(Parameters.COLOR_DEPTH, Integer.toString(depth));
    }

    public void setTimezone(String timezone) {
        this.standardPairs.put(Parameters.TIMEZONE, timezone);
    }

    public void setLanguage(String language) {
        this.standardPairs.put(Parameters.LANGUAGE, language);
    }

    public void setIpAddress(String ipAddress) {
        this.standardPairs.put(Parameters.IP_ADDRESS, ipAddress);
    }

    public void setUseragent(String useragent) {
        this.standardPairs.put(Parameters.USERAGENT, useragent);
    }

    public void setNetworkUserId(String networkUserId) {
        this.standardPairs.put(Parameters.NETWORK_UID, networkUserId);
    }

    public void setDomainUserId(String domainUserId) {
        this.standardPairs.put(Parameters.DOMAIN_UID, domainUserId);
    }

    public Map<String, String> getSubject() {
        return this.standardPairs;
    }
}

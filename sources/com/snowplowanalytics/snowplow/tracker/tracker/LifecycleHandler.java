package com.snowplowanalytics.snowplow.tracker.tracker;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.snowplowanalytics.snowplow.tracker.Tracker;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.SelfDescribing;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
public class LifecycleHandler implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    private static final String TAG = LifecycleHandler.class.getSimpleName();
    private static boolean isInBackground = false;
    private static AtomicInteger foregroundIndex = new AtomicInteger(0);
    private static AtomicInteger backgroundIndex = new AtomicInteger(0);

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (isInBackground) {
            Logger.d(TAG, "Application is in the foreground", new Object[0]);
            isInBackground = false;
            try {
                Tracker tracker = Tracker.instance();
                int index = foregroundIndex.addAndGet(1);
                if (tracker.getSession() != null) {
                    tracker.getSession().setIsBackground(false);
                }
                if (tracker.getLifecycleEvents()) {
                    Map<String, Object> data = new HashMap<>();
                    Util.addToMap(Parameters.APP_FOREGROUND_INDEX, Integer.valueOf(index), data);
                    tracker.track(SelfDescribing.builder().eventData(new SelfDescribingJson(TrackerConstants.APPLICATION_FOREGOUND_SCHEMA, data)).build());
                }
            } catch (Exception e) {
                Logger.e(TAG, e.getMessage(), new Object[0]);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 20) {
            Logger.d(TAG, "Application is in the background", new Object[0]);
            isInBackground = true;
            try {
                Tracker tracker = Tracker.instance();
                int index = backgroundIndex.addAndGet(1);
                if (tracker.getSession() != null) {
                    tracker.getSession().setIsBackground(true);
                }
                if (tracker.getLifecycleEvents()) {
                    Map<String, Object> data = new HashMap<>();
                    Util.addToMap(Parameters.APP_BACKGROUND_INDEX, Integer.valueOf(index), data);
                    tracker.track(SelfDescribing.builder().eventData(new SelfDescribingJson(TrackerConstants.APPLICATION_BACKGROUND_SCHEMA, data)).build());
                }
            } catch (Exception e) {
                Logger.e(TAG, e.getMessage(), new Object[0]);
            }
        }
    }
}

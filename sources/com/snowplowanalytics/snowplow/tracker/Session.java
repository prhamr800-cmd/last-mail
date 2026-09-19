package com.snowplowanalytics.snowplow.tracker;

import android.content.Context;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.utils.FileStore;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class Session {
    private static String TAG = Session.class.getSimpleName();
    private long accessedLast;
    private long backgroundTimeout;
    private Context context;
    private String currentSessionId;
    private long foregroundTimeout;
    private String previousSessionId;
    private int sessionIndex;
    private String userId;
    private String sessionStorage = "SQLITE";
    private String firstId = null;
    private AtomicBoolean isBackground = new AtomicBoolean(false);

    public Session(long foregroundTimeout, long backgroundTimeout, TimeUnit timeUnit, Context context) {
        this.currentSessionId = null;
        this.sessionIndex = 0;
        this.foregroundTimeout = timeUnit.toMillis(foregroundTimeout);
        this.backgroundTimeout = timeUnit.toMillis(backgroundTimeout);
        this.context = context;
        Map sessionInfo = getSessionFromFile();
        if (sessionInfo == null) {
            this.userId = Util.getEventId();
        } else {
            try {
                String uid = sessionInfo.get(Parameters.SESSION_USER_ID).toString();
                String sid = sessionInfo.get(Parameters.SESSION_ID).toString();
                int si = ((Integer) sessionInfo.get(Parameters.SESSION_INDEX)).intValue();
                this.userId = uid;
                this.sessionIndex = si;
                this.currentSessionId = sid;
            } catch (Exception e) {
                Logger.e(TAG, "Exception occurred retrieving session info from file: %s", e.getMessage());
                this.userId = Util.getEventId();
            }
        }
        updateSessionInfo();
        updateAccessedTime();
        Logger.v(TAG, "Tracker Session Object created.", new Object[0]);
    }

    public synchronized SelfDescribingJson getSessionContext(String firstId) {
        Logger.v(TAG, "Getting session context...", new Object[0]);
        updateAccessedTime();
        if (this.firstId == null) {
            this.firstId = firstId;
        }
        return new SelfDescribingJson(TrackerConstants.SESSION_SCHEMA, getSessionValues());
    }

    public void checkAndUpdateSession() {
        Logger.d(TAG, "Checking and updating session information.", new Object[0]);
        long checkTime = System.currentTimeMillis();
        boolean isBackground = this.isBackground.get();
        long range = isBackground ? this.backgroundTimeout : this.foregroundTimeout;
        if (!Util.isTimeInRange(this.accessedLast, checkTime, range)) {
            updateSessionInfo();
            updateAccessedTime();
            if (isBackground) {
                Logger.d(TAG, "Timeout in background, pausing session checking...", new Object[0]);
                try {
                    Tracker.instance().pauseSessionChecking();
                } catch (Exception e) {
                    Logger.e(TAG, "Could not pause checking as tracker not setup", new Object[0]);
                }
            }
        }
    }

    public void setIsBackground(boolean isBackground) {
        Logger.d(TAG, "Application is in the background: %s", Boolean.valueOf(isBackground));
        boolean currentState = this.isBackground.get();
        if (currentState && !isBackground) {
            Logger.d(TAG, "Application moved to foreground, starting session checking...", new Object[0]);
            try {
                Tracker.instance().resumeSessionChecking();
            } catch (Exception e) {
                Logger.e(TAG, "Could not resume checking as tracker not setup", new Object[0]);
            }
        }
        this.isBackground.set(isBackground);
    }

    public Map getSessionValues() {
        Map<String, Object> sessionValues = new HashMap<>();
        sessionValues.put(Parameters.SESSION_USER_ID, this.userId);
        sessionValues.put(Parameters.SESSION_ID, this.currentSessionId);
        sessionValues.put(Parameters.SESSION_PREVIOUS_ID, this.previousSessionId);
        sessionValues.put(Parameters.SESSION_INDEX, Integer.valueOf(this.sessionIndex));
        sessionValues.put(Parameters.SESSION_STORAGE, this.sessionStorage);
        sessionValues.put(Parameters.SESSION_FIRST_ID, this.firstId);
        return sessionValues;
    }

    private void updateSessionInfo() {
        this.previousSessionId = this.currentSessionId;
        this.currentSessionId = Util.getEventId();
        this.sessionIndex++;
        Logger.d(TAG, "Session information is updated:", new Object[0]);
        Logger.d(TAG, " + Session ID: %s", this.currentSessionId);
        Logger.d(TAG, " + Previous Session ID: %s", this.previousSessionId);
        Logger.d(TAG, " + Session Index: %s", Integer.valueOf(this.sessionIndex));
        saveSessionToFile();
    }

    private boolean saveSessionToFile() {
        return FileStore.saveMapToFile(TrackerConstants.SNOWPLOW_SESSION_VARS, getSessionValues(), this.context);
    }

    private Map getSessionFromFile() {
        return FileStore.getMapFromFile(TrackerConstants.SNOWPLOW_SESSION_VARS, this.context);
    }

    private void updateAccessedTime() {
        this.accessedLast = System.currentTimeMillis();
    }

    public int getSessionIndex() {
        return this.sessionIndex;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getCurrentSessionId() {
        return this.currentSessionId;
    }

    public String getPreviousSessionId() {
        return this.previousSessionId;
    }

    public String getSessionStorage() {
        return this.sessionStorage;
    }

    public String getFirstId() {
        return this.firstId;
    }

    public long getForegroundTimeout() {
        return this.foregroundTimeout;
    }

    public long getBackgroundTimeout() {
        return this.backgroundTimeout;
    }
}

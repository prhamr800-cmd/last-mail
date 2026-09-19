package com.digikala.dms.core;

import android.app.Application;
import com.snowplowanalytics.snowplow.tracker.DevicePlatforms;
import com.snowplowanalytics.snowplow.tracker.Emitter;
import com.snowplowanalytics.snowplow.tracker.Subject;
import com.snowplowanalytics.snowplow.tracker.Tracker;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.emitter.BufferOption;
import com.snowplowanalytics.snowplow.tracker.emitter.RequestSecurity;
import com.snowplowanalytics.snowplow.tracker.events.SelfDescribing;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.utils.LogLevel;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SnowplowHelper {
    private static final String APP_ID = "DMS Android App";
    private static final String ENDPOINT = "dmst.digikala.com";
    private static final String NAMESPACE = "DMS Android App";
    private static boolean sInitialized;
    private static SnowplowHelper sSnowplowHelperInstance;
    Emitter mEmitter;
    Subject mSubject;
    Tracker mTracker;

    private SnowplowHelper() {
    }

    public static void init(Application app) {
        sSnowplowHelperInstance = new SnowplowHelper();
        sSnowplowHelperInstance.mEmitter = new Emitter.EmitterBuilder("dmst.digikala.com", app.getApplicationContext()).option(BufferOption.HeavyGroup).security("release".contains("release") ? RequestSecurity.HTTPS : RequestSecurity.HTTP).build();
        sSnowplowHelperInstance.mSubject = new Subject.SubjectBuilder().context(app.getApplicationContext()).build();
        sSnowplowHelperInstance.mTracker = Tracker.init(new Tracker.TrackerBuilder(sSnowplowHelperInstance.mEmitter, "DMS Android App", "DMS Android App", app.getApplicationContext()).subject(sSnowplowHelperInstance.mSubject).geoLocationContext(true).platform(DevicePlatforms.Mobile).applicationCrash(true).sessionContext(true).backgroundTimeout(3600L).foregroundTimeout(3600L).mobileContext(true).lifecycleEvents(true).level("release".contains("release") ? LogLevel.OFF : LogLevel.VERBOSE).build());
        sInitialized = true;
    }

    public static synchronized SnowplowHelper getSnowplowHelperInstance() {
        if (sInitialized) {
            return sSnowplowHelperInstance;
        }
        return new SnowplowHelper();
    }

    public void startTrack(String driverId, String dcId, String packId, String currentTimeSystem) {
        Map<String, String> event = new HashMap<>();
        event.put(Parameters.SESSION_USER_ID, driverId);
        event.put("distributionPointId", dcId);
        event.put("packId", packId);
        event.put("currentTime", currentTimeSystem);
        SelfDescribingJson DescribingJson = new SelfDescribingJson("iglu:com.digikala.research/DMSPayloadData/jsonschema/1-0-0", event);
        sSnowplowHelperInstance.mTracker.track(SelfDescribing.builder().eventData(DescribingJson).build());
        getSnowplowHelperInstance().mTracker.getSession().setIsBackground(true);
    }

    public void meldDeliverLocation(String statusId, String driverId, String dcId, String packId, String shipmentId, String currentTime, String gpsStatus) {
        Map<String, String> event = new HashMap<>();
        event.put(Parameters.SESSION_USER_ID, driverId);
        event.put("distributionPointId", dcId);
        event.put("packId", packId);
        event.put("shipmentId", shipmentId);
        event.put("statusId", statusId);
        event.put("currentTime", currentTime);
        event.put("gpsStatus", gpsStatus);
        SelfDescribingJson DescribingJson = new SelfDescribingJson("iglu:com.digikala.research/DmsIsDeliveredData/jsonschema/1-0-0", event);
        sSnowplowHelperInstance.mTracker.track(SelfDescribing.builder().eventData(DescribingJson).build());
    }

    public void trakerResumeTraking() {
        sSnowplowHelperInstance.mTracker.resumeEventTracking();
    }

    public void trackerPauseTraking() {
        sSnowplowHelperInstance.mTracker.pauseEventTracking();
    }

    public long getEmitterSize() {
        return sSnowplowHelperInstance.mEmitter.getEventStore().getSize();
    }

    public void sendEventToServer() {
        sSnowplowHelperInstance.mEmitter.flush();
    }
}

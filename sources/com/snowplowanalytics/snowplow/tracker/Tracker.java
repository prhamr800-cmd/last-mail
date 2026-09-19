package com.snowplowanalytics.snowplow.tracker;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction;
import com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem;
import com.snowplowanalytics.snowplow.tracker.events.Event;
import com.snowplowanalytics.snowplow.tracker.events.PageView;
import com.snowplowanalytics.snowplow.tracker.events.ScreenView;
import com.snowplowanalytics.snowplow.tracker.events.SelfDescribing;
import com.snowplowanalytics.snowplow.tracker.events.Structured;
import com.snowplowanalytics.snowplow.tracker.events.Timing;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.tracker.ExceptionHandler;
import com.snowplowanalytics.snowplow.tracker.tracker.LifecycleHandler;
import com.snowplowanalytics.snowplow.tracker.utils.LogLevel;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class Tracker {
    private String appId;
    private boolean applicationCrash;
    private boolean base64Encoded;
    private final Context context;
    private AtomicBoolean dataCollection;
    private DevicePlatforms devicePlatform;
    private Emitter emitter;
    private boolean geoLocationContext;
    private LogLevel level;
    private boolean lifecycleEvents;
    private boolean mobileContext;
    private String namespace;
    private long sessionCheckInterval;
    private boolean sessionContext;
    private Subject subject;
    private int threadCount;
    private TimeUnit timeUnit;
    private Session trackerSession;
    private final String trackerVersion;
    private static final String TAG = Tracker.class.getSimpleName();
    private static Tracker spTracker = null;
    private static ScheduledExecutorService sessionExecutor = null;

    public static Tracker init(Tracker newTracker) {
        if (spTracker == null) {
            spTracker = newTracker;
            spTracker.resumeSessionChecking();
            spTracker.getEmitter().flush();
        }
        return instance();
    }

    public static Tracker instance() {
        if (spTracker == null) {
            throw new IllegalStateException("FATAL: Tracker must be initialized first!");
        }
        if (spTracker.getApplicationCrash() && !(Thread.getDefaultUncaughtExceptionHandler() instanceof ExceptionHandler)) {
            Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandler());
        }
        return spTracker;
    }

    public static void close() {
        if (spTracker != null) {
            spTracker.pauseSessionChecking();
            spTracker.getEmitter().shutdown();
            spTracker = null;
        }
    }

    public static class TrackerBuilder {
        final String appId;
        final Context context;
        final Emitter emitter;
        final String namespace;
        Subject subject = null;
        boolean base64Encoded = true;
        DevicePlatforms devicePlatform = DevicePlatforms.Mobile;
        LogLevel logLevel = LogLevel.OFF;
        boolean sessionContext = false;
        long foregroundTimeout = 600;
        long backgroundTimeout = 300;
        long sessionCheckInterval = 15;
        int threadCount = 10;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        boolean geoLocationContext = false;
        boolean mobileContext = false;
        boolean applicationCrash = true;
        boolean lifecycleEvents = false;

        public TrackerBuilder(Emitter emitter, String namespace, String appId, Context context) {
            this.emitter = emitter;
            this.namespace = namespace;
            this.appId = appId;
            this.context = context;
        }

        public TrackerBuilder subject(Subject subject) {
            this.subject = subject;
            return this;
        }

        public TrackerBuilder base64(Boolean base64) {
            this.base64Encoded = base64.booleanValue();
            return this;
        }

        public TrackerBuilder platform(DevicePlatforms platform) {
            this.devicePlatform = platform;
            return this;
        }

        public TrackerBuilder level(LogLevel log) {
            this.logLevel = log;
            return this;
        }

        public TrackerBuilder sessionContext(boolean sessionContext) {
            this.sessionContext = sessionContext;
            return this;
        }

        public TrackerBuilder foregroundTimeout(long timeout) {
            this.foregroundTimeout = timeout;
            return this;
        }

        public TrackerBuilder backgroundTimeout(long timeout) {
            this.backgroundTimeout = timeout;
            return this;
        }

        public TrackerBuilder sessionCheckInterval(long sessionCheckInterval) {
            this.sessionCheckInterval = sessionCheckInterval;
            return this;
        }

        public TrackerBuilder threadCount(int threadCount) {
            this.threadCount = threadCount;
            return this;
        }

        public TrackerBuilder timeUnit(TimeUnit timeUnit) {
            this.timeUnit = timeUnit;
            return this;
        }

        public TrackerBuilder geoLocationContext(Boolean geoLocationContext) {
            this.geoLocationContext = geoLocationContext.booleanValue();
            return this;
        }

        public TrackerBuilder mobileContext(Boolean mobileContext) {
            this.mobileContext = mobileContext.booleanValue();
            return this;
        }

        public TrackerBuilder applicationCrash(Boolean applicationCrash) {
            this.applicationCrash = applicationCrash.booleanValue();
            return this;
        }

        @TargetApi(14)
        public TrackerBuilder lifecycleEvents(Boolean lifecycleEvents) {
            this.lifecycleEvents = lifecycleEvents.booleanValue();
            return this;
        }

        public Tracker build() {
            return Tracker.init(new Tracker(this));
        }
    }

    private Tracker(TrackerBuilder builder) {
        this.trackerVersion = BuildConfig.TRACKER_LABEL;
        this.dataCollection = new AtomicBoolean(true);
        this.context = builder.context;
        this.emitter = builder.emitter;
        this.appId = builder.appId;
        this.base64Encoded = builder.base64Encoded;
        this.namespace = builder.namespace;
        this.subject = builder.subject;
        this.devicePlatform = builder.devicePlatform;
        this.level = builder.logLevel;
        this.sessionContext = builder.sessionContext;
        this.sessionCheckInterval = builder.sessionCheckInterval;
        this.threadCount = builder.threadCount >= 2 ? builder.threadCount : 2;
        this.timeUnit = builder.timeUnit;
        this.geoLocationContext = builder.geoLocationContext;
        this.mobileContext = builder.mobileContext;
        this.applicationCrash = builder.applicationCrash;
        this.lifecycleEvents = builder.lifecycleEvents;
        if (this.sessionContext) {
            this.trackerSession = new Session(builder.foregroundTimeout, builder.backgroundTimeout, builder.timeUnit, builder.context);
        }
        Executor.setThreadCount(this.threadCount);
        Logger.updateLogLevel(builder.logLevel);
        Logger.v(TAG, "Tracker created successfully.", new Object[0]);
    }

    public void track(final Event event) {
        if (!this.dataCollection.get()) {
            return;
        }
        Executor.execute(new Runnable() { // from class: com.snowplowanalytics.snowplow.tracker.Tracker.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                List<SelfDescribingJson> context = event.getContext();
                String eventId = event.getEventId();
                Class<?> cls = event.getClass();
                if (cls.equals(PageView.class) || cls.equals(Structured.class)) {
                    Tracker.this.addEventPayload((TrackerPayload) event.getPayload(), context, eventId);
                    return;
                }
                if (cls.equals(EcommerceTransaction.class)) {
                    Tracker.this.addEventPayload((TrackerPayload) event.getPayload(), context, eventId);
                    EcommerceTransaction ecommerceTransaction = (EcommerceTransaction) event;
                    for (EcommerceTransactionItem item : ecommerceTransaction.getItems()) {
                        item.setDeviceCreatedTimestamp(ecommerceTransaction.getDeviceCreatedTimestamp());
                        Tracker.this.addEventPayload(item.getPayload(), item.getContext(), item.getEventId());
                    }
                    return;
                }
                if (cls.equals(SelfDescribing.class)) {
                    SelfDescribing selfDescribing = (SelfDescribing) event;
                    selfDescribing.setBase64Encode(Tracker.this.base64Encoded);
                    Tracker.this.addEventPayload(selfDescribing.getPayload(), context, eventId);
                } else if (cls.equals(Timing.class) || cls.equals(ScreenView.class)) {
                    SelfDescribing selfDescribing2 = ((SelfDescribing.Builder) ((SelfDescribing.Builder) ((SelfDescribing.Builder) SelfDescribing.builder().eventData((SelfDescribingJson) event.getPayload()).customContext(context)).deviceCreatedTimestamp(event.getDeviceCreatedTimestamp())).eventId(event.getEventId())).build();
                    selfDescribing2.setBase64Encode(Tracker.this.base64Encoded);
                    Tracker.this.addEventPayload(selfDescribing2.getPayload(), context, eventId);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEventPayload(TrackerPayload payload, List<SelfDescribingJson> context, String eventId) {
        payload.add(Parameters.PLATFORM, this.devicePlatform.getValue());
        payload.add(Parameters.APPID, this.appId);
        payload.add(Parameters.NAMESPACE, this.namespace);
        getClass();
        payload.add(Parameters.TRACKER_VERSION, BuildConfig.TRACKER_LABEL);
        if (this.subject != null) {
            payload.addMap(new HashMap(this.subject.getSubject()));
        }
        SelfDescribingJson envelope = getFinalContext(context, eventId);
        if (envelope != null) {
            payload.addMap(envelope.getMap(), Boolean.valueOf(this.base64Encoded), Parameters.CONTEXT_ENCODED, Parameters.CONTEXT);
        }
        Logger.v(TAG, "Adding new payload to event storage: %s", payload);
        this.emitter.add(payload);
    }

    private SelfDescribingJson getFinalContext(List<SelfDescribingJson> contexts, String eventId) {
        if (this.sessionContext) {
            contexts.add(this.trackerSession.getSessionContext(eventId));
        }
        if (this.geoLocationContext) {
            contexts.add(Util.getGeoLocationContext(this.context));
        }
        if (this.mobileContext) {
            contexts.add(Util.getMobileContext(this.context));
        }
        if (contexts.size() == 0) {
            return null;
        }
        List<Map> contextMaps = new LinkedList<>();
        for (SelfDescribingJson selfDescribingJson : contexts) {
            if (selfDescribingJson != null) {
                contextMaps.add(selfDescribingJson.getMap());
            }
        }
        return new SelfDescribingJson(TrackerConstants.SCHEMA_CONTEXTS, contextMaps);
    }

    public void resumeEventTracking() {
        if (this.dataCollection.compareAndSet(false, true)) {
            resumeSessionChecking();
            getEmitter().flush();
        }
    }

    public void pauseEventTracking() {
        if (this.dataCollection.compareAndSet(true, false)) {
            pauseSessionChecking();
            getEmitter().shutdown();
        }
    }

    public void resumeSessionChecking() {
        if (sessionExecutor == null && this.sessionContext) {
            Logger.d(TAG, "Session checking has been resumed.", new Object[0]);
            final Session session = this.trackerSession;
            sessionExecutor = Executors.newSingleThreadScheduledExecutor();
            sessionExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.snowplowanalytics.snowplow.tracker.Tracker.2
                @Override // java.lang.Runnable
                public void run() {
                    session.checkAndUpdateSession();
                }
            }, this.sessionCheckInterval, this.sessionCheckInterval, this.timeUnit);
        }
    }

    public void pauseSessionChecking() {
        if (sessionExecutor != null) {
            Logger.d(TAG, "Session checking has been paused.", new Object[0]);
            sessionExecutor.shutdown();
            sessionExecutor = null;
        }
    }

    public void setLifecycleHandler(Activity activity) {
        if ((this.lifecycleEvents || this.sessionContext) && Build.VERSION.SDK_INT >= 14) {
            LifecycleHandler handler = new LifecycleHandler();
            activity.getApplication().registerActivityLifecycleCallbacks(handler);
            activity.registerComponentCallbacks(handler);
        }
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public void setEmitter(Emitter emitter) {
        getEmitter().shutdown();
        this.emitter = emitter;
    }

    public void setPlatform(DevicePlatforms platform) {
        this.devicePlatform = platform;
    }

    public String getTrackerVersion() {
        getClass();
        return BuildConfig.TRACKER_LABEL;
    }

    public Subject getSubject() {
        return this.subject;
    }

    public Emitter getEmitter() {
        return this.emitter;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public String getAppId() {
        return this.appId;
    }

    public boolean getBase64Encoded() {
        return this.base64Encoded;
    }

    public DevicePlatforms getPlatform() {
        return this.devicePlatform;
    }

    public LogLevel getLogLevel() {
        return this.level;
    }

    public Session getSession() {
        return this.trackerSession;
    }

    public boolean getDataCollection() {
        return this.dataCollection.get();
    }

    public int getThreadCount() {
        return this.threadCount;
    }

    public boolean getApplicationCrash() {
        return this.applicationCrash;
    }

    public boolean getLifecycleEvents() {
        return this.lifecycleEvents;
    }
}

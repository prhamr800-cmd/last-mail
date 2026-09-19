package com.digikala.dms.core;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.digikala.dms.BuildConfig;
import com.digikala.dms.helper.UserTracking;
import com.digikala.dms.model.design.TrackingType;
import com.digikala.dms.util.Util;
import com.google.android.gms.gcm.GcmNetworkManager;
import com.google.android.gms.gcm.GcmTaskService;
import com.google.android.gms.gcm.PeriodicTask;
import com.google.android.gms.gcm.TaskParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: SnowplowLocationService.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/digikala/dms/core/SnowplowLocationService;", "Lcom/google/android/gms/gcm/GcmTaskService;", "()V", "doFunction", "", "onInitializeTasks", "onRunTask", "", "taskParams", "Lcom/google/android/gms/gcm/TaskParams;", "Companion", "app_release"}, k = 1, mv = {1, 1, 11})
public final class SnowplowLocationService extends GcmTaskService {
    private static long mTimeInterval;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static String TAG = "setupTracker";
    private static final String TAG_REQUEST = UserTracking.class.getSimpleName();

    @NotNull
    private static final String GCM_REPEAT_TAG = "repeat send tracker location";

    @NotNull
    private static String mPackId = "";

    @NotNull
    private static String mDeliverId = "";

    @NotNull
    private static String mDcId = "";

    @NotNull
    private static String mCurrentTime = "";

    @Override // com.google.android.gms.gcm.GcmTaskService
    public int onRunTask(@NotNull TaskParams taskParams) {
        Intrinsics.checkParameterIsNotNull(taskParams, "taskParams");
        Handler handler = new Handler(getMainLooper());
        handler.post(new Runnable() { // from class: com.digikala.dms.core.SnowplowLocationService.onRunTask.1
            @Override // java.lang.Runnable
            public final void run() {
                Log.i(SnowplowLocationService.INSTANCE.getTAG(), "onRunTask()");
                SnowplowLocationService.this.doFunction();
            }
        });
        return 0;
    }

    public final void doFunction() {
        String currentDateTime = Util.getCurrentDateTime();
        Intrinsics.checkExpressionValueIsNotNull(currentDateTime, "Util.getCurrentDateTime()");
        mCurrentTime = currentDateTime;
        if (BuildConfig.DEBUG) {
            Log.i(TAG, "doFunction() with param dcId is :" + mDcId + " packId is : " + mPackId + " deliveryId is :" + mDeliverId + "current time is: " + mCurrentTime);
        }
        SnowplowHelper snowplowHelperInstance = SnowplowHelper.getSnowplowHelperInstance();
        Intrinsics.checkExpressionValueIsNotNull(snowplowHelperInstance, "SnowplowHelper.getSnowplowHelperInstance()");
        if (snowplowHelperInstance.getEmitterSize() > 30) {
            SnowplowHelper.getSnowplowHelperInstance().mEmitter.shutdown();
            SnowplowHelper.getSnowplowHelperInstance().mEmitter.flush();
            SnowplowHelper.getSnowplowHelperInstance().mTracker.resumeEventTracking();
        }
        if (Intrinsics.areEqual(mDeliverId, "") || Intrinsics.areEqual(mDcId, "")) {
            String distributionPointId = Util.getDistributionPointId(getApplicationContext());
            Intrinsics.checkExpressionValueIsNotNull(distributionPointId, "Util.getDistributionPointId(applicationContext)");
            mDcId = distributionPointId;
            String deliveryId = Util.getDeliveryId(getApplicationContext());
            Intrinsics.checkExpressionValueIsNotNull(deliveryId, "Util.getDeliveryId(applicationContext)");
            mDeliverId = deliveryId;
            TrackingType courierTrackingType = Util.getCourierTrackingType(getApplicationContext());
            Intrinsics.checkExpressionValueIsNotNull(courierTrackingType, "Util.getCourierTrackingType(applicationContext)");
            if (courierTrackingType.getTimeInterval() == null) {
                Intrinsics.throwNpe();
            }
            mTimeInterval = r0.intValue();
            String batchId = Util.getBatchId(getApplicationContext());
            Intrinsics.checkExpressionValueIsNotNull(batchId, "Util.getBatchId(applicationContext)");
            mPackId = batchId;
            SnowplowHelper.getSnowplowHelperInstance().startTrack(mDeliverId, mDcId, mPackId, mCurrentTime);
            return;
        }
        SnowplowHelper.getSnowplowHelperInstance().startTrack(mDeliverId, mDcId, mPackId, mCurrentTime);
    }

    @Override // com.google.android.gms.gcm.GcmTaskService
    public void onInitializeTasks() {
        super.onInitializeTasks();
        TrackingType courierTrackingType = Util.getCourierTrackingType(getApplicationContext());
        Intrinsics.checkExpressionValueIsNotNull(courierTrackingType, "Util.getCourierTrackingType(applicationContext)");
        Boolean hasTrack = courierTrackingType.getHasTrack();
        if (hasTrack == null) {
            Intrinsics.throwNpe();
        }
        if (hasTrack.booleanValue()) {
            int i = (mTimeInterval > 1L ? 1 : (mTimeInterval == 1L ? 0 : -1));
        }
    }

    /* JADX INFO: compiled from: SnowplowLocationService.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J6\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u001bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0006\"\u0004\b\t\u0010\nR\u0019\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0006R\u001a\u0010\u000e\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0006\"\u0004\b\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006*"}, d2 = {"Lcom/digikala/dms/core/SnowplowLocationService$Companion;", "", "()V", "GCM_REPEAT_TAG", "", "getGCM_REPEAT_TAG", "()Ljava/lang/String;", "TAG", "getTAG", "setTAG", "(Ljava/lang/String;)V", "TAG_REQUEST", "kotlin.jvm.PlatformType", "getTAG_REQUEST", "mCurrentTime", "getMCurrentTime$app_release", "setMCurrentTime$app_release", "mDcId", "getMDcId$app_release", "setMDcId$app_release", "mDeliverId", "getMDeliverId$app_release", "setMDeliverId$app_release", "mPackId", "getMPackId$app_release", "setMPackId$app_release", "mTimeInterval", "", "getMTimeInterval$app_release", "()J", "setMTimeInterval$app_release", "(J)V", "cancelRepeat", "", "context", "Landroid/content/Context;", "scheduleRepeat", "dcId", "deliveryId", "packId", "currentTime", "timeInterval", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @NotNull
        public final String getTAG() {
            return SnowplowLocationService.TAG;
        }

        public final void setTAG(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            SnowplowLocationService.TAG = str;
        }

        public final String getTAG_REQUEST() {
            return SnowplowLocationService.TAG_REQUEST;
        }

        @NotNull
        public final String getGCM_REPEAT_TAG() {
            return SnowplowLocationService.GCM_REPEAT_TAG;
        }

        @NotNull
        public final String getMPackId$app_release() {
            return SnowplowLocationService.mPackId;
        }

        public final void setMPackId$app_release(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            SnowplowLocationService.mPackId = str;
        }

        @NotNull
        public final String getMDeliverId$app_release() {
            return SnowplowLocationService.mDeliverId;
        }

        public final void setMDeliverId$app_release(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            SnowplowLocationService.mDeliverId = str;
        }

        @NotNull
        public final String getMDcId$app_release() {
            return SnowplowLocationService.mDcId;
        }

        public final void setMDcId$app_release(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            SnowplowLocationService.mDcId = str;
        }

        @NotNull
        public final String getMCurrentTime$app_release() {
            return SnowplowLocationService.mCurrentTime;
        }

        public final void setMCurrentTime$app_release(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            SnowplowLocationService.mCurrentTime = str;
        }

        public final long getMTimeInterval$app_release() {
            return SnowplowLocationService.mTimeInterval;
        }

        public final void setMTimeInterval$app_release(long j) {
            SnowplowLocationService.mTimeInterval = j;
        }

        public final void scheduleRepeat(@NotNull Context context, @NotNull String dcId, @NotNull String deliveryId, @NotNull String packId, @NotNull String currentTime, long timeInterval) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(dcId, "dcId");
            Intrinsics.checkParameterIsNotNull(deliveryId, "deliveryId");
            Intrinsics.checkParameterIsNotNull(packId, "packId");
            Intrinsics.checkParameterIsNotNull(currentTime, "currentTime");
            Log.i(getTAG(), "scheduleRepeat() with param dcId is :" + dcId + " packId is : " + packId + " deliveryId is :" + deliveryId + "timeInterval is:" + timeInterval);
            setMPackId$app_release(packId);
            setMDcId$app_release(dcId);
            setMCurrentTime$app_release(currentTime);
            setMDeliverId$app_release(deliveryId);
            setMTimeInterval$app_release(timeInterval);
            PeriodicTask periodic = new PeriodicTask.Builder().setService(SnowplowLocationService.class).setPeriod(timeInterval).setFlex(2L).setTag(getGCM_REPEAT_TAG()).setPersisted(true).setUpdateCurrent(true).setRequiredNetwork(2).setRequiresCharging(false).build();
            GcmNetworkManager.getInstance(context).schedule(periodic);
        }

        public final void cancelRepeat(@NotNull Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            GcmNetworkManager.getInstance(context).cancelTask(getGCM_REPEAT_TAG(), SnowplowLocationService.class);
        }
    }
}

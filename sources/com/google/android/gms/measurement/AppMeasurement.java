package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresPermission;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzbu;
import com.google.android.gms.measurement.internal.zzcs;
import com.google.android.gms.measurement.internal.zzct;
import com.google.android.gms.measurement.internal.zzcu;
import com.google.android.gms.measurement.internal.zzcv;
import com.google.android.gms.measurement.internal.zzcw;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfr;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@ShowFirstParty
@Deprecated
public class AppMeasurement {

    @ShowFirstParty
    @KeepForSdk
    public static final String CRASH_ORIGIN = "crash";

    @ShowFirstParty
    @KeepForSdk
    public static final String FCM_ORIGIN = "fcm";

    @ShowFirstParty
    @KeepForSdk
    public static final String FIAM_ORIGIN = "fiam";
    private final zzbu zzadp;

    @ShowFirstParty
    @KeepForSdk
    public static class ConditionalUserProperty {

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public boolean mActive;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mAppId;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mName;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mOrigin;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public String mTriggerEventName;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public long mTriggeredTimestamp;

        @Keep
        @ShowFirstParty
        @KeepForSdk
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            if (conditionalUserProperty.mValue != null) {
                this.mValue = zzdu.zze(conditionalUserProperty.mValue);
                if (this.mValue == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            if (conditionalUserProperty.mTimedOutEventParams != null) {
                this.mTimedOutEventParams = new Bundle(conditionalUserProperty.mTimedOutEventParams);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            if (conditionalUserProperty.mTriggeredEventParams != null) {
                this.mTriggeredEventParams = new Bundle(conditionalUserProperty.mTriggeredEventParams);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            if (conditionalUserProperty.mExpiredEventParams != null) {
                this.mExpiredEventParams = new Bundle(conditionalUserProperty.mExpiredEventParams);
            }
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static final class Event extends zzcs {

        @ShowFirstParty
        @KeepForSdk
        public static final String AD_REWARD = "_ar";

        @ShowFirstParty
        @KeepForSdk
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public interface EventInterceptor extends zzcv {
        @Override // com.google.android.gms.measurement.internal.zzcv
        @WorkerThread
        @ShowFirstParty
        @KeepForSdk
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    public interface OnEventListener extends zzcw {
        @Override // com.google.android.gms.measurement.internal.zzcw
        @WorkerThread
        @ShowFirstParty
        @KeepForSdk
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    public static final class Param extends zzct {

        @ShowFirstParty
        @KeepForSdk
        public static final String FATAL = "fatal";

        @ShowFirstParty
        @KeepForSdk
        public static final String TIMESTAMP = "timestamp";

        @ShowFirstParty
        @KeepForSdk
        public static final String TYPE = "type";

        private Param() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static final class UserProperty extends zzcu {

        @ShowFirstParty
        @KeepForSdk
        public static final String FIREBASE_LAST_NOTIFICATION = "_ln";

        private UserProperty() {
        }
    }

    @Keep
    @Deprecated
    @ShowFirstParty
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    public static AppMeasurement getInstance(Context context) {
        return zzbu.zza(context, (zzal) null).zzkm();
    }

    @ShowFirstParty
    public final void logEvent(@Size(max = 40, min = 1) @NonNull String str, Bundle bundle) {
        this.zzadp.zzgj().zza(SettingsJsonConstants.APP_KEY, str, bundle, true);
    }

    @ShowFirstParty
    public final void setUserProperty(@Size(max = 24, min = 1) @NonNull String str, @Size(max = 36) @Nullable String str2) {
        this.zzadp.zzgj().zzb(SettingsJsonConstants.APP_KEY, str, (Object) str2, false);
    }

    @KeepForSdk
    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        this.zzadp.zzgj().setMeasurementEnabled(z);
    }

    public final void zzd(boolean z) {
        this.zzadp.zzgj().zzd(z);
    }

    @ShowFirstParty
    public final void setMinimumSessionDuration(long j) {
        this.zzadp.zzgj().setMinimumSessionDuration(j);
    }

    @ShowFirstParty
    public final void setSessionTimeoutDuration(long j) {
        this.zzadp.zzgj().setSessionTimeoutDuration(j);
    }

    public AppMeasurement(zzbu zzbuVar) {
        Preconditions.checkNotNull(zzbuVar);
        this.zzadp = zzbuVar;
    }

    @Keep
    @ShowFirstParty
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.zzadp.zzgj().logEvent(str, str2, bundle);
    }

    @ShowFirstParty
    @KeepForSdk
    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zzadp.zzgj().logEvent(str, str2, bundle, true, false, j);
    }

    @ShowFirstParty
    @KeepForSdk
    public void setUserPropertyInternal(String str, String str2, Object obj) {
        Preconditions.checkNotEmpty(str);
        this.zzadp.zzgj().zzb(str, str2, obj, true);
    }

    @WorkerThread
    @ShowFirstParty
    @KeepForSdk
    public Map<String, Object> getUserProperties(boolean z) {
        List<zzfr> listZzk = this.zzadp.zzgj().zzk(z);
        ArrayMap arrayMap = new ArrayMap(listZzk.size());
        for (zzfr zzfrVar : listZzk) {
            arrayMap.put(zzfrVar.name, zzfrVar.getValue());
        }
        return arrayMap;
    }

    @WorkerThread
    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.zzadp.zzgj().zza(eventInterceptor);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zzadp.zzgj().zza(onEventListener);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zzadp.zzgj().zzb(onEventListener);
    }

    @Keep
    @Nullable
    public String getCurrentScreenName() {
        return this.zzadp.zzgj().getCurrentScreenName();
    }

    @Keep
    @Nullable
    public String getCurrentScreenClass() {
        return this.zzadp.zzgj().getCurrentScreenClass();
    }

    @Keep
    @Nullable
    public String getAppInstanceId() {
        return this.zzadp.zzgj().zzgc();
    }

    @Keep
    @Nullable
    public String getGmpAppId() {
        return this.zzadp.zzgj().getGmpAppId();
    }

    @Keep
    public long generateEventId() {
        return this.zzadp.zzgr().zzmj();
    }

    @Keep
    public void beginAdUnitExposure(@Size(min = 1) @NonNull String str) {
        this.zzadp.zzgi().beginAdUnitExposure(str, this.zzadp.zzbx().elapsedRealtime());
    }

    @Keep
    public void endAdUnitExposure(@Size(min = 1) @NonNull String str) {
        this.zzadp.zzgi().endAdUnitExposure(str, this.zzadp.zzbx().elapsedRealtime());
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        this.zzadp.zzgj().setConditionalUserProperty(conditionalUserProperty);
    }

    @Keep
    @VisibleForTesting
    protected void setConditionalUserPropertyAs(@NonNull ConditionalUserProperty conditionalUserProperty) {
        this.zzadp.zzgj().setConditionalUserPropertyAs(conditionalUserProperty);
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    public void clearConditionalUserProperty(@Size(max = 24, min = 1) @NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.zzadp.zzgj().clearConditionalUserProperty(str, str2, bundle);
    }

    @Keep
    @VisibleForTesting
    protected void clearConditionalUserPropertyAs(@Size(min = 1) @NonNull String str, @Size(max = 24, min = 1) @NonNull String str2, @Nullable String str3, @Nullable Bundle bundle) {
        this.zzadp.zzgj().clearConditionalUserPropertyAs(str, str2, str3, bundle);
    }

    @WorkerThread
    @Keep
    @VisibleForTesting
    protected Map<String, Object> getUserProperties(@Nullable String str, @Size(max = 24, min = 1) @Nullable String str2, boolean z) {
        return this.zzadp.zzgj().getUserProperties(str, str2, z);
    }

    @WorkerThread
    @Keep
    @VisibleForTesting
    protected Map<String, Object> getUserPropertiesAs(@Size(min = 1) @NonNull String str, @Nullable String str2, @Size(max = 23, min = 1) @Nullable String str3, boolean z) {
        return this.zzadp.zzgj().getUserPropertiesAs(str, str2, str3, z);
    }

    @WorkerThread
    @Keep
    @ShowFirstParty
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(@Nullable String str, @Size(max = 23, min = 1) @Nullable String str2) {
        return this.zzadp.zzgj().getConditionalUserProperties(str, str2);
    }

    @WorkerThread
    @Keep
    @VisibleForTesting
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(@Size(min = 1) @NonNull String str, @Nullable String str2, @Size(max = 23, min = 1) @Nullable String str3) {
        return this.zzadp.zzgj().getConditionalUserPropertiesAs(str, str2, str3);
    }

    @WorkerThread
    @Keep
    @ShowFirstParty
    @KeepForSdk
    public int getMaxUserProperties(@Size(min = 1) @NonNull String str) {
        this.zzadp.zzgj();
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    @KeepForSdk
    public Boolean getBoolean() {
        return this.zzadp.zzgj().zzkx();
    }

    @KeepForSdk
    public String getString() {
        return this.zzadp.zzgj().zzky();
    }

    @KeepForSdk
    public Long getLong() {
        return this.zzadp.zzgj().zzkz();
    }

    @KeepForSdk
    public Integer getInteger() {
        return this.zzadp.zzgj().zzla();
    }

    @KeepForSdk
    public Double getDouble() {
        return this.zzadp.zzgj().zzlb();
    }
}

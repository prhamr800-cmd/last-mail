package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
final class zzbb extends zzcq {

    @VisibleForTesting
    static final Pair<String, Long> zzanj = new Pair<>("", 0L);
    private SharedPreferences zzabr;
    public zzbf zzank;
    public final zzbe zzanl;
    public final zzbe zzanm;
    public final zzbe zzann;
    public final zzbe zzano;
    public final zzbe zzanp;
    public final zzbe zzanq;
    public final zzbe zzanr;
    public final zzbg zzans;
    private String zzant;
    private boolean zzanu;
    private long zzanv;
    public final zzbe zzanw;
    public final zzbe zzanx;
    public final zzbd zzany;
    public final zzbe zzanz;
    public final zzbe zzaoa;
    public boolean zzaob;

    @WorkerThread
    @NonNull
    final Pair<String, Boolean> zzcb(String str) {
        zzaf();
        long jElapsedRealtime = zzbx().elapsedRealtime();
        if (this.zzant != null && jElapsedRealtime < this.zzanv) {
            return new Pair<>(this.zzant, Boolean.valueOf(this.zzanu));
        }
        this.zzanv = jElapsedRealtime + zzgv().zza(str, zzag.zzajh);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(getContext());
            if (advertisingIdInfo != null) {
                this.zzant = advertisingIdInfo.getId();
                this.zzanu = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.zzant == null) {
                this.zzant = "";
            }
        } catch (Exception e) {
            zzgt().zzjn().zzg("Unable to get advertising id", e);
            this.zzant = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.zzant, Boolean.valueOf(this.zzanu));
    }

    @WorkerThread
    final String zzcc(String str) {
        zzaf();
        String str2 = (String) zzcb(str).first;
        MessageDigest messageDigest = zzfu.getMessageDigest();
        if (messageDigest == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest(str2.getBytes())));
    }

    zzbb(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzanl = new zzbe(this, "last_upload", 0L);
        this.zzanm = new zzbe(this, "last_upload_attempt", 0L);
        this.zzann = new zzbe(this, "backoff", 0L);
        this.zzano = new zzbe(this, "last_delete_stale", 0L);
        this.zzanw = new zzbe(this, "time_before_start", 10000L);
        this.zzanx = new zzbe(this, "session_timeout", 1800000L);
        this.zzany = new zzbd(this, "start_new_session", true);
        this.zzanz = new zzbe(this, "last_pause_time", 0L);
        this.zzaoa = new zzbe(this, "time_active", 0L);
        this.zzanp = new zzbe(this, "midnight_offset", 0L);
        this.zzanq = new zzbe(this, "first_open_time", 0L);
        this.zzanr = new zzbe(this, "app_install_time", 0L);
        this.zzans = new zzbg(this, "app_instance_id", null);
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    protected final boolean zzgy() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    @WorkerThread
    protected final void zzgz() {
        this.zzabr = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzaob = this.zzabr.getBoolean("has_been_opened", false);
        if (!this.zzaob) {
            SharedPreferences.Editor editorEdit = this.zzabr.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.zzank = new zzbf(this, "health_monitor", Math.max(0L, zzag.zzaji.get().longValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final SharedPreferences zzju() {
        zzaf();
        zzcl();
        return this.zzabr;
    }

    @WorkerThread
    final void zzcd(String str) {
        zzaf();
        SharedPreferences.Editor editorEdit = zzju().edit();
        editorEdit.putString("gmp_app_id", str);
        editorEdit.apply();
    }

    @WorkerThread
    final String zzjv() {
        zzaf();
        return zzju().getString("gmp_app_id", null);
    }

    @WorkerThread
    final void zzce(String str) {
        zzaf();
        SharedPreferences.Editor editorEdit = zzju().edit();
        editorEdit.putString("admob_app_id", str);
        editorEdit.apply();
    }

    @WorkerThread
    final String zzjw() {
        zzaf();
        return zzju().getString("admob_app_id", null);
    }

    @WorkerThread
    final Boolean zzjx() {
        zzaf();
        if (!zzju().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(zzju().getBoolean("use_service", false));
    }

    @WorkerThread
    final void zzg(boolean z) {
        zzaf();
        zzgt().zzjo().zzg("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = zzju().edit();
        editorEdit.putBoolean("use_service", z);
        editorEdit.apply();
    }

    @WorkerThread
    final void zzjy() {
        zzaf();
        zzgt().zzjo().zzca("Clearing collection preferences.");
        if (zzgv().zza(zzag.zzalo)) {
            Boolean boolZzjz = zzjz();
            SharedPreferences.Editor editorEdit = zzju().edit();
            editorEdit.clear();
            editorEdit.apply();
            if (boolZzjz != null) {
                setMeasurementEnabled(boolZzjz.booleanValue());
                return;
            }
            return;
        }
        boolean zContains = zzju().contains("measurement_enabled");
        boolean zZzh = true;
        if (zContains) {
            zZzh = zzh(true);
        }
        SharedPreferences.Editor editorEdit2 = zzju().edit();
        editorEdit2.clear();
        editorEdit2.apply();
        if (zContains) {
            setMeasurementEnabled(zZzh);
        }
    }

    @WorkerThread
    final void setMeasurementEnabled(boolean z) {
        zzaf();
        zzgt().zzjo().zzg("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = zzju().edit();
        editorEdit.putBoolean("measurement_enabled", z);
        editorEdit.apply();
    }

    @WorkerThread
    final boolean zzh(boolean z) {
        zzaf();
        return zzju().getBoolean("measurement_enabled", z);
    }

    @WorkerThread
    final Boolean zzjz() {
        zzaf();
        if (zzju().contains("measurement_enabled")) {
            return Boolean.valueOf(zzju().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @WorkerThread
    protected final String zzka() {
        zzaf();
        String string = zzju().getString("previous_os_version", null);
        zzgp().zzcl();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor editorEdit = zzju().edit();
            editorEdit.putString("previous_os_version", str);
            editorEdit.apply();
        }
        return string;
    }

    @WorkerThread
    final void zzi(boolean z) {
        zzaf();
        zzgt().zzjo().zzg("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = zzju().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z);
        editorEdit.apply();
    }

    @WorkerThread
    final boolean zzkb() {
        zzaf();
        return zzju().getBoolean("deferred_analytics_collection", false);
    }

    @WorkerThread
    final boolean zzkc() {
        return this.zzabr.contains("deferred_analytics_collection");
    }

    final boolean zzaj(long j) {
        return j - this.zzanx.get() > this.zzanz.get();
    }
}

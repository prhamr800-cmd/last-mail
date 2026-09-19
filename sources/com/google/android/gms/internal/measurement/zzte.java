package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzte implements zzsq {

    @GuardedBy("SharedPreferencesLoader.class")
    static final Map<String, zzte> zzbsk = new HashMap();
    private volatile Map<String, ?> zzbrp;
    private final SharedPreferences zzbsl;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzbsm = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.zztf
        private final zzte zzbsn;

        {
            this.zzbsn = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.zzbsn.zza(sharedPreferences, str);
        }
    };
    private final Object zzbro = new Object();

    @GuardedBy("this")
    private final List<zzsp> zzbrq = new ArrayList();

    static zzte zzi(Context context, String str) {
        zzte zzteVar;
        SharedPreferences sharedPreferences;
        if (!((!zzsl.zztj() || str.startsWith("direct_boot:")) ? true : zzsl.isUserUnlocked(context))) {
            return null;
        }
        synchronized (zzte.class) {
            zzteVar = zzbsk.get(str);
            if (zzteVar == null) {
                if (str.startsWith("direct_boot:")) {
                    if (zzsl.zztj()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                zzteVar = new zzte(sharedPreferences);
                zzbsk.put(str, zzteVar);
            }
        }
        return zzteVar;
    }

    private zzte(SharedPreferences sharedPreferences) {
        this.zzbsl = sharedPreferences;
        this.zzbsl.registerOnSharedPreferenceChangeListener(this.zzbsm);
    }

    @Override // com.google.android.gms.internal.measurement.zzsq
    public final Object zzfp(String str) {
        Map<String, ?> all = this.zzbrp;
        if (all == null) {
            synchronized (this.zzbro) {
                all = this.zzbrp;
                if (all == null) {
                    all = this.zzbsl.getAll();
                    this.zzbrp = all;
                }
            }
        }
        if (all != null) {
            return all.get(str);
        }
        return null;
    }

    final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str) {
        synchronized (this.zzbro) {
            this.zzbrp = null;
            zzsx.zztq();
        }
        synchronized (this) {
            Iterator<zzsp> it = this.zzbrq.iterator();
            while (it.hasNext()) {
                it.next().zztp();
            }
        }
    }
}

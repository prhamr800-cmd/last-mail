package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.support.annotation.GuardedBy;
import android.support.v4.content.PermissionChecker;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
final class zzst implements zzsq {

    @GuardedBy("GservicesLoader.class")
    static zzst zzbru;
    private final Context zzri;

    static zzst zzad(Context context) {
        zzst zzstVar;
        synchronized (zzst.class) {
            if (zzbru == null) {
                zzbru = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzst(context) : new zzst();
            }
            zzstVar = zzbru;
        }
        return zzstVar;
    }

    private zzst(Context context) {
        this.zzri = context;
        this.zzri.getContentResolver().registerContentObserver(zzsj.CONTENT_URI, true, new zzsv(this, null));
    }

    private zzst() {
        this.zzri = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzsq
    /* JADX INFO: renamed from: zzfq, reason: merged with bridge method [inline-methods] */
    public final String zzfp(final String str) {
        if (this.zzri == null) {
            return null;
        }
        try {
            return (String) zzsr.zza(new zzss(this, str) { // from class: com.google.android.gms.internal.measurement.zzsu
                private final zzst zzbrv;
                private final String zzbrw;

                {
                    this.zzbrv = this;
                    this.zzbrw = str;
                }

                @Override // com.google.android.gms.internal.measurement.zzss
                public final Object zzto() {
                    return this.zzbrv.zzfr(this.zzbrw);
                }
            });
        } catch (SecurityException e) {
            String strValueOf = String.valueOf(str);
            Log.e("GservicesLoader", strValueOf.length() != 0 ? "Unable to read GServices for: ".concat(strValueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    final /* synthetic */ String zzfr(String str) {
        return zzsj.zza(this.zzri.getContentResolver(), str, (String) null);
    }
}

package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzcx {
    boolean zzadv;
    String zzadx;
    String zzaps;
    String zzapt;
    Boolean zzaqm;
    zzal zzarj;
    final Context zzri;

    @VisibleForTesting
    public zzcx(Context context, zzal zzalVar) {
        this.zzadv = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zzri = applicationContext;
        if (zzalVar != null) {
            this.zzarj = zzalVar;
            this.zzadx = zzalVar.zzadx;
            this.zzaps = zzalVar.origin;
            this.zzapt = zzalVar.zzadw;
            this.zzadv = zzalVar.zzadv;
            if (zzalVar.zzady != null) {
                this.zzaqm = Boolean.valueOf(zzalVar.zzady.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}

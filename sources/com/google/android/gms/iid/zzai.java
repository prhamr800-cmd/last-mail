package com.google.android.gms.iid;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzai {

    @GuardedBy("SdkFlagFactory.class")
    private static zzai zzcy;

    zzai() {
    }

    static synchronized zzai zzw() {
        if (zzcy == null) {
            zzcy = new zzac();
        }
        return zzcy;
    }

    abstract zzaj<Boolean> zzd(String str, boolean z);
}

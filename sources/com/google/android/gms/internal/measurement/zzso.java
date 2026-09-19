package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
final class zzso extends ContentObserver {
    private final /* synthetic */ zzsm zzbrt;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzso(zzsm zzsmVar, Handler handler) {
        super(null);
        this.zzbrt = zzsmVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zzbrt.zztl();
    }
}

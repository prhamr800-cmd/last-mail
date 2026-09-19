package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbg {
    private String value;
    private boolean zzaod;
    private final /* synthetic */ zzbb zzaoe;
    private final String zzaoj;
    private final String zzoj;

    public zzbg(zzbb zzbbVar, String str, String str2) {
        this.zzaoe = zzbbVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
        this.zzaoj = null;
    }

    @WorkerThread
    public final String zzkd() {
        if (!this.zzaod) {
            this.zzaod = true;
            this.value = this.zzaoe.zzju().getString(this.zzoj, null);
        }
        return this.value;
    }

    @WorkerThread
    public final void zzcf(String str) {
        if (zzfu.zzv(str, this.value)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.zzaoe.zzju().edit();
        editorEdit.putString(this.zzoj, str);
        editorEdit.apply();
        this.value = str;
    }
}

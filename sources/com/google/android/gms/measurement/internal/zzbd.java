package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbd {
    private boolean value;
    private final boolean zzaoc;
    private boolean zzaod;
    private final /* synthetic */ zzbb zzaoe;
    private final String zzoj;

    public zzbd(zzbb zzbbVar, String str, boolean z) {
        this.zzaoe = zzbbVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
        this.zzaoc = true;
    }

    @WorkerThread
    public final boolean get() {
        if (!this.zzaod) {
            this.zzaod = true;
            this.value = this.zzaoe.zzju().getBoolean(this.zzoj, this.zzaoc);
        }
        return this.value;
    }

    @WorkerThread
    public final void set(boolean z) {
        SharedPreferences.Editor editorEdit = this.zzaoe.zzju().edit();
        editorEdit.putBoolean(this.zzoj, z);
        editorEdit.apply();
        this.value = z;
    }
}

package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbe {
    private long value;
    private boolean zzaod;
    private final /* synthetic */ zzbb zzaoe;
    private final long zzaof;
    private final String zzoj;

    public zzbe(zzbb zzbbVar, String str, long j) {
        this.zzaoe = zzbbVar;
        Preconditions.checkNotEmpty(str);
        this.zzoj = str;
        this.zzaof = j;
    }

    @WorkerThread
    public final long get() {
        if (!this.zzaod) {
            this.zzaod = true;
            this.value = this.zzaoe.zzju().getLong(this.zzoj, this.zzaof);
        }
        return this.value;
    }

    @WorkerThread
    public final void set(long j) {
        SharedPreferences.Editor editorEdit = this.zzaoe.zzju().edit();
        editorEdit.putLong(this.zzoj, j);
        editorEdit.apply();
        this.value = j;
    }
}

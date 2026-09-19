package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbf {
    private final long zzabv;
    private final /* synthetic */ zzbb zzaoe;

    @VisibleForTesting
    private final String zzaog;
    private final String zzaoh;
    private final String zzaoi;

    private zzbf(zzbb zzbbVar, String str, long j) {
        this.zzaoe = zzbbVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.zzaog = String.valueOf(str).concat(":start");
        this.zzaoh = String.valueOf(str).concat(":count");
        this.zzaoi = String.valueOf(str).concat(":value");
        this.zzabv = j;
    }

    @WorkerThread
    private final void zzfl() {
        this.zzaoe.zzaf();
        long jCurrentTimeMillis = this.zzaoe.zzbx().currentTimeMillis();
        SharedPreferences.Editor editorEdit = this.zzaoe.zzju().edit();
        editorEdit.remove(this.zzaoh);
        editorEdit.remove(this.zzaoi);
        editorEdit.putLong(this.zzaog, jCurrentTimeMillis);
        editorEdit.apply();
    }

    @WorkerThread
    public final void zzc(String str, long j) {
        this.zzaoe.zzaf();
        if (zzfn() == 0) {
            zzfl();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.zzaoe.zzju().getLong(this.zzaoh, 0L);
        if (j2 > 0) {
            long j3 = j2 + 1;
            boolean z = (this.zzaoe.zzgr().zzmk().nextLong() & LongCompanionObject.MAX_VALUE) < LongCompanionObject.MAX_VALUE / j3;
            SharedPreferences.Editor editorEdit = this.zzaoe.zzju().edit();
            if (z) {
                editorEdit.putString(this.zzaoi, str);
            }
            editorEdit.putLong(this.zzaoh, j3);
            editorEdit.apply();
            return;
        }
        SharedPreferences.Editor editorEdit2 = this.zzaoe.zzju().edit();
        editorEdit2.putString(this.zzaoi, str);
        editorEdit2.putLong(this.zzaoh, 1L);
        editorEdit2.apply();
    }

    @WorkerThread
    public final Pair<String, Long> zzfm() {
        long jAbs;
        this.zzaoe.zzaf();
        this.zzaoe.zzaf();
        long jZzfn = zzfn();
        if (jZzfn == 0) {
            zzfl();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jZzfn - this.zzaoe.zzbx().currentTimeMillis());
        }
        if (jAbs < this.zzabv) {
            return null;
        }
        if (jAbs > (this.zzabv << 1)) {
            zzfl();
            return null;
        }
        String string = this.zzaoe.zzju().getString(this.zzaoi, null);
        long j = this.zzaoe.zzju().getLong(this.zzaoh, 0L);
        zzfl();
        if (string == null || j <= 0) {
            return zzbb.zzanj;
        }
        return new Pair<>(string, Long.valueOf(j));
    }

    @WorkerThread
    private final long zzfn() {
        return this.zzaoe.zzju().getLong(this.zzaog, 0L);
    }
}

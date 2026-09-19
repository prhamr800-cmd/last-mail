package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
final class zztj extends WeakReference<Throwable> {
    private final int zzbst;

    public zztj(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, null);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.zzbst = System.identityHashCode(th);
    }

    public final int hashCode() {
        return this.zzbst;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zztj zztjVar = (zztj) obj;
        if (this.zzbst != zztjVar.zzbst || get() != zztjVar.get()) {
            return false;
        }
        return true;
    }
}

package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzti {
    private final ConcurrentHashMap<zztj, List<Throwable>> zzbsr = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzbss = new ReferenceQueue<>();

    zzti() {
    }

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.zzbss.poll();
        while (referencePoll != null) {
            this.zzbsr.remove(referencePoll);
            referencePoll = this.zzbss.poll();
        }
        return this.zzbsr.get(new zztj(th, null));
    }
}

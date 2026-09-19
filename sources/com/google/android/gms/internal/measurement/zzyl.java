package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzyl extends RuntimeException {
    private final List<String> zzcdi;

    public zzyl(zzxe zzxeVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zzcdi = null;
    }
}

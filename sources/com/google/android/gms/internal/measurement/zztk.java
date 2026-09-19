package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zztk extends zzth {
    private final zzti zzbsu = new zzti();

    zztk() {
    }

    @Override // com.google.android.gms.internal.measurement.zzth
    public final void zza(Throwable th, PrintStream printStream) {
        th.printStackTrace(printStream);
        List<Throwable> listZza = this.zzbsu.zza(th, false);
        if (listZza == null) {
            return;
        }
        synchronized (listZza) {
            for (Throwable th2 : listZza) {
                printStream.print("Suppressed: ");
                th2.printStackTrace(printStream);
            }
        }
    }
}

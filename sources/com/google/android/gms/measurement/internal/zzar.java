package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzar implements Runnable {
    private final /* synthetic */ int zzamo;
    private final /* synthetic */ String zzamp;
    private final /* synthetic */ Object zzamq;
    private final /* synthetic */ Object zzamr;
    private final /* synthetic */ Object zzams;
    private final /* synthetic */ zzaq zzamt;

    zzar(zzaq zzaqVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzamt = zzaqVar;
        this.zzamo = i;
        this.zzamp = str;
        this.zzamq = obj;
        this.zzamr = obj2;
        this.zzams = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbb zzbbVarZzgu = this.zzamt.zzadp.zzgu();
        if (!zzbbVarZzgu.isInitialized()) {
            this.zzamt.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzamt.zzamd == 0) {
            if (this.zzamt.zzgv().zzdw()) {
                zzaq zzaqVar = this.zzamt;
                this.zzamt.zzgw();
                zzaqVar.zzamd = 'C';
            } else {
                zzaq zzaqVar2 = this.zzamt;
                this.zzamt.zzgw();
                zzaqVar2.zzamd = 'c';
            }
        }
        if (this.zzamt.zzadt < 0) {
            this.zzamt.zzadt = this.zzamt.zzgv().zzhh();
        }
        char cCharAt = "01VDIWEA?".charAt(this.zzamo);
        char c = this.zzamt.zzamd;
        long j = this.zzamt.zzadt;
        String strZza = zzaq.zza(true, this.zzamp, this.zzamq, this.zzamr, this.zzams);
        StringBuilder sb = new StringBuilder(String.valueOf(strZza).length() + 24);
        sb.append("2");
        sb.append(cCharAt);
        sb.append(c);
        sb.append(j);
        sb.append(":");
        sb.append(strZza);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = this.zzamp.substring(0, 1024);
        }
        zzbbVarZzgu.zzank.zzc(string, 1L);
    }
}

package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzsx<T> {
    private final String name;
    private volatile T zzalu;
    private final zztd zzbrz;
    private final T zzbsa;
    private volatile int zzbsc;
    private static final Object zzbrx = new Object();

    @SuppressLint({"StaticFieldLeak"})
    private static Context zzri = null;
    private static boolean zzbry = false;
    private static final AtomicInteger zzbsb = new AtomicInteger();

    public static void zzae(Context context) {
        synchronized (zzbrx) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzri != context) {
                synchronized (zzsm.class) {
                    zzsm.zzbrm.clear();
                }
                synchronized (zzte.class) {
                    zzte.zzbsk.clear();
                }
                synchronized (zzst.class) {
                    zzst.zzbru = null;
                }
                zzbsb.incrementAndGet();
                zzri = context;
            }
        }
    }

    abstract T zzs(Object obj);

    static void zztq() {
        zzbsb.incrementAndGet();
    }

    private zzsx(zztd zztdVar, String str, T t) {
        this.zzbsc = -1;
        if (zztdVar.zzbse == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zzbrz = zztdVar;
        this.name = str;
        this.zzbsa = t;
    }

    private final String zzft(String str) {
        if (str != null && str.isEmpty()) {
            return this.name;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf(this.name);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public final String zztr() {
        return zzft(this.zzbrz.zzbsg);
    }

    public final T getDefaultValue() {
        return this.zzbsa;
    }

    public final T get() {
        int i = zzbsb.get();
        if (this.zzbsc < i) {
            synchronized (this) {
                if (this.zzbsc < i) {
                    if (zzri == null) {
                        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                    }
                    zztd zztdVar = this.zzbrz;
                    T tZzts = zzts();
                    if (tZzts == null && (tZzts = zztt()) == null) {
                        tZzts = this.zzbsa;
                    }
                    this.zzalu = tZzts;
                    this.zzbsc = i;
                }
            }
        }
        return this.zzalu;
    }

    @Nullable
    private final T zzts() {
        zzsq zzsqVarZzi;
        Object objZzfp;
        zztd zztdVar = this.zzbrz;
        String str = (String) zzst.zzad(zzri).zzfp("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (!(str != null && zzsj.zzbqz.matcher(str).matches())) {
            if (this.zzbrz.zzbse != null) {
                zzsqVarZzi = zzsm.zza(zzri.getContentResolver(), this.zzbrz.zzbse);
            } else {
                Context context = zzri;
                zztd zztdVar2 = this.zzbrz;
                zzsqVarZzi = zzte.zzi(context, null);
            }
            if (zzsqVarZzi != null && (objZzfp = zzsqVarZzi.zzfp(zztr())) != null) {
                return zzs(objZzfp);
            }
        } else {
            String strValueOf = String.valueOf(zztr());
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        }
        return null;
    }

    @Nullable
    private final T zztt() {
        zztd zztdVar = this.zzbrz;
        zzst zzstVarZzad = zzst.zzad(zzri);
        zztd zztdVar2 = this.zzbrz;
        Object objZzfp = zzstVarZzad.zzfp(zzft(this.zzbrz.zzbsf));
        if (objZzfp != null) {
            return zzs(objZzfp);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzsx<Long> zza(zztd zztdVar, String str, long j) {
        return new zzsy(zztdVar, str, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzsx<Integer> zza(zztd zztdVar, String str, int i) {
        return new zzsz(zztdVar, str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzsx<Boolean> zza(zztd zztdVar, String str, boolean z) {
        return new zzta(zztdVar, str, Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzsx<Double> zza(zztd zztdVar, String str, double d) {
        return new zztb(zztdVar, str, Double.valueOf(d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzsx<String> zza(zztd zztdVar, String str, String str2) {
        return new zztc(zztdVar, str, str2);
    }

    /* synthetic */ zzsx(zztd zztdVar, String str, Object obj, zzsy zzsyVar) {
        this(zztdVar, str, obj);
    }
}

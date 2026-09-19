package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.snowplowanalytics.snowplow.tracker.storage.EventStoreHelper;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class zzfk implements zzcr {
    private static volatile zzfk zzatt;
    private final zzbu zzadp;
    private zzbo zzatu;
    private zzau zzatv;
    private zzr zzatw;
    private zzaz zzatx;
    private zzfg zzaty;
    private zzk zzatz;
    private final zzfq zzaua;
    private zzdt zzaub;
    private boolean zzauc;
    private boolean zzaud;

    @VisibleForTesting
    private long zzaue;
    private List<Runnable> zzauf;
    private int zzaug;
    private int zzauh;
    private boolean zzaui;
    private boolean zzauj;
    private boolean zzauk;
    private FileLock zzaul;
    private FileChannel zzaum;
    private List<Long> zzaun;
    private List<Long> zzauo;
    private long zzaup;
    private boolean zzvz;

    class zza implements zzt {
        zzgl zzaut;
        List<Long> zzauu;
        List<zzgi> zzauv;
        private long zzauw;

        private zza() {
        }

        @Override // com.google.android.gms.measurement.internal.zzt
        public final void zzb(zzgl zzglVar) {
            Preconditions.checkNotNull(zzglVar);
            this.zzaut = zzglVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzt
        public final boolean zza(long j, zzgi zzgiVar) {
            Preconditions.checkNotNull(zzgiVar);
            if (this.zzauv == null) {
                this.zzauv = new ArrayList();
            }
            if (this.zzauu == null) {
                this.zzauu = new ArrayList();
            }
            if (this.zzauv.size() > 0 && zza(this.zzauv.get(0)) != zza(zzgiVar)) {
                return false;
            }
            long jZzwe = this.zzauw + ((long) zzgiVar.zzwe());
            if (jZzwe >= Math.max(0, zzag.zzajo.get().intValue())) {
                return false;
            }
            this.zzauw = jZzwe;
            this.zzauv.add(zzgiVar);
            this.zzauu.add(Long.valueOf(j));
            return this.zzauv.size() < Math.max(1, zzag.zzajp.get().intValue());
        }

        private static long zza(zzgi zzgiVar) {
            return ((zzgiVar.zzaxn.longValue() / 1000) / 60) / 60;
        }

        /* synthetic */ zza(zzfk zzfkVar, zzfl zzflVar) {
            this();
        }
    }

    public static zzfk zzn(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzatt == null) {
            synchronized (zzfk.class) {
                if (zzatt == null) {
                    zzatt = new zzfk(new zzfp(context));
                }
            }
        }
        return zzatt;
    }

    private zzfk(zzfp zzfpVar) {
        this(zzfpVar, null);
    }

    private zzfk(zzfp zzfpVar, zzbu zzbuVar) {
        this.zzvz = false;
        Preconditions.checkNotNull(zzfpVar);
        this.zzadp = zzbu.zza(zzfpVar.zzri, (zzal) null);
        this.zzaup = -1L;
        zzfq zzfqVar = new zzfq(this);
        zzfqVar.zzq();
        this.zzaua = zzfqVar;
        zzau zzauVar = new zzau(this);
        zzauVar.zzq();
        this.zzatv = zzauVar;
        zzbo zzboVar = new zzbo(this);
        zzboVar.zzq();
        this.zzatu = zzboVar;
        this.zzadp.zzgs().zzc(new zzfl(this, zzfpVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(zzfp zzfpVar) {
        this.zzadp.zzgs().zzaf();
        zzr zzrVar = new zzr(this);
        zzrVar.zzq();
        this.zzatw = zzrVar;
        this.zzadp.zzgv().zza(this.zzatu);
        zzk zzkVar = new zzk(this);
        zzkVar.zzq();
        this.zzatz = zzkVar;
        zzdt zzdtVar = new zzdt(this);
        zzdtVar.zzq();
        this.zzaub = zzdtVar;
        zzfg zzfgVar = new zzfg(this);
        zzfgVar.zzq();
        this.zzaty = zzfgVar;
        this.zzatx = new zzaz(this);
        if (this.zzaug != this.zzauh) {
            this.zzadp.zzgt().zzjg().zze("Not all upload components initialized", Integer.valueOf(this.zzaug), Integer.valueOf(this.zzauh));
        }
        this.zzvz = true;
    }

    @WorkerThread
    protected final void start() {
        this.zzadp.zzgs().zzaf();
        zzjt().zzij();
        if (this.zzadp.zzgu().zzanl.get() == 0) {
            this.zzadp.zzgu().zzanl.set(this.zzadp.zzbx().currentTimeMillis());
        }
        zzmb();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzl zzgw() {
        return this.zzadp.zzgw();
    }

    public final zzo zzgv() {
        return this.zzadp.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzaq zzgt() {
        return this.zzadp.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final zzbp zzgs() {
        return this.zzadp.zzgs();
    }

    private final zzbo zzls() {
        zza(this.zzatu);
        return this.zzatu;
    }

    public final zzau zzlt() {
        zza(this.zzatv);
        return this.zzatv;
    }

    public final zzr zzjt() {
        zza(this.zzatw);
        return this.zzatw;
    }

    private final zzaz zzlu() {
        if (this.zzatx == null) {
            throw new IllegalStateException("Network broadcast receiver not created");
        }
        return this.zzatx;
    }

    private final zzfg zzlv() {
        zza(this.zzaty);
        return this.zzaty;
    }

    public final zzk zzjs() {
        zza(this.zzatz);
        return this.zzatz;
    }

    public final zzdt zzlw() {
        zza(this.zzaub);
        return this.zzaub;
    }

    public final zzfq zzjr() {
        zza(this.zzaua);
        return this.zzaua;
    }

    public final zzao zzgq() {
        return this.zzadp.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final Context getContext() {
        return this.zzadp.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public final Clock zzbx() {
        return this.zzadp.zzbx();
    }

    public final zzfu zzgr() {
        return this.zzadp.zzgr();
    }

    @WorkerThread
    private final void zzaf() {
        this.zzadp.zzgs().zzaf();
    }

    final void zzlx() {
        if (!this.zzvz) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    private static void zza(zzfj zzfjVar) {
        if (zzfjVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (!zzfjVar.isInitialized()) {
            String strValueOf = String.valueOf(zzfjVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(strValueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    final void zze(zzi zziVar) {
        zzaf();
        zzlx();
        Preconditions.checkNotEmpty(zziVar.packageName);
        zzg(zziVar);
    }

    private final long zzly() {
        long jCurrentTimeMillis = this.zzadp.zzbx().currentTimeMillis();
        zzbb zzbbVarZzgu = this.zzadp.zzgu();
        zzbbVarZzgu.zzcl();
        zzbbVarZzgu.zzaf();
        long jNextInt = zzbbVarZzgu.zzanp.get();
        if (jNextInt == 0) {
            jNextInt = 1 + ((long) zzbbVarZzgu.zzgr().zzmk().nextInt(86400000));
            zzbbVarZzgu.zzanp.set(jNextInt);
        }
        return ((((jCurrentTimeMillis + jNextInt) / 1000) / 60) / 60) / 24;
    }

    @WorkerThread
    final void zzd(zzae zzaeVar, String str) {
        zzg zzgVarZzbo = zzjt().zzbo(str);
        if (zzgVarZzbo == null || TextUtils.isEmpty(zzgVarZzbo.zzak())) {
            this.zzadp.zzgt().zzjn().zzg("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzc = zzc(zzgVarZzbo);
        if (boolZzc == null) {
            if (!"_ui".equals(zzaeVar.name)) {
                this.zzadp.zzgt().zzjj().zzg("Could not find package. appId", zzaq.zzby(str));
            }
        } else if (!boolZzc.booleanValue()) {
            this.zzadp.zzgt().zzjg().zzg("App version does not match; dropping event. appId", zzaq.zzby(str));
            return;
        }
        zzc(zzaeVar, new zzi(str, zzgVarZzbo.getGmpAppId(), zzgVarZzbo.zzak(), zzgVarZzbo.zzhf(), zzgVarZzbo.zzhg(), zzgVarZzbo.zzhh(), zzgVarZzbo.zzhi(), (String) null, zzgVarZzbo.isMeasurementEnabled(), false, zzgVarZzbo.getFirebaseInstanceId(), zzgVarZzbo.zzhv(), 0L, 0, zzgVarZzbo.zzhw(), zzgVarZzbo.zzhx(), false, zzgVarZzbo.zzhb()));
    }

    @WorkerThread
    final void zzc(zzae zzaeVar, zzi zziVar) {
        List<zzm> listZzb;
        List<zzm> listZzb2;
        List<zzm> listZzb3;
        Preconditions.checkNotNull(zziVar);
        Preconditions.checkNotEmpty(zziVar.packageName);
        zzaf();
        zzlx();
        String str = zziVar.packageName;
        long j = zzaeVar.zzais;
        if (!zzjr().zze(zzaeVar, zziVar)) {
            return;
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        zzjt().beginTransaction();
        try {
            zzr zzrVarZzjt = zzjt();
            Preconditions.checkNotEmpty(str);
            zzrVarZzjt.zzaf();
            zzrVarZzjt.zzcl();
            if (j < 0) {
                zzrVarZzjt.zzgt().zzjj().zze("Invalid time querying timed out conditional properties", zzaq.zzby(str), Long.valueOf(j));
                listZzb = Collections.emptyList();
            } else {
                listZzb = zzrVarZzjt.zzb("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
            }
            for (zzm zzmVar : listZzb) {
                if (zzmVar != null) {
                    this.zzadp.zzgt().zzjn().zzd("User property timed out", zzmVar.packageName, this.zzadp.zzgq().zzbx(zzmVar.zzahe.name), zzmVar.zzahe.getValue());
                    if (zzmVar.zzahf != null) {
                        zzd(new zzae(zzmVar.zzahf, j), zziVar);
                    }
                    zzjt().zzk(str, zzmVar.zzahe.name);
                }
            }
            zzr zzrVarZzjt2 = zzjt();
            Preconditions.checkNotEmpty(str);
            zzrVarZzjt2.zzaf();
            zzrVarZzjt2.zzcl();
            if (j < 0) {
                zzrVarZzjt2.zzgt().zzjj().zze("Invalid time querying expired conditional properties", zzaq.zzby(str), Long.valueOf(j));
                listZzb2 = Collections.emptyList();
            } else {
                listZzb2 = zzrVarZzjt2.zzb("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(listZzb2.size());
            for (zzm zzmVar2 : listZzb2) {
                if (zzmVar2 != null) {
                    this.zzadp.zzgt().zzjn().zzd("User property expired", zzmVar2.packageName, this.zzadp.zzgq().zzbx(zzmVar2.zzahe.name), zzmVar2.zzahe.getValue());
                    zzjt().zzh(str, zzmVar2.zzahe.name);
                    if (zzmVar2.zzahh != null) {
                        arrayList.add(zzmVar2.zzahh);
                    }
                    zzjt().zzk(str, zzmVar2.zzahe.name);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                zzd(new zzae((zzae) obj, j), zziVar);
            }
            zzr zzrVarZzjt3 = zzjt();
            String str2 = zzaeVar.name;
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotEmpty(str2);
            zzrVarZzjt3.zzaf();
            zzrVarZzjt3.zzcl();
            if (j < 0) {
                zzrVarZzjt3.zzgt().zzjj().zzd("Invalid time querying triggered conditional properties", zzaq.zzby(str), zzrVarZzjt3.zzgq().zzbv(str2), Long.valueOf(j));
                listZzb3 = Collections.emptyList();
            } else {
                listZzb3 = zzrVarZzjt3.zzb("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
            }
            ArrayList arrayList3 = new ArrayList(listZzb3.size());
            for (zzm zzmVar3 : listZzb3) {
                if (zzmVar3 != null) {
                    zzfr zzfrVar = zzmVar3.zzahe;
                    zzft zzftVar = new zzft(zzmVar3.packageName, zzmVar3.origin, zzfrVar.name, j, zzfrVar.getValue());
                    if (zzjt().zza(zzftVar)) {
                        this.zzadp.zzgt().zzjn().zzd("User property triggered", zzmVar3.packageName, this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
                    } else {
                        this.zzadp.zzgt().zzjg().zzd("Too many active user properties, ignoring", zzaq.zzby(zzmVar3.packageName), this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
                    }
                    if (zzmVar3.zzahg != null) {
                        arrayList3.add(zzmVar3.zzahg);
                    }
                    zzmVar3.zzahe = new zzfr(zzftVar);
                    zzmVar3.active = true;
                    zzjt().zza(zzmVar3);
                }
            }
            zzd(zzaeVar, zziVar);
            ArrayList arrayList4 = arrayList3;
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                zzd(new zzae((zzae) obj2, j), zziVar);
            }
            zzjt().setTransactionSuccessful();
        } finally {
            zzjt().endTransaction();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:193:0x07b7 A[Catch: all -> 0x082f, TryCatch #2 {all -> 0x082f, blocks: (B:33:0x010e, B:35:0x011b, B:80:0x02af, B:82:0x02f1, B:84:0x02f7, B:85:0x0310, B:89:0x0321, B:91:0x0337, B:93:0x033d, B:94:0x0358, B:99:0x037d, B:103:0x03a4, B:104:0x03bd, B:108:0x03cd, B:110:0x03ef, B:111:0x040e, B:113:0x041d, B:115:0x0428, B:117:0x0436, B:119:0x043d, B:120:0x044a, B:122:0x0457, B:123:0x046e, B:125:0x0491, B:128:0x04a2, B:131:0x04df, B:133:0x0507, B:137:0x055a, B:141:0x057c, B:143:0x058f, B:144:0x0599, B:146:0x05a8, B:148:0x05b2, B:150:0x05b6, B:162:0x0625, B:164:0x0678, B:166:0x067e, B:167:0x0680, B:169:0x068c, B:170:0x06f0, B:171:0x070f, B:173:0x0715, B:175:0x0748, B:176:0x0751, B:178:0x0759, B:179:0x075f, B:181:0x0765, B:191:0x07b1, B:193:0x07b7, B:196:0x07d2, B:198:0x07e8, B:185:0x0777, B:187:0x079c, B:195:0x07bc, B:151:0x05c3, B:153:0x05d7, B:155:0x05dc, B:157:0x05ef, B:161:0x0623, B:158:0x0607, B:160:0x060e, B:140:0x0576, B:136:0x0553, B:132:0x04f9, B:38:0x0126, B:40:0x0138, B:42:0x0152, B:48:0x0171, B:51:0x019f, B:53:0x01a5, B:55:0x01b3, B:57:0x01c3, B:60:0x01cf, B:62:0x01d9, B:65:0x01e0, B:72:0x0260, B:74:0x026b, B:66:0x0204, B:67:0x0220, B:71:0x0249, B:70:0x0238, B:59:0x01c9, B:77:0x02a0, B:49:0x0176, B:50:0x0192), top: B:208:0x010e, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a0 A[Catch: all -> 0x082f, TRY_LEAVE, TryCatch #2 {all -> 0x082f, blocks: (B:33:0x010e, B:35:0x011b, B:80:0x02af, B:82:0x02f1, B:84:0x02f7, B:85:0x0310, B:89:0x0321, B:91:0x0337, B:93:0x033d, B:94:0x0358, B:99:0x037d, B:103:0x03a4, B:104:0x03bd, B:108:0x03cd, B:110:0x03ef, B:111:0x040e, B:113:0x041d, B:115:0x0428, B:117:0x0436, B:119:0x043d, B:120:0x044a, B:122:0x0457, B:123:0x046e, B:125:0x0491, B:128:0x04a2, B:131:0x04df, B:133:0x0507, B:137:0x055a, B:141:0x057c, B:143:0x058f, B:144:0x0599, B:146:0x05a8, B:148:0x05b2, B:150:0x05b6, B:162:0x0625, B:164:0x0678, B:166:0x067e, B:167:0x0680, B:169:0x068c, B:170:0x06f0, B:171:0x070f, B:173:0x0715, B:175:0x0748, B:176:0x0751, B:178:0x0759, B:179:0x075f, B:181:0x0765, B:191:0x07b1, B:193:0x07b7, B:196:0x07d2, B:198:0x07e8, B:185:0x0777, B:187:0x079c, B:195:0x07bc, B:151:0x05c3, B:153:0x05d7, B:155:0x05dc, B:157:0x05ef, B:161:0x0623, B:158:0x0607, B:160:0x060e, B:140:0x0576, B:136:0x0553, B:132:0x04f9, B:38:0x0126, B:40:0x0138, B:42:0x0152, B:48:0x0171, B:51:0x019f, B:53:0x01a5, B:55:0x01b3, B:57:0x01c3, B:60:0x01cf, B:62:0x01d9, B:65:0x01e0, B:72:0x0260, B:74:0x026b, B:66:0x0204, B:67:0x0220, B:71:0x0249, B:70:0x0238, B:59:0x01c9, B:77:0x02a0, B:49:0x0176, B:50:0x0192), top: B:208:0x010e, inners: #0, #1 }] */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzd(com.google.android.gms.measurement.internal.zzae r26, com.google.android.gms.measurement.internal.zzi r27) {
        /*
            Method dump skipped, instruction units count: 2104
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfk.zzd(com.google.android.gms.measurement.internal.zzae, com.google.android.gms.measurement.internal.zzi):void");
    }

    @WorkerThread
    final void zzlz() {
        zzg zzgVarZzbo;
        String str;
        zzaf();
        zzlx();
        this.zzauk = true;
        try {
            this.zzadp.zzgw();
            Boolean boolZzli = this.zzadp.zzgl().zzli();
            if (boolZzli == null) {
                this.zzadp.zzgt().zzjj().zzca("Upload data called on the client side before use of service was decided");
                return;
            }
            if (boolZzli.booleanValue()) {
                this.zzadp.zzgt().zzjg().zzca("Upload called in the client side when service should be used");
                return;
            }
            if (this.zzaue > 0) {
                zzmb();
                return;
            }
            zzaf();
            if (this.zzaun != null) {
                this.zzadp.zzgt().zzjo().zzca("Uploading requested multiple times");
                return;
            }
            if (!zzlt().zzfb()) {
                this.zzadp.zzgt().zzjo().zzca("Network not connected, ignoring upload request");
                zzmb();
                return;
            }
            long jCurrentTimeMillis = this.zzadp.zzbx().currentTimeMillis();
            String strZzb = null;
            zzd((String) null, jCurrentTimeMillis - zzo.zzic());
            long j = this.zzadp.zzgu().zzanl.get();
            if (j != 0) {
                this.zzadp.zzgt().zzjn().zzg("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jCurrentTimeMillis - j)));
            }
            String strZzih = zzjt().zzih();
            if (!TextUtils.isEmpty(strZzih)) {
                if (this.zzaup == -1) {
                    this.zzaup = zzjt().zzio();
                }
                List<Pair<zzgl, Long>> listZzb = zzjt().zzb(strZzih, this.zzadp.zzgv().zzb(strZzih, zzag.zzajm), Math.max(0, this.zzadp.zzgv().zzb(strZzih, zzag.zzajn)));
                if (!listZzb.isEmpty()) {
                    Iterator<Pair<zzgl, Long>> it = listZzb.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            zzgl zzglVar = (zzgl) it.next().first;
                            if (!TextUtils.isEmpty(zzglVar.zzayh)) {
                                str = zzglVar.zzayh;
                                break;
                            }
                        } else {
                            str = null;
                            break;
                        }
                    }
                    if (str != null) {
                        int i = 0;
                        while (true) {
                            if (i >= listZzb.size()) {
                                break;
                            }
                            zzgl zzglVar2 = (zzgl) listZzb.get(i).first;
                            if (!TextUtils.isEmpty(zzglVar2.zzayh) && !zzglVar2.zzayh.equals(str)) {
                                listZzb = listZzb.subList(0, i);
                                break;
                            }
                            i++;
                        }
                    }
                    zzgk zzgkVar = new zzgk();
                    zzgkVar.zzaxr = new zzgl[listZzb.size()];
                    ArrayList arrayList = new ArrayList(listZzb.size());
                    boolean z = zzo.zzie() && this.zzadp.zzgv().zzau(strZzih);
                    for (int i2 = 0; i2 < zzgkVar.zzaxr.length; i2++) {
                        zzgkVar.zzaxr[i2] = (zzgl) listZzb.get(i2).first;
                        arrayList.add((Long) listZzb.get(i2).second);
                        zzgkVar.zzaxr[i2].zzayg = Long.valueOf(this.zzadp.zzgv().zzhh());
                        zzgkVar.zzaxr[i2].zzaxw = Long.valueOf(jCurrentTimeMillis);
                        zzgl zzglVar3 = zzgkVar.zzaxr[i2];
                        this.zzadp.zzgw();
                        zzglVar3.zzayl = false;
                        if (!z) {
                            zzgkVar.zzaxr[i2].zzayt = null;
                        }
                    }
                    if (this.zzadp.zzgt().isLoggable(2)) {
                        strZzb = zzjr().zzb(zzgkVar);
                    }
                    byte[] bArrZza = zzjr().zza(zzgkVar);
                    String str2 = zzag.zzajw.get();
                    try {
                        URL url = new URL(str2);
                        Preconditions.checkArgument(!arrayList.isEmpty());
                        if (this.zzaun == null) {
                            this.zzaun = new ArrayList(arrayList);
                        } else {
                            this.zzadp.zzgt().zzjg().zzca("Set uploading progress before finishing the previous upload");
                        }
                        this.zzadp.zzgu().zzanm.set(jCurrentTimeMillis);
                        String str3 = "?";
                        if (zzgkVar.zzaxr.length > 0) {
                            str3 = zzgkVar.zzaxr[0].zztt;
                        }
                        this.zzadp.zzgt().zzjo().zzd("Uploading data. app, uncompressed size, data", str3, Integer.valueOf(bArrZza.length), strZzb);
                        this.zzauj = true;
                        zzau zzauVarZzlt = zzlt();
                        zzfm zzfmVar = new zzfm(this, strZzih);
                        zzauVarZzlt.zzaf();
                        zzauVarZzlt.zzcl();
                        Preconditions.checkNotNull(url);
                        Preconditions.checkNotNull(bArrZza);
                        Preconditions.checkNotNull(zzfmVar);
                        zzauVarZzlt.zzgs().zzd(new zzay(zzauVarZzlt, strZzih, url, bArrZza, null, zzfmVar));
                    } catch (MalformedURLException e) {
                        this.zzadp.zzgt().zzjg().zze("Failed to parse upload URL. Not uploading. appId", zzaq.zzby(strZzih), str2);
                    }
                }
            } else {
                this.zzaup = -1L;
                String strZzah = zzjt().zzah(jCurrentTimeMillis - zzo.zzic());
                if (!TextUtils.isEmpty(strZzah) && (zzgVarZzbo = zzjt().zzbo(strZzah)) != null) {
                    zzb(zzgVarZzbo);
                }
            }
        } finally {
            this.zzauk = false;
            zzmc();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0283 A[Catch: all -> 0x0e3d, TRY_ENTER, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x028b A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x029b A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03d0 A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03df A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0459 A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x06af A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x076e A[Catch: all -> 0x0e3d, TryCatch #18 {all -> 0x0e3d, blocks: (B:3:0x0009, B:26:0x008b, B:113:0x0286, B:115:0x028b, B:121:0x029b, B:122:0x02d0, B:124:0x02db, B:126:0x02f6, B:128:0x032c, B:134:0x0341, B:136:0x034c, B:305:0x0792, B:138:0x036a, B:140:0x037e, B:157:0x03b9, B:219:0x05cf, B:222:0x05e1, B:223:0x05e8, B:225:0x05eb, B:231:0x0609, B:228:0x05fb, B:234:0x060f, B:236:0x0615, B:238:0x061c, B:259:0x0677, B:260:0x0698, B:262:0x069d, B:264:0x06af, B:266:0x06bb, B:269:0x06c8, B:271:0x06de, B:277:0x06ed, B:279:0x06f7, B:282:0x0704, B:284:0x071a, B:292:0x0729, B:294:0x0733, B:296:0x0737, B:299:0x073d, B:301:0x074c, B:302:0x0764, B:303:0x076e, B:304:0x0786, B:243:0x0649, B:245:0x064f, B:249:0x0658, B:251:0x065e, B:254:0x066a, B:147:0x039a, B:150:0x03a4, B:153:0x03ae, B:163:0x03ca, B:165:0x03d0, B:166:0x03d5, B:168:0x03df, B:170:0x03ef, B:174:0x040c, B:171:0x03f9, B:173:0x0403, B:177:0x0418, B:179:0x0459, B:180:0x0497, B:183:0x04cd, B:185:0x04d2, B:187:0x04e0, B:189:0x04e9, B:190:0x04ef, B:192:0x04f2, B:193:0x04fb, B:194:0x04fe, B:197:0x0506, B:200:0x0511, B:202:0x0543, B:204:0x0564, B:210:0x0585, B:207:0x0579, B:214:0x0594, B:216:0x05a7, B:217:0x05b4, B:310:0x07a9, B:312:0x07b7, B:314:0x07c2, B:323:0x07f6, B:316:0x07d7, B:318:0x07e2, B:320:0x07e6, B:322:0x07f0, B:326:0x07fe, B:328:0x0806, B:330:0x0813, B:332:0x0821, B:335:0x0826, B:337:0x086a, B:338:0x088c, B:340:0x0891, B:342:0x089f, B:346:0x08ad, B:349:0x08cd, B:343:0x08a7, B:336:0x084d, B:350:0x08e6, B:356:0x0935, B:358:0x0949, B:359:0x0958, B:361:0x095c, B:363:0x0967, B:364:0x0976, B:366:0x097a, B:368:0x0983, B:369:0x0994, B:378:0x09e8, B:380:0x09f2, B:382:0x09fe, B:384:0x0a02, B:401:0x0a36, B:404:0x0a49, B:408:0x0a74, B:410:0x0a85, B:420:0x0ad9, B:422:0x0ae1, B:424:0x0ae5, B:426:0x0ae9, B:428:0x0aed, B:432:0x0b05, B:434:0x0b24, B:435:0x0b2d, B:442:0x0b57, B:386:0x0a0a, B:388:0x0a0e, B:390:0x0a16, B:392:0x0a1a, B:396:0x0a26, B:54:0x013b, B:70:0x01d5, B:77:0x020b, B:85:0x022c, B:112:0x0283, B:95:0x024e, B:45:0x00ef, B:57:0x0150), top: B:574:0x0009, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128 A[Catch: SQLiteException -> 0x0252, all -> 0x0e30, TRY_LEAVE, TryCatch #11 {all -> 0x0e30, blocks: (B:50:0x0122, B:52:0x0128, B:56:0x0140, B:57:0x0150, B:58:0x0154, B:60:0x015a, B:61:0x016b, B:63:0x0177, B:65:0x0197, B:110:0x0270, B:64:0x018b, B:93:0x023b), top: B:567:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0e1f  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0e36 A[Catch: all -> 0x0e3a, TRY_ENTER, TryCatch #15 {all -> 0x0e3a, blocks: (B:490:0x0caa, B:506:0x0d20, B:508:0x0d26, B:510:0x0d3c, B:513:0x0d41, B:518:0x0d71, B:514:0x0d46, B:516:0x0d50, B:517:0x0d59, B:519:0x0d7a, B:520:0x0d91, B:523:0x0d99, B:524:0x0d9e, B:525:0x0dae, B:527:0x0dc8, B:528:0x0de1, B:529:0x0de9, B:534:0x0e0b, B:533:0x0dfa, B:491:0x0cc2, B:493:0x0cc9, B:495:0x0cd3, B:497:0x0cd9, B:503:0x0ceb, B:505:0x0cf1, B:540:0x0e20, B:546:0x0e36, B:549:0x0e3c), top: B:571:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0e3c A[Catch: all -> 0x0e3a, TRY_LEAVE, TryCatch #15 {all -> 0x0e3a, blocks: (B:490:0x0caa, B:506:0x0d20, B:508:0x0d26, B:510:0x0d3c, B:513:0x0d41, B:518:0x0d71, B:514:0x0d46, B:516:0x0d50, B:517:0x0d59, B:519:0x0d7a, B:520:0x0d91, B:523:0x0d99, B:524:0x0d9e, B:525:0x0dae, B:527:0x0dc8, B:528:0x0de1, B:529:0x0de9, B:534:0x0e0b, B:533:0x0dfa, B:491:0x0cc2, B:493:0x0cc9, B:495:0x0cd3, B:497:0x0cd9, B:503:0x0ceb, B:505:0x0cf1, B:540:0x0e20, B:546:0x0e36, B:549:0x0e3c), top: B:571:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0140 A[Catch: SQLiteException -> 0x0252, all -> 0x0e30, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x0e30, blocks: (B:50:0x0122, B:52:0x0128, B:56:0x0140, B:57:0x0150, B:58:0x0154, B:60:0x015a, B:61:0x016b, B:63:0x0177, B:65:0x0197, B:110:0x0270, B:64:0x018b, B:93:0x023b), top: B:567:0x0025 }] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v112 */
    /* JADX WARN: Type inference failed for: r8v114 */
    /* JADX WARN: Type inference failed for: r8v118 */
    /* JADX WARN: Type inference failed for: r8v129 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzd(java.lang.String r53, long r54) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3666
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfk.zzd(java.lang.String, long):boolean");
    }

    private final boolean zza(zzgi zzgiVar, zzgi zzgiVar2) {
        String str;
        Preconditions.checkArgument("_e".equals(zzgiVar.name));
        zzjr();
        zzgj zzgjVarZza = zzfq.zza(zzgiVar, "_sc");
        if (zzgjVarZza != null) {
            str = zzgjVarZza.zzamw;
        } else {
            str = null;
        }
        zzjr();
        zzgj zzgjVarZza2 = zzfq.zza(zzgiVar2, "_pc");
        String str2 = zzgjVarZza2 != null ? zzgjVarZza2.zzamw : null;
        if (str2 != null && str2.equals(str)) {
            zzjr();
            zzgj zzgjVarZza3 = zzfq.zza(zzgiVar, "_et");
            if (zzgjVarZza3.zzaxq == null || zzgjVarZza3.zzaxq.longValue() <= 0) {
                return true;
            }
            long jLongValue = zzgjVarZza3.zzaxq.longValue();
            zzjr();
            zzgj zzgjVarZza4 = zzfq.zza(zzgiVar2, "_et");
            if (zzgjVarZza4 != null && zzgjVarZza4.zzaxq != null && zzgjVarZza4.zzaxq.longValue() > 0) {
                jLongValue += zzgjVarZza4.zzaxq.longValue();
            }
            zzjr();
            zzgiVar2.zzaxm = zzfq.zza(zzgiVar2.zzaxm, "_et", Long.valueOf(jLongValue));
            zzjr();
            zzgiVar.zzaxm = zzfq.zza(zzgiVar.zzaxm, "_fr", (Object) 1L);
            return true;
        }
        return false;
    }

    @VisibleForTesting
    private static zzgj[] zza(zzgj[] zzgjVarArr, @NonNull String str) {
        int i = 0;
        while (true) {
            if (i < zzgjVarArr.length) {
                if (str.equals(zzgjVarArr[i].name)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i < 0) {
            return zzgjVarArr;
        }
        return zza(zzgjVarArr, i);
    }

    @VisibleForTesting
    private static zzgj[] zza(zzgj[] zzgjVarArr, int i) {
        zzgj[] zzgjVarArr2 = new zzgj[zzgjVarArr.length - 1];
        if (i > 0) {
            System.arraycopy(zzgjVarArr, 0, zzgjVarArr2, 0, i);
        }
        if (i < zzgjVarArr2.length) {
            System.arraycopy(zzgjVarArr, i + 1, zzgjVarArr2, i, zzgjVarArr2.length - i);
        }
        return zzgjVarArr2;
    }

    @VisibleForTesting
    private static zzgj[] zza(zzgj[] zzgjVarArr, int i, String str) {
        for (zzgj zzgjVar : zzgjVarArr) {
            if ("_err".equals(zzgjVar.name)) {
                return zzgjVarArr;
            }
        }
        zzgj[] zzgjVarArr2 = new zzgj[zzgjVarArr.length + 2];
        System.arraycopy(zzgjVarArr, 0, zzgjVarArr2, 0, zzgjVarArr.length);
        zzgj zzgjVar2 = new zzgj();
        zzgjVar2.name = "_err";
        zzgjVar2.zzaxq = Long.valueOf(i);
        zzgj zzgjVar3 = new zzgj();
        zzgjVar3.name = "_ev";
        zzgjVar3.zzamw = str;
        zzgjVarArr2[zzgjVarArr2.length - 2] = zzgjVar2;
        zzgjVarArr2[zzgjVarArr2.length - 1] = zzgjVar3;
        return zzgjVarArr2;
    }

    @WorkerThread
    @VisibleForTesting
    final void zza(int i, Throwable th, byte[] bArr, String str) {
        zzaf();
        zzlx();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzauj = false;
                zzmc();
                throw th2;
            }
        }
        List<Long> list = this.zzaun;
        this.zzaun = null;
        boolean z = true;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzadp.zzgu().zzanl.set(this.zzadp.zzbx().currentTimeMillis());
                this.zzadp.zzgu().zzanm.set(0L);
                zzmb();
                this.zzadp.zzgt().zzjo().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzjt().beginTransaction();
                try {
                    for (Long l : list) {
                        try {
                            zzr zzrVarZzjt = zzjt();
                            long jLongValue = l.longValue();
                            zzrVarZzjt.zzaf();
                            zzrVarZzjt.zzcl();
                            try {
                                if (zzrVarZzjt.getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e) {
                                zzrVarZzjt.zzgt().zzjg().zzg("Failed to delete a bundle in a queue table", e);
                                throw e;
                            }
                        } catch (SQLiteException e2) {
                            if (this.zzauo == null || !this.zzauo.contains(l)) {
                                throw e2;
                            }
                        }
                    }
                    zzjt().setTransactionSuccessful();
                    zzjt().endTransaction();
                    this.zzauo = null;
                    if (zzlt().zzfb() && zzma()) {
                        zzlz();
                    } else {
                        this.zzaup = -1L;
                        zzmb();
                    }
                    this.zzaue = 0L;
                } catch (Throwable th3) {
                    zzjt().endTransaction();
                    throw th3;
                }
            } catch (SQLiteException e3) {
                this.zzadp.zzgt().zzjg().zzg("Database error while trying to delete uploaded bundles", e3);
                this.zzaue = this.zzadp.zzbx().elapsedRealtime();
                this.zzadp.zzgt().zzjo().zzg("Disable upload, time", Long.valueOf(this.zzaue));
            }
        } else {
            this.zzadp.zzgt().zzjo().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzadp.zzgu().zzanm.set(this.zzadp.zzbx().currentTimeMillis());
            if (i != 503 && i != 429) {
                z = false;
            }
            if (z) {
                this.zzadp.zzgu().zzann.set(this.zzadp.zzbx().currentTimeMillis());
            }
            if (this.zzadp.zzgv().zzay(str)) {
                zzjt().zzc(list);
            }
            zzmb();
        }
        this.zzauj = false;
        zzmc();
    }

    private final boolean zzma() {
        zzaf();
        zzlx();
        return zzjt().zzim() || !TextUtils.isEmpty(zzjt().zzih());
    }

    @WorkerThread
    private final void zzb(zzg zzgVar) {
        ArrayMap arrayMap;
        zzaf();
        if (TextUtils.isEmpty(zzgVar.getGmpAppId()) && (!zzo.zzig() || TextUtils.isEmpty(zzgVar.zzhb()))) {
            zzb(zzgVar.zzal(), 204, null, null, null);
            return;
        }
        zzo zzoVarZzgv = this.zzadp.zzgv();
        Uri.Builder builder = new Uri.Builder();
        String gmpAppId = zzgVar.getGmpAppId();
        if (TextUtils.isEmpty(gmpAppId) && zzo.zzig()) {
            gmpAppId = zzgVar.zzhb();
        }
        Uri.Builder builderEncodedAuthority = builder.scheme(zzag.zzajk.get()).encodedAuthority(zzag.zzajl.get());
        String strValueOf = String.valueOf(gmpAppId);
        builderEncodedAuthority.path(strValueOf.length() != 0 ? "config/app/".concat(strValueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.getAppInstanceId()).appendQueryParameter("platform", AbstractSpiCall.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", String.valueOf(zzoVarZzgv.zzhh()));
        String string = builder.build().toString();
        try {
            URL url = new URL(string);
            this.zzadp.zzgt().zzjo().zzg("Fetching remote configuration", zzgVar.zzal());
            zzge zzgeVarZzci = zzls().zzci(zzgVar.zzal());
            String strZzcj = zzls().zzcj(zzgVar.zzal());
            if (zzgeVarZzci == null || TextUtils.isEmpty(strZzcj)) {
                arrayMap = null;
            } else {
                ArrayMap arrayMap2 = new ArrayMap();
                arrayMap2.put("If-Modified-Since", strZzcj);
                arrayMap = arrayMap2;
            }
            this.zzaui = true;
            zzau zzauVarZzlt = zzlt();
            String strZzal = zzgVar.zzal();
            zzfn zzfnVar = new zzfn(this);
            zzauVarZzlt.zzaf();
            zzauVarZzlt.zzcl();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzfnVar);
            zzauVarZzlt.zzgs().zzd(new zzay(zzauVarZzlt, strZzal, url, null, arrayMap, zzfnVar));
        } catch (MalformedURLException e) {
            this.zzadp.zzgt().zzjg().zze("Failed to parse config URL. Not fetching. appId", zzaq.zzby(zzgVar.zzal()), string);
        }
    }

    @WorkerThread
    @VisibleForTesting
    final void zzb(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        String str2;
        zzaf();
        zzlx();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzaui = false;
                zzmc();
                throw th2;
            }
        }
        this.zzadp.zzgt().zzjo().zzg("onConfigFetched. Response size", Integer.valueOf(bArr.length));
        zzjt().beginTransaction();
        try {
            zzg zzgVarZzbo = zzjt().zzbo(str);
            boolean z = true;
            boolean z2 = (i == 200 || i == 204 || i == 304) && th == null;
            if (zzgVarZzbo == null) {
                this.zzadp.zzgt().zzjj().zzg("App does not exist in onConfigFetched. appId", zzaq.zzby(str));
            } else if (z2 || i == 404) {
                List<String> list = map != null ? map.get(HttpRequest.HEADER_LAST_MODIFIED) : null;
                if (list != null && list.size() > 0) {
                    str2 = list.get(0);
                } else {
                    str2 = null;
                }
                if (i == 404 || i == 304) {
                    if (zzls().zzci(str) == null && !zzls().zza(str, null, null)) {
                        this.zzaui = false;
                        zzmc();
                        return;
                    }
                } else if (!zzls().zza(str, bArr, str2)) {
                    this.zzaui = false;
                    zzmc();
                    return;
                }
                zzgVarZzbo.zzy(this.zzadp.zzbx().currentTimeMillis());
                zzjt().zza(zzgVarZzbo);
                if (i == 404) {
                    this.zzadp.zzgt().zzjl().zzg("Config not found. Using empty config. appId", str);
                } else {
                    this.zzadp.zzgt().zzjo().zze("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (zzlt().zzfb() && zzma()) {
                    zzlz();
                } else {
                    zzmb();
                }
            } else {
                zzgVarZzbo.zzz(this.zzadp.zzbx().currentTimeMillis());
                zzjt().zza(zzgVarZzbo);
                this.zzadp.zzgt().zzjo().zze("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzls().zzck(str);
                this.zzadp.zzgu().zzanm.set(this.zzadp.zzbx().currentTimeMillis());
                if (i != 503 && i != 429) {
                    z = false;
                }
                if (z) {
                    this.zzadp.zzgu().zzann.set(this.zzadp.zzbx().currentTimeMillis());
                }
                zzmb();
            }
            zzjt().setTransactionSuccessful();
            this.zzaui = false;
            zzmc();
        } finally {
            zzjt().endTransaction();
        }
    }

    @WorkerThread
    private final void zzmb() {
        long jMax;
        long jMax2;
        zzaf();
        zzlx();
        if (!zzmf() && !this.zzadp.zzgv().zza(zzag.zzalp)) {
            return;
        }
        if (this.zzaue > 0) {
            long jAbs = 3600000 - Math.abs(this.zzadp.zzbx().elapsedRealtime() - this.zzaue);
            if (jAbs > 0) {
                this.zzadp.zzgt().zzjo().zzg("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzlu().unregister();
                zzlv().cancel();
                return;
            }
            this.zzaue = 0L;
        }
        if (!this.zzadp.zzkv() || !zzma()) {
            this.zzadp.zzgt().zzjo().zzca("Nothing to upload or uploading impossible");
            zzlu().unregister();
            zzlv().cancel();
            return;
        }
        long jCurrentTimeMillis = this.zzadp.zzbx().currentTimeMillis();
        long jMax3 = Math.max(0L, zzag.zzakg.get().longValue());
        boolean z = zzjt().zzin() || zzjt().zzii();
        if (z) {
            String strZzid = this.zzadp.zzgv().zzid();
            if (!TextUtils.isEmpty(strZzid) && !".none.".equals(strZzid)) {
                jMax = Math.max(0L, zzag.zzakb.get().longValue());
            } else {
                jMax = Math.max(0L, zzag.zzaka.get().longValue());
            }
        } else {
            jMax = Math.max(0L, zzag.zzajz.get().longValue());
        }
        long j = this.zzadp.zzgu().zzanl.get();
        long j2 = this.zzadp.zzgu().zzanm.get();
        long j3 = jMax;
        long jMax4 = Math.max(zzjt().zzik(), zzjt().zzil());
        if (jMax4 != 0) {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = jCurrentTimeMillis - Math.abs(j - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(j2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jAbs3, jAbs4);
            jMax2 = jMax3 + jAbs2;
            if (z && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + j3;
            }
            if (!zzjr().zzb(jMax5, j3)) {
                jMax2 = jMax5 + j3;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                for (int i = 0; i < Math.min(20, Math.max(0, zzag.zzaki.get().intValue())); i++) {
                    jMax2 += Math.max(0L, zzag.zzakh.get().longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    }
                }
                jMax2 = 0;
            }
        } else {
            jMax2 = 0;
        }
        if (jMax2 == 0) {
            this.zzadp.zzgt().zzjo().zzca("Next upload time is 0");
            zzlu().unregister();
            zzlv().cancel();
            return;
        }
        if (!zzlt().zzfb()) {
            this.zzadp.zzgt().zzjo().zzca("No network");
            zzlu().zzey();
            zzlv().cancel();
            return;
        }
        long j4 = this.zzadp.zzgu().zzann.get();
        long jMax6 = Math.max(0L, zzag.zzajx.get().longValue());
        if (!zzjr().zzb(j4, jMax6)) {
            jMax2 = Math.max(jMax2, j4 + jMax6);
        }
        zzlu().unregister();
        long jCurrentTimeMillis2 = jMax2 - this.zzadp.zzbx().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            jCurrentTimeMillis2 = Math.max(0L, zzag.zzakc.get().longValue());
            this.zzadp.zzgu().zzanl.set(this.zzadp.zzbx().currentTimeMillis());
        }
        this.zzadp.zzgt().zzjo().zzg("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzlv().zzh(jCurrentTimeMillis2);
    }

    @WorkerThread
    final void zzg(Runnable runnable) {
        zzaf();
        if (this.zzauf == null) {
            this.zzauf = new ArrayList();
        }
        this.zzauf.add(runnable);
    }

    @WorkerThread
    private final void zzmc() {
        zzaf();
        if (this.zzaui || this.zzauj || this.zzauk) {
            this.zzadp.zzgt().zzjo().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzaui), Boolean.valueOf(this.zzauj), Boolean.valueOf(this.zzauk));
            return;
        }
        this.zzadp.zzgt().zzjo().zzca("Stopping uploading service(s)");
        if (this.zzauf == null) {
            return;
        }
        Iterator<Runnable> it = this.zzauf.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        this.zzauf.clear();
    }

    @WorkerThread
    private final Boolean zzc(zzg zzgVar) {
        try {
            if (zzgVar.zzhf() != -2147483648L) {
                if (zzgVar.zzhf() == Wrappers.packageManager(this.zzadp.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzadp.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionName;
                if (zzgVar.zzak() != null && zzgVar.zzak().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final boolean zzmd() {
        zzaf();
        try {
            this.zzaum = new RandomAccessFile(new File(this.zzadp.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzaul = this.zzaum.tryLock();
            if (this.zzaul != null) {
                this.zzadp.zzgt().zzjo().zzca("Storage concurrent access okay");
                return true;
            }
            this.zzadp.zzgt().zzjg().zzca("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.zzadp.zzgt().zzjg().zzg("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.zzadp.zzgt().zzjg().zzg("Failed to access storage lock file", e2);
            return false;
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final int zza(FileChannel fileChannel) {
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadp.zzgt().zzjg().zzca("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i = fileChannel.read(byteBufferAllocate);
            if (i != 4) {
                if (i != -1) {
                    this.zzadp.zzgt().zzjj().zzg("Unexpected data length. Bytes read", Integer.valueOf(i));
                }
                return 0;
            }
            byteBufferAllocate.flip();
            return byteBufferAllocate.getInt();
        } catch (IOException e) {
            this.zzadp.zzgt().zzjg().zzg("Failed to read from channel", e);
            return 0;
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final boolean zza(int i, FileChannel fileChannel) {
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadp.zzgt().zzjg().zzca("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.zzadp.zzgt().zzjg().zzg("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            this.zzadp.zzgt().zzjg().zzg("Failed to write to channel", e);
            return false;
        }
    }

    @WorkerThread
    final void zzme() {
        zzaf();
        zzlx();
        if (!this.zzaud) {
            this.zzaud = true;
            zzaf();
            zzlx();
            if ((this.zzadp.zzgv().zza(zzag.zzalp) || zzmf()) && zzmd()) {
                int iZza = zza(this.zzaum);
                int iZzjd = this.zzadp.zzgk().zzjd();
                zzaf();
                if (iZza > iZzjd) {
                    this.zzadp.zzgt().zzjg().zze("Panic: can't downgrade version. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzjd));
                } else if (iZza < iZzjd) {
                    if (zza(iZzjd, this.zzaum)) {
                        this.zzadp.zzgt().zzjo().zze("Storage version upgraded. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzjd));
                    } else {
                        this.zzadp.zzgt().zzjg().zze("Storage version upgrade failed. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzjd));
                    }
                }
            }
        }
        if (!this.zzauc && !this.zzadp.zzgv().zza(zzag.zzalp)) {
            this.zzadp.zzgt().zzjm().zzca("This instance being marked as an uploader");
            this.zzauc = true;
            zzmb();
        }
    }

    @WorkerThread
    private final boolean zzmf() {
        zzaf();
        zzlx();
        return this.zzauc;
    }

    @WorkerThread
    @VisibleForTesting
    final void zzd(zzi zziVar) {
        if (this.zzaun != null) {
            this.zzauo = new ArrayList();
            this.zzauo.addAll(this.zzaun);
        }
        zzr zzrVarZzjt = zzjt();
        String str = zziVar.packageName;
        Preconditions.checkNotEmpty(str);
        zzrVarZzjt.zzaf();
        zzrVarZzjt.zzcl();
        try {
            SQLiteDatabase writableDatabase = zzrVarZzjt.getWritableDatabase();
            String[] strArr = {str};
            int iDelete = writableDatabase.delete("apps", "app_id=?", strArr) + 0 + writableDatabase.delete(EventStoreHelper.TABLE_EVENTS, "app_id=?", strArr) + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("queue", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr) + writableDatabase.delete("main_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzrVarZzjt.zzgt().zzjo().zze("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzrVarZzjt.zzgt().zzjg().zze("Error resetting analytics data. appId, error", zzaq.zzby(str), e);
        }
        zzi zziVarZza = zza(this.zzadp.getContext(), zziVar.packageName, zziVar.zzafx, zziVar.zzagg, zziVar.zzagi, zziVar.zzagj, zziVar.zzaha, zziVar.zzagk);
        if (!this.zzadp.zzgv().zzbc(zziVar.packageName) || zziVar.zzagg) {
            zzf(zziVarZza);
        }
    }

    private final zzi zza(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3) {
        String installerPackageName;
        int i;
        String str4;
        long j2;
        String string = "Unknown";
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.zzadp.zzgt().zzjg().zzca("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException e) {
            this.zzadp.zzgt().zzjg().zzg("Error retrieving installer package name. appId", zzaq.zzby(str));
            installerPackageName = "Unknown";
        }
        if (installerPackageName == null) {
            installerPackageName = "manual_install";
        } else if ("com.android.vending".equals(installerPackageName)) {
            installerPackageName = "";
        }
        String str5 = installerPackageName;
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                if (!TextUtils.isEmpty(applicationLabel)) {
                    string = applicationLabel.toString();
                }
                String str6 = packageInfo.versionName;
                i = packageInfo.versionCode;
                str4 = str6;
            } else {
                i = Integer.MIN_VALUE;
                str4 = "Unknown";
            }
            this.zzadp.zzgw();
            if (!this.zzadp.zzgv().zzbe(str)) {
                j2 = 0;
            } else {
                j2 = j;
            }
            return new zzi(str, str2, str4, i, str5, this.zzadp.zzgv().zzhh(), this.zzadp.zzgr().zzd(context, str), (String) null, z, false, "", 0L, j2, 0, z2, z3, false, str3);
        } catch (PackageManager.NameNotFoundException e2) {
            this.zzadp.zzgt().zzjg().zze("Error retrieving newly installed package info. appId, appName", zzaq.zzby(str), string);
            return null;
        }
    }

    @WorkerThread
    final void zzb(zzfr zzfrVar, zzi zziVar) {
        zzaf();
        zzlx();
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            return;
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        int iZzcx = this.zzadp.zzgr().zzcx(zzfrVar.name);
        if (iZzcx != 0) {
            this.zzadp.zzgr();
            this.zzadp.zzgr().zza(zziVar.packageName, iZzcx, "_ev", zzfu.zza(zzfrVar.name, 24, true), zzfrVar.name != null ? zzfrVar.name.length() : 0);
            return;
        }
        int iZzi = this.zzadp.zzgr().zzi(zzfrVar.name, zzfrVar.getValue());
        if (iZzi != 0) {
            this.zzadp.zzgr();
            String strZza = zzfu.zza(zzfrVar.name, 24, true);
            Object value = zzfrVar.getValue();
            this.zzadp.zzgr().zza(zziVar.packageName, iZzi, "_ev", strZza, (value == null || !((value instanceof String) || (value instanceof CharSequence))) ? 0 : String.valueOf(value).length());
            return;
        }
        Object objZzj = this.zzadp.zzgr().zzj(zzfrVar.name, zzfrVar.getValue());
        if (objZzj == null) {
            return;
        }
        if (this.zzadp.zzgv().zzbj(zziVar.packageName) && "_sno".equals(zzfrVar.name)) {
            long jLongValue = 0;
            zzft zzftVarZzi = zzjt().zzi(zziVar.packageName, "_sno");
            if (zzftVarZzi != null && (zzftVarZzi.value instanceof Long)) {
                jLongValue = ((Long) zzftVarZzi.value).longValue();
            } else {
                zzaa zzaaVarZzg = zzjt().zzg(zziVar.packageName, "_s");
                if (zzaaVarZzg != null) {
                    jLongValue = zzaaVarZzg.zzaih;
                    this.zzadp.zzgt().zzjo().zzg("Backfill the session number. Last used session number", Long.valueOf(jLongValue));
                }
            }
            objZzj = Long.valueOf(jLongValue + 1);
        }
        zzft zzftVar = new zzft(zziVar.packageName, zzfrVar.origin, zzfrVar.name, zzfrVar.zzaux, objZzj);
        this.zzadp.zzgt().zzjn().zze("Setting user property", this.zzadp.zzgq().zzbx(zzftVar.name), objZzj);
        zzjt().beginTransaction();
        try {
            zzg(zziVar);
            boolean zZza = zzjt().zza(zzftVar);
            zzjt().setTransactionSuccessful();
            if (zZza) {
                this.zzadp.zzgt().zzjn().zze("User property set", this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
            } else {
                this.zzadp.zzgt().zzjg().zze("Too many unique user properties are set. Ignoring user property", this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
                this.zzadp.zzgr().zza(zziVar.packageName, 9, (String) null, (String) null, 0);
            }
        } finally {
            zzjt().endTransaction();
        }
    }

    @WorkerThread
    final void zzc(zzfr zzfrVar, zzi zziVar) {
        zzaf();
        zzlx();
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            return;
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        this.zzadp.zzgt().zzjn().zzg("Removing user property", this.zzadp.zzgq().zzbx(zzfrVar.name));
        zzjt().beginTransaction();
        try {
            zzg(zziVar);
            zzjt().zzh(zziVar.packageName, zzfrVar.name);
            zzjt().setTransactionSuccessful();
            this.zzadp.zzgt().zzjn().zzg("User property removed", this.zzadp.zzgq().zzbx(zzfrVar.name));
        } finally {
            zzjt().endTransaction();
        }
    }

    final void zzb(zzfj zzfjVar) {
        this.zzaug++;
    }

    final void zzmg() {
        this.zzauh++;
    }

    final zzbu zzmh() {
        return this.zzadp;
    }

    @WorkerThread
    final void zzf(zzi zziVar) {
        int i;
        zzaa zzaaVarZzg;
        long j;
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        boolean z;
        zzaf();
        zzlx();
        Preconditions.checkNotNull(zziVar);
        Preconditions.checkNotEmpty(zziVar.packageName);
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            return;
        }
        zzg zzgVarZzbo = zzjt().zzbo(zziVar.packageName);
        if (zzgVarZzbo != null && TextUtils.isEmpty(zzgVarZzbo.getGmpAppId()) && !TextUtils.isEmpty(zziVar.zzafx)) {
            zzgVarZzbo.zzy(0L);
            zzjt().zza(zzgVarZzbo);
            zzls().zzcl(zziVar.packageName);
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        long jCurrentTimeMillis = zziVar.zzaha;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = this.zzadp.zzbx().currentTimeMillis();
        }
        int i2 = zziVar.zzahb;
        if (i2 == 0 || i2 == 1) {
            i = i2;
        } else {
            this.zzadp.zzgt().zzjj().zze("Incorrect app type, assuming installed app. appId, appType", zzaq.zzby(zziVar.packageName), Integer.valueOf(i2));
            i = 0;
        }
        zzjt().beginTransaction();
        try {
            zzg zzgVarZzbo2 = zzjt().zzbo(zziVar.packageName);
            if (zzgVarZzbo2 != null) {
                this.zzadp.zzgr();
                if (zzfu.zza(zziVar.zzafx, zzgVarZzbo2.getGmpAppId(), zziVar.zzagk, zzgVarZzbo2.zzhb())) {
                    this.zzadp.zzgt().zzjj().zzg("New GMP App Id passed in. Removing cached database data. appId", zzaq.zzby(zzgVarZzbo2.zzal()));
                    zzr zzrVarZzjt = zzjt();
                    String strZzal = zzgVarZzbo2.zzal();
                    zzrVarZzjt.zzcl();
                    zzrVarZzjt.zzaf();
                    Preconditions.checkNotEmpty(strZzal);
                    try {
                        SQLiteDatabase writableDatabase = zzrVarZzjt.getWritableDatabase();
                        String[] strArr = {strZzal};
                        int iDelete = writableDatabase.delete(EventStoreHelper.TABLE_EVENTS, "app_id=?", strArr) + 0 + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("apps", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("event_filters", "app_id=?", strArr) + writableDatabase.delete("property_filters", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr);
                        if (iDelete > 0) {
                            zzrVarZzjt.zzgt().zzjo().zze("Deleted application data. app, records", strZzal, Integer.valueOf(iDelete));
                        }
                    } catch (SQLiteException e) {
                        zzrVarZzjt.zzgt().zzjg().zze("Error deleting application data. appId, error", zzaq.zzby(strZzal), e);
                    }
                    zzgVarZzbo2 = null;
                }
            }
            if (zzgVarZzbo2 != null) {
                if (zzgVarZzbo2.zzhf() != -2147483648L) {
                    if (zzgVarZzbo2.zzhf() != zziVar.zzagd) {
                        Bundle bundle = new Bundle();
                        bundle.putString("_pv", zzgVarZzbo2.zzak());
                        zzc(new zzae("_au", new zzab(bundle), "auto", jCurrentTimeMillis), zziVar);
                    }
                } else if (zzgVarZzbo2.zzak() != null && !zzgVarZzbo2.zzak().equals(zziVar.zzts)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_pv", zzgVarZzbo2.zzak());
                    zzc(new zzae("_au", new zzab(bundle2), "auto", jCurrentTimeMillis), zziVar);
                }
            }
            zzg(zziVar);
            if (i == 0) {
                zzaaVarZzg = zzjt().zzg(zziVar.packageName, "_f");
            } else if (i == 1) {
                zzaaVarZzg = zzjt().zzg(zziVar.packageName, "_v");
            } else {
                zzaaVarZzg = null;
            }
            if (zzaaVarZzg == null) {
                long j2 = ((jCurrentTimeMillis / 3600000) + 1) * 3600000;
                if (i == 0) {
                    j = 1;
                    zzb(new zzfr("_fot", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zziVar);
                    if (this.zzadp.zzgv().zzbg(zziVar.zzafx)) {
                        zzaf();
                        this.zzadp.zzkk().zzcg(zziVar.packageName);
                    }
                    zzaf();
                    zzlx();
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("_c", 1L);
                    bundle3.putLong("_r", 1L);
                    bundle3.putLong("_uwa", 0L);
                    bundle3.putLong("_pfo", 0L);
                    bundle3.putLong("_sys", 0L);
                    bundle3.putLong("_sysu", 0L);
                    if (this.zzadp.zzgv().zzbm(zziVar.packageName)) {
                        bundle3.putLong("_et", 1L);
                    }
                    if (this.zzadp.zzgv().zzbc(zziVar.packageName) && zziVar.zzahc) {
                        bundle3.putLong("_dac", 1L);
                    }
                    if (this.zzadp.getContext().getPackageManager() == null) {
                        this.zzadp.zzgt().zzjg().zzg("PackageManager is null, first open report might be inaccurate. appId", zzaq.zzby(zziVar.packageName));
                    } else {
                        try {
                            packageInfo = Wrappers.packageManager(this.zzadp.getContext()).getPackageInfo(zziVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e2) {
                            this.zzadp.zzgt().zzjg().zze("Package info is null, first open report might be inaccurate. appId", zzaq.zzby(zziVar.packageName), e2);
                            packageInfo = null;
                        }
                        if (packageInfo != null && packageInfo.firstInstallTime != 0) {
                            if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                bundle3.putLong("_uwa", 1L);
                                z = false;
                            } else {
                                z = true;
                            }
                            zzb(new zzfr("_fi", jCurrentTimeMillis, Long.valueOf(z ? 1L : 0L), "auto"), zziVar);
                        }
                        try {
                            applicationInfo = Wrappers.packageManager(this.zzadp.getContext()).getApplicationInfo(zziVar.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e3) {
                            this.zzadp.zzgt().zzjg().zze("Application info is null, first open report might be inaccurate. appId", zzaq.zzby(zziVar.packageName), e3);
                            applicationInfo = null;
                        }
                        if (applicationInfo != null) {
                            if ((applicationInfo.flags & 1) != 0) {
                                bundle3.putLong("_sys", 1L);
                            }
                            if ((applicationInfo.flags & 128) != 0) {
                                bundle3.putLong("_sysu", 1L);
                            }
                        }
                    }
                    zzr zzrVarZzjt2 = zzjt();
                    String str = zziVar.packageName;
                    Preconditions.checkNotEmpty(str);
                    zzrVarZzjt2.zzaf();
                    zzrVarZzjt2.zzcl();
                    long jZzn = zzrVarZzjt2.zzn(str, "first_open_count");
                    if (jZzn >= 0) {
                        bundle3.putLong("_pfo", jZzn);
                    }
                    zzc(new zzae("_f", new zzab(bundle3), "auto", jCurrentTimeMillis), zziVar);
                } else {
                    j = 1;
                    if (i == 1) {
                        zzb(new zzfr("_fvt", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zziVar);
                        zzaf();
                        zzlx();
                        Bundle bundle4 = new Bundle();
                        bundle4.putLong("_c", 1L);
                        bundle4.putLong("_r", 1L);
                        if (this.zzadp.zzgv().zzbm(zziVar.packageName)) {
                            bundle4.putLong("_et", 1L);
                        }
                        if (this.zzadp.zzgv().zzbc(zziVar.packageName) && zziVar.zzahc) {
                            bundle4.putLong("_dac", 1L);
                        }
                        zzc(new zzae("_v", new zzab(bundle4), "auto", jCurrentTimeMillis), zziVar);
                    }
                }
                if (!this.zzadp.zzgv().zze(zziVar.packageName, zzag.zzalm)) {
                    Bundle bundle5 = new Bundle();
                    bundle5.putLong("_et", j);
                    if (this.zzadp.zzgv().zzbm(zziVar.packageName)) {
                        bundle5.putLong("_fr", j);
                    }
                    zzc(new zzae("_e", new zzab(bundle5), "auto", jCurrentTimeMillis), zziVar);
                }
            } else if (zziVar.zzagz) {
                zzc(new zzae("_cd", new zzab(new Bundle()), "auto", jCurrentTimeMillis), zziVar);
            }
            zzjt().setTransactionSuccessful();
        } finally {
            zzjt().endTransaction();
        }
    }

    @WorkerThread
    private final zzi zzct(String str) {
        zzg zzgVarZzbo = zzjt().zzbo(str);
        if (zzgVarZzbo == null || TextUtils.isEmpty(zzgVarZzbo.zzak())) {
            this.zzadp.zzgt().zzjn().zzg("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzc = zzc(zzgVarZzbo);
        if (boolZzc != null && !boolZzc.booleanValue()) {
            this.zzadp.zzgt().zzjg().zzg("App version does not match; dropping. appId", zzaq.zzby(str));
            return null;
        }
        return new zzi(str, zzgVarZzbo.getGmpAppId(), zzgVarZzbo.zzak(), zzgVarZzbo.zzhf(), zzgVarZzbo.zzhg(), zzgVarZzbo.zzhh(), zzgVarZzbo.zzhi(), (String) null, zzgVarZzbo.isMeasurementEnabled(), false, zzgVarZzbo.getFirebaseInstanceId(), zzgVarZzbo.zzhv(), 0L, 0, zzgVarZzbo.zzhw(), zzgVarZzbo.zzhx(), false, zzgVarZzbo.zzhb());
    }

    @WorkerThread
    final void zze(zzm zzmVar) {
        zzi zziVarZzct = zzct(zzmVar.packageName);
        if (zziVarZzct != null) {
            zzb(zzmVar, zziVarZzct);
        }
    }

    @WorkerThread
    final void zzb(zzm zzmVar, zzi zziVar) {
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.packageName);
        Preconditions.checkNotNull(zzmVar.origin);
        Preconditions.checkNotNull(zzmVar.zzahe);
        Preconditions.checkNotEmpty(zzmVar.zzahe.name);
        zzaf();
        zzlx();
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            return;
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        zzm zzmVar2 = new zzm(zzmVar);
        boolean z = false;
        zzmVar2.active = false;
        zzjt().beginTransaction();
        try {
            zzm zzmVarZzj = zzjt().zzj(zzmVar2.packageName, zzmVar2.zzahe.name);
            if (zzmVarZzj != null && !zzmVarZzj.origin.equals(zzmVar2.origin)) {
                this.zzadp.zzgt().zzjj().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzadp.zzgq().zzbx(zzmVar2.zzahe.name), zzmVar2.origin, zzmVarZzj.origin);
            }
            if (zzmVarZzj != null && zzmVarZzj.active) {
                zzmVar2.origin = zzmVarZzj.origin;
                zzmVar2.creationTimestamp = zzmVarZzj.creationTimestamp;
                zzmVar2.triggerTimeout = zzmVarZzj.triggerTimeout;
                zzmVar2.triggerEventName = zzmVarZzj.triggerEventName;
                zzmVar2.zzahg = zzmVarZzj.zzahg;
                zzmVar2.active = zzmVarZzj.active;
                zzmVar2.zzahe = new zzfr(zzmVar2.zzahe.name, zzmVarZzj.zzahe.zzaux, zzmVar2.zzahe.getValue(), zzmVarZzj.zzahe.origin);
            } else if (TextUtils.isEmpty(zzmVar2.triggerEventName)) {
                zzmVar2.zzahe = new zzfr(zzmVar2.zzahe.name, zzmVar2.creationTimestamp, zzmVar2.zzahe.getValue(), zzmVar2.zzahe.origin);
                zzmVar2.active = true;
                z = true;
            }
            if (zzmVar2.active) {
                zzfr zzfrVar = zzmVar2.zzahe;
                zzft zzftVar = new zzft(zzmVar2.packageName, zzmVar2.origin, zzfrVar.name, zzfrVar.zzaux, zzfrVar.getValue());
                if (zzjt().zza(zzftVar)) {
                    this.zzadp.zzgt().zzjn().zzd("User property updated immediately", zzmVar2.packageName, this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
                } else {
                    this.zzadp.zzgt().zzjg().zzd("(2)Too many active user properties, ignoring", zzaq.zzby(zzmVar2.packageName), this.zzadp.zzgq().zzbx(zzftVar.name), zzftVar.value);
                }
                if (z && zzmVar2.zzahg != null) {
                    zzd(new zzae(zzmVar2.zzahg, zzmVar2.creationTimestamp), zziVar);
                }
            }
            if (zzjt().zza(zzmVar2)) {
                this.zzadp.zzgt().zzjn().zzd("Conditional property added", zzmVar2.packageName, this.zzadp.zzgq().zzbx(zzmVar2.zzahe.name), zzmVar2.zzahe.getValue());
            } else {
                this.zzadp.zzgt().zzjg().zzd("Too many conditional properties, ignoring", zzaq.zzby(zzmVar2.packageName), this.zzadp.zzgq().zzbx(zzmVar2.zzahe.name), zzmVar2.zzahe.getValue());
            }
            zzjt().setTransactionSuccessful();
        } finally {
            zzjt().endTransaction();
        }
    }

    @WorkerThread
    final void zzf(zzm zzmVar) {
        zzi zziVarZzct = zzct(zzmVar.packageName);
        if (zziVarZzct != null) {
            zzc(zzmVar, zziVarZzct);
        }
    }

    @WorkerThread
    final void zzc(zzm zzmVar, zzi zziVar) {
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.packageName);
        Preconditions.checkNotNull(zzmVar.zzahe);
        Preconditions.checkNotEmpty(zzmVar.zzahe.name);
        zzaf();
        zzlx();
        if (TextUtils.isEmpty(zziVar.zzafx) && TextUtils.isEmpty(zziVar.zzagk)) {
            return;
        }
        if (!zziVar.zzagg) {
            zzg(zziVar);
            return;
        }
        zzjt().beginTransaction();
        try {
            zzg(zziVar);
            zzm zzmVarZzj = zzjt().zzj(zzmVar.packageName, zzmVar.zzahe.name);
            if (zzmVarZzj != null) {
                this.zzadp.zzgt().zzjn().zze("Removing conditional user property", zzmVar.packageName, this.zzadp.zzgq().zzbx(zzmVar.zzahe.name));
                zzjt().zzk(zzmVar.packageName, zzmVar.zzahe.name);
                if (zzmVarZzj.active) {
                    zzjt().zzh(zzmVar.packageName, zzmVar.zzahe.name);
                }
                if (zzmVar.zzahh != null) {
                    Bundle bundleZziy = null;
                    if (zzmVar.zzahh.zzaig != null) {
                        bundleZziy = zzmVar.zzahh.zzaig.zziy();
                    }
                    zzd(this.zzadp.zzgr().zza(zzmVar.packageName, zzmVar.zzahh.name, bundleZziy, zzmVarZzj.origin, zzmVar.zzahh.zzais, true, false), zziVar);
                }
            } else {
                this.zzadp.zzgt().zzjj().zze("Conditional user property doesn't exist", zzaq.zzby(zzmVar.packageName), this.zzadp.zzgq().zzbx(zzmVar.zzahe.name));
            }
            zzjt().setTransactionSuccessful();
        } finally {
            zzjt().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016c  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzg zzg(com.google.android.gms.measurement.internal.zzi r9) {
        /*
            Method dump skipped, instruction units count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfk.zzg(com.google.android.gms.measurement.internal.zzi):com.google.android.gms.measurement.internal.zzg");
    }

    final String zzh(zzi zziVar) {
        try {
            return (String) this.zzadp.zzgs().zzb(new zzfo(this, zziVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzadp.zzgt().zzjg().zze("Failed to get app instance id. appId", zzaq.zzby(zziVar.packageName), e);
            return null;
        }
    }

    final void zzm(boolean z) {
        zzmb();
    }
}

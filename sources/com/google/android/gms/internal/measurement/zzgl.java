package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzft;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgl extends zzzl<zzgl> {
    private static volatile zzgl[] zzaxs;
    public Integer zzaxt = null;
    public zzgi[] zzaxu = zzgi.zzmz();
    public zzgo[] zzaxv = zzgo.zznd();
    public Long zzaxw = null;
    public Long zzaxx = null;
    public Long zzaxy = null;
    public Long zzaxz = null;
    public Long zzaya = null;
    public String zzayb = null;
    public String zzayc = null;
    public String zzayd = null;
    public String zzaid = null;
    public Integer zzaye = null;
    public String zzage = null;
    public String zztt = null;
    public String zzts = null;
    public Long zzayf = null;
    public Long zzayg = null;
    public String zzayh = null;
    public Boolean zzayi = null;
    public String zzafw = null;
    public Long zzayj = null;
    public Integer zzayk = null;
    public String zzagy = null;
    public String zzafx = null;
    public Boolean zzayl = null;
    public zzgg[] zzaym = zzgg.zzmx();
    public String zzafz = null;
    public Integer zzayn = null;
    private Integer zzayo = null;
    private Integer zzayp = null;
    public String zzayq = null;
    public Long zzayr = null;
    public Long zzays = null;
    public String zzayt = null;
    private String zzayu = null;
    public Integer zzayv = null;
    public String zzaxc = null;
    public zzft.zzb zzayw = null;
    public int[] zzayx = zzzu.zzcbs;
    private Long zzayy = null;

    public static zzgl[] zznb() {
        if (zzaxs == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxs == null) {
                    zzaxs = new zzgl[0];
                }
            }
        }
        return zzaxs;
    }

    public zzgl() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgl)) {
            return false;
        }
        zzgl zzglVar = (zzgl) obj;
        if (this.zzaxt == null) {
            if (zzglVar.zzaxt != null) {
                return false;
            }
        } else if (!this.zzaxt.equals(zzglVar.zzaxt)) {
            return false;
        }
        if (!zzzp.equals(this.zzaxu, zzglVar.zzaxu) || !zzzp.equals(this.zzaxv, zzglVar.zzaxv)) {
            return false;
        }
        if (this.zzaxw == null) {
            if (zzglVar.zzaxw != null) {
                return false;
            }
        } else if (!this.zzaxw.equals(zzglVar.zzaxw)) {
            return false;
        }
        if (this.zzaxx == null) {
            if (zzglVar.zzaxx != null) {
                return false;
            }
        } else if (!this.zzaxx.equals(zzglVar.zzaxx)) {
            return false;
        }
        if (this.zzaxy == null) {
            if (zzglVar.zzaxy != null) {
                return false;
            }
        } else if (!this.zzaxy.equals(zzglVar.zzaxy)) {
            return false;
        }
        if (this.zzaxz == null) {
            if (zzglVar.zzaxz != null) {
                return false;
            }
        } else if (!this.zzaxz.equals(zzglVar.zzaxz)) {
            return false;
        }
        if (this.zzaya == null) {
            if (zzglVar.zzaya != null) {
                return false;
            }
        } else if (!this.zzaya.equals(zzglVar.zzaya)) {
            return false;
        }
        if (this.zzayb == null) {
            if (zzglVar.zzayb != null) {
                return false;
            }
        } else if (!this.zzayb.equals(zzglVar.zzayb)) {
            return false;
        }
        if (this.zzayc == null) {
            if (zzglVar.zzayc != null) {
                return false;
            }
        } else if (!this.zzayc.equals(zzglVar.zzayc)) {
            return false;
        }
        if (this.zzayd == null) {
            if (zzglVar.zzayd != null) {
                return false;
            }
        } else if (!this.zzayd.equals(zzglVar.zzayd)) {
            return false;
        }
        if (this.zzaid == null) {
            if (zzglVar.zzaid != null) {
                return false;
            }
        } else if (!this.zzaid.equals(zzglVar.zzaid)) {
            return false;
        }
        if (this.zzaye == null) {
            if (zzglVar.zzaye != null) {
                return false;
            }
        } else if (!this.zzaye.equals(zzglVar.zzaye)) {
            return false;
        }
        if (this.zzage == null) {
            if (zzglVar.zzage != null) {
                return false;
            }
        } else if (!this.zzage.equals(zzglVar.zzage)) {
            return false;
        }
        if (this.zztt == null) {
            if (zzglVar.zztt != null) {
                return false;
            }
        } else if (!this.zztt.equals(zzglVar.zztt)) {
            return false;
        }
        if (this.zzts == null) {
            if (zzglVar.zzts != null) {
                return false;
            }
        } else if (!this.zzts.equals(zzglVar.zzts)) {
            return false;
        }
        if (this.zzayf == null) {
            if (zzglVar.zzayf != null) {
                return false;
            }
        } else if (!this.zzayf.equals(zzglVar.zzayf)) {
            return false;
        }
        if (this.zzayg == null) {
            if (zzglVar.zzayg != null) {
                return false;
            }
        } else if (!this.zzayg.equals(zzglVar.zzayg)) {
            return false;
        }
        if (this.zzayh == null) {
            if (zzglVar.zzayh != null) {
                return false;
            }
        } else if (!this.zzayh.equals(zzglVar.zzayh)) {
            return false;
        }
        if (this.zzayi == null) {
            if (zzglVar.zzayi != null) {
                return false;
            }
        } else if (!this.zzayi.equals(zzglVar.zzayi)) {
            return false;
        }
        if (this.zzafw == null) {
            if (zzglVar.zzafw != null) {
                return false;
            }
        } else if (!this.zzafw.equals(zzglVar.zzafw)) {
            return false;
        }
        if (this.zzayj == null) {
            if (zzglVar.zzayj != null) {
                return false;
            }
        } else if (!this.zzayj.equals(zzglVar.zzayj)) {
            return false;
        }
        if (this.zzayk == null) {
            if (zzglVar.zzayk != null) {
                return false;
            }
        } else if (!this.zzayk.equals(zzglVar.zzayk)) {
            return false;
        }
        if (this.zzagy == null) {
            if (zzglVar.zzagy != null) {
                return false;
            }
        } else if (!this.zzagy.equals(zzglVar.zzagy)) {
            return false;
        }
        if (this.zzafx == null) {
            if (zzglVar.zzafx != null) {
                return false;
            }
        } else if (!this.zzafx.equals(zzglVar.zzafx)) {
            return false;
        }
        if (this.zzayl == null) {
            if (zzglVar.zzayl != null) {
                return false;
            }
        } else if (!this.zzayl.equals(zzglVar.zzayl)) {
            return false;
        }
        if (!zzzp.equals(this.zzaym, zzglVar.zzaym)) {
            return false;
        }
        if (this.zzafz == null) {
            if (zzglVar.zzafz != null) {
                return false;
            }
        } else if (!this.zzafz.equals(zzglVar.zzafz)) {
            return false;
        }
        if (this.zzayn == null) {
            if (zzglVar.zzayn != null) {
                return false;
            }
        } else if (!this.zzayn.equals(zzglVar.zzayn)) {
            return false;
        }
        if (this.zzayo == null) {
            if (zzglVar.zzayo != null) {
                return false;
            }
        } else if (!this.zzayo.equals(zzglVar.zzayo)) {
            return false;
        }
        if (this.zzayp == null) {
            if (zzglVar.zzayp != null) {
                return false;
            }
        } else if (!this.zzayp.equals(zzglVar.zzayp)) {
            return false;
        }
        if (this.zzayq == null) {
            if (zzglVar.zzayq != null) {
                return false;
            }
        } else if (!this.zzayq.equals(zzglVar.zzayq)) {
            return false;
        }
        if (this.zzayr == null) {
            if (zzglVar.zzayr != null) {
                return false;
            }
        } else if (!this.zzayr.equals(zzglVar.zzayr)) {
            return false;
        }
        if (this.zzays == null) {
            if (zzglVar.zzays != null) {
                return false;
            }
        } else if (!this.zzays.equals(zzglVar.zzays)) {
            return false;
        }
        if (this.zzayt == null) {
            if (zzglVar.zzayt != null) {
                return false;
            }
        } else if (!this.zzayt.equals(zzglVar.zzayt)) {
            return false;
        }
        if (this.zzayu == null) {
            if (zzglVar.zzayu != null) {
                return false;
            }
        } else if (!this.zzayu.equals(zzglVar.zzayu)) {
            return false;
        }
        if (this.zzayv == null) {
            if (zzglVar.zzayv != null) {
                return false;
            }
        } else if (!this.zzayv.equals(zzglVar.zzayv)) {
            return false;
        }
        if (this.zzaxc == null) {
            if (zzglVar.zzaxc != null) {
                return false;
            }
        } else if (!this.zzaxc.equals(zzglVar.zzaxc)) {
            return false;
        }
        if (this.zzayw == null) {
            if (zzglVar.zzayw != null) {
                return false;
            }
        } else if (!this.zzayw.equals(zzglVar.zzayw)) {
            return false;
        }
        if (!zzzp.equals(this.zzayx, zzglVar.zzayx)) {
            return false;
        }
        if (this.zzayy == null) {
            if (zzglVar.zzayy != null) {
                return false;
            }
        } else if (!this.zzayy.equals(zzglVar.zzayy)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzglVar.zzcfx == null || zzglVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzglVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzaxt == null ? 0 : this.zzaxt.hashCode())) * 31) + zzzp.hashCode(this.zzaxu)) * 31) + zzzp.hashCode(this.zzaxv)) * 31) + (this.zzaxw == null ? 0 : this.zzaxw.hashCode())) * 31) + (this.zzaxx == null ? 0 : this.zzaxx.hashCode())) * 31) + (this.zzaxy == null ? 0 : this.zzaxy.hashCode())) * 31) + (this.zzaxz == null ? 0 : this.zzaxz.hashCode())) * 31) + (this.zzaya == null ? 0 : this.zzaya.hashCode())) * 31) + (this.zzayb == null ? 0 : this.zzayb.hashCode())) * 31) + (this.zzayc == null ? 0 : this.zzayc.hashCode())) * 31) + (this.zzayd == null ? 0 : this.zzayd.hashCode())) * 31) + (this.zzaid == null ? 0 : this.zzaid.hashCode())) * 31) + (this.zzaye == null ? 0 : this.zzaye.hashCode())) * 31) + (this.zzage == null ? 0 : this.zzage.hashCode())) * 31) + (this.zztt == null ? 0 : this.zztt.hashCode())) * 31) + (this.zzts == null ? 0 : this.zzts.hashCode())) * 31) + (this.zzayf == null ? 0 : this.zzayf.hashCode())) * 31) + (this.zzayg == null ? 0 : this.zzayg.hashCode())) * 31) + (this.zzayh == null ? 0 : this.zzayh.hashCode())) * 31) + (this.zzayi == null ? 0 : this.zzayi.hashCode())) * 31) + (this.zzafw == null ? 0 : this.zzafw.hashCode())) * 31) + (this.zzayj == null ? 0 : this.zzayj.hashCode())) * 31) + (this.zzayk == null ? 0 : this.zzayk.hashCode())) * 31) + (this.zzagy == null ? 0 : this.zzagy.hashCode())) * 31) + (this.zzafx == null ? 0 : this.zzafx.hashCode())) * 31) + (this.zzayl == null ? 0 : this.zzayl.hashCode())) * 31) + zzzp.hashCode(this.zzaym)) * 31) + (this.zzafz == null ? 0 : this.zzafz.hashCode())) * 31) + (this.zzayn == null ? 0 : this.zzayn.hashCode())) * 31) + (this.zzayo == null ? 0 : this.zzayo.hashCode())) * 31) + (this.zzayp == null ? 0 : this.zzayp.hashCode())) * 31) + (this.zzayq == null ? 0 : this.zzayq.hashCode())) * 31) + (this.zzayr == null ? 0 : this.zzayr.hashCode())) * 31) + (this.zzays == null ? 0 : this.zzays.hashCode())) * 31) + (this.zzayt == null ? 0 : this.zzayt.hashCode())) * 31) + (this.zzayu == null ? 0 : this.zzayu.hashCode())) * 31) + (this.zzayv == null ? 0 : this.zzayv.hashCode())) * 31) + (this.zzaxc == null ? 0 : this.zzaxc.hashCode());
        zzft.zzb zzbVar = this.zzayw;
        int iHashCode3 = ((((((iHashCode2 * 31) + (zzbVar == null ? 0 : zzbVar.hashCode())) * 31) + zzzp.hashCode(this.zzayx)) * 31) + (this.zzayy == null ? 0 : this.zzayy.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode3 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzaxt != null) {
            zzzjVar.zzd(1, this.zzaxt.intValue());
        }
        if (this.zzaxu != null && this.zzaxu.length > 0) {
            for (int i = 0; i < this.zzaxu.length; i++) {
                zzgi zzgiVar = this.zzaxu[i];
                if (zzgiVar != null) {
                    zzzjVar.zza(2, zzgiVar);
                }
            }
        }
        if (this.zzaxv != null && this.zzaxv.length > 0) {
            for (int i2 = 0; i2 < this.zzaxv.length; i2++) {
                zzgo zzgoVar = this.zzaxv[i2];
                if (zzgoVar != null) {
                    zzzjVar.zza(3, zzgoVar);
                }
            }
        }
        if (this.zzaxw != null) {
            zzzjVar.zzi(4, this.zzaxw.longValue());
        }
        if (this.zzaxx != null) {
            zzzjVar.zzi(5, this.zzaxx.longValue());
        }
        if (this.zzaxy != null) {
            zzzjVar.zzi(6, this.zzaxy.longValue());
        }
        if (this.zzaya != null) {
            zzzjVar.zzi(7, this.zzaya.longValue());
        }
        if (this.zzayb != null) {
            zzzjVar.zzb(8, this.zzayb);
        }
        if (this.zzayc != null) {
            zzzjVar.zzb(9, this.zzayc);
        }
        if (this.zzayd != null) {
            zzzjVar.zzb(10, this.zzayd);
        }
        if (this.zzaid != null) {
            zzzjVar.zzb(11, this.zzaid);
        }
        if (this.zzaye != null) {
            zzzjVar.zzd(12, this.zzaye.intValue());
        }
        if (this.zzage != null) {
            zzzjVar.zzb(13, this.zzage);
        }
        if (this.zztt != null) {
            zzzjVar.zzb(14, this.zztt);
        }
        if (this.zzts != null) {
            zzzjVar.zzb(16, this.zzts);
        }
        if (this.zzayf != null) {
            zzzjVar.zzi(17, this.zzayf.longValue());
        }
        if (this.zzayg != null) {
            zzzjVar.zzi(18, this.zzayg.longValue());
        }
        if (this.zzayh != null) {
            zzzjVar.zzb(19, this.zzayh);
        }
        if (this.zzayi != null) {
            zzzjVar.zzb(20, this.zzayi.booleanValue());
        }
        if (this.zzafw != null) {
            zzzjVar.zzb(21, this.zzafw);
        }
        if (this.zzayj != null) {
            zzzjVar.zzi(22, this.zzayj.longValue());
        }
        if (this.zzayk != null) {
            zzzjVar.zzd(23, this.zzayk.intValue());
        }
        if (this.zzagy != null) {
            zzzjVar.zzb(24, this.zzagy);
        }
        if (this.zzafx != null) {
            zzzjVar.zzb(25, this.zzafx);
        }
        if (this.zzaxz != null) {
            zzzjVar.zzi(26, this.zzaxz.longValue());
        }
        if (this.zzayl != null) {
            zzzjVar.zzb(28, this.zzayl.booleanValue());
        }
        if (this.zzaym != null && this.zzaym.length > 0) {
            for (int i3 = 0; i3 < this.zzaym.length; i3++) {
                zzgg zzggVar = this.zzaym[i3];
                if (zzggVar != null) {
                    zzzjVar.zza(29, zzggVar);
                }
            }
        }
        if (this.zzafz != null) {
            zzzjVar.zzb(30, this.zzafz);
        }
        if (this.zzayn != null) {
            zzzjVar.zzd(31, this.zzayn.intValue());
        }
        if (this.zzayo != null) {
            zzzjVar.zzd(32, this.zzayo.intValue());
        }
        if (this.zzayp != null) {
            zzzjVar.zzd(33, this.zzayp.intValue());
        }
        if (this.zzayq != null) {
            zzzjVar.zzb(34, this.zzayq);
        }
        if (this.zzayr != null) {
            zzzjVar.zzi(35, this.zzayr.longValue());
        }
        if (this.zzays != null) {
            zzzjVar.zzi(36, this.zzays.longValue());
        }
        if (this.zzayt != null) {
            zzzjVar.zzb(37, this.zzayt);
        }
        if (this.zzayu != null) {
            zzzjVar.zzb(38, this.zzayu);
        }
        if (this.zzayv != null) {
            zzzjVar.zzd(39, this.zzayv.intValue());
        }
        if (this.zzaxc != null) {
            zzzjVar.zzb(41, this.zzaxc);
        }
        if (this.zzayw != null) {
            zzzjVar.zze(44, this.zzayw);
        }
        if (this.zzayx != null && this.zzayx.length > 0) {
            for (int i4 = 0; i4 < this.zzayx.length; i4++) {
                int i5 = this.zzayx[i4];
                zzzjVar.zzc(45, 0);
                zzzjVar.zzcc(i5);
            }
        }
        if (this.zzayy != null) {
            zzzjVar.zzi(46, this.zzayy.longValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzaxt != null) {
            iZzf += zzzj.zzh(1, this.zzaxt.intValue());
        }
        if (this.zzaxu != null && this.zzaxu.length > 0) {
            int iZzb = iZzf;
            for (int i = 0; i < this.zzaxu.length; i++) {
                zzgi zzgiVar = this.zzaxu[i];
                if (zzgiVar != null) {
                    iZzb += zzzj.zzb(2, zzgiVar);
                }
            }
            iZzf = iZzb;
        }
        if (this.zzaxv != null && this.zzaxv.length > 0) {
            int iZzb2 = iZzf;
            for (int i2 = 0; i2 < this.zzaxv.length; i2++) {
                zzgo zzgoVar = this.zzaxv[i2];
                if (zzgoVar != null) {
                    iZzb2 += zzzj.zzb(3, zzgoVar);
                }
            }
            iZzf = iZzb2;
        }
        if (this.zzaxw != null) {
            iZzf += zzzj.zzd(4, this.zzaxw.longValue());
        }
        if (this.zzaxx != null) {
            iZzf += zzzj.zzd(5, this.zzaxx.longValue());
        }
        if (this.zzaxy != null) {
            iZzf += zzzj.zzd(6, this.zzaxy.longValue());
        }
        if (this.zzaya != null) {
            iZzf += zzzj.zzd(7, this.zzaya.longValue());
        }
        if (this.zzayb != null) {
            iZzf += zzzj.zzc(8, this.zzayb);
        }
        if (this.zzayc != null) {
            iZzf += zzzj.zzc(9, this.zzayc);
        }
        if (this.zzayd != null) {
            iZzf += zzzj.zzc(10, this.zzayd);
        }
        if (this.zzaid != null) {
            iZzf += zzzj.zzc(11, this.zzaid);
        }
        if (this.zzaye != null) {
            iZzf += zzzj.zzh(12, this.zzaye.intValue());
        }
        if (this.zzage != null) {
            iZzf += zzzj.zzc(13, this.zzage);
        }
        if (this.zztt != null) {
            iZzf += zzzj.zzc(14, this.zztt);
        }
        if (this.zzts != null) {
            iZzf += zzzj.zzc(16, this.zzts);
        }
        if (this.zzayf != null) {
            iZzf += zzzj.zzd(17, this.zzayf.longValue());
        }
        if (this.zzayg != null) {
            iZzf += zzzj.zzd(18, this.zzayg.longValue());
        }
        if (this.zzayh != null) {
            iZzf += zzzj.zzc(19, this.zzayh);
        }
        if (this.zzayi != null) {
            this.zzayi.booleanValue();
            iZzf += zzzj.zzbc(20) + 1;
        }
        if (this.zzafw != null) {
            iZzf += zzzj.zzc(21, this.zzafw);
        }
        if (this.zzayj != null) {
            iZzf += zzzj.zzd(22, this.zzayj.longValue());
        }
        if (this.zzayk != null) {
            iZzf += zzzj.zzh(23, this.zzayk.intValue());
        }
        if (this.zzagy != null) {
            iZzf += zzzj.zzc(24, this.zzagy);
        }
        if (this.zzafx != null) {
            iZzf += zzzj.zzc(25, this.zzafx);
        }
        if (this.zzaxz != null) {
            iZzf += zzzj.zzd(26, this.zzaxz.longValue());
        }
        if (this.zzayl != null) {
            this.zzayl.booleanValue();
            iZzf += zzzj.zzbc(28) + 1;
        }
        if (this.zzaym != null && this.zzaym.length > 0) {
            int iZzb3 = iZzf;
            for (int i3 = 0; i3 < this.zzaym.length; i3++) {
                zzgg zzggVar = this.zzaym[i3];
                if (zzggVar != null) {
                    iZzb3 += zzzj.zzb(29, zzggVar);
                }
            }
            iZzf = iZzb3;
        }
        if (this.zzafz != null) {
            iZzf += zzzj.zzc(30, this.zzafz);
        }
        if (this.zzayn != null) {
            iZzf += zzzj.zzh(31, this.zzayn.intValue());
        }
        if (this.zzayo != null) {
            iZzf += zzzj.zzh(32, this.zzayo.intValue());
        }
        if (this.zzayp != null) {
            iZzf += zzzj.zzh(33, this.zzayp.intValue());
        }
        if (this.zzayq != null) {
            iZzf += zzzj.zzc(34, this.zzayq);
        }
        if (this.zzayr != null) {
            iZzf += zzzj.zzd(35, this.zzayr.longValue());
        }
        if (this.zzays != null) {
            iZzf += zzzj.zzd(36, this.zzays.longValue());
        }
        if (this.zzayt != null) {
            iZzf += zzzj.zzc(37, this.zzayt);
        }
        if (this.zzayu != null) {
            iZzf += zzzj.zzc(38, this.zzayu);
        }
        if (this.zzayv != null) {
            iZzf += zzzj.zzh(39, this.zzayv.intValue());
        }
        if (this.zzaxc != null) {
            iZzf += zzzj.zzc(41, this.zzaxc);
        }
        if (this.zzayw != null) {
            iZzf += zzve.zzc(44, this.zzayw);
        }
        if (this.zzayx != null && this.zzayx.length > 0) {
            int iZzbk = 0;
            for (int i4 = 0; i4 < this.zzayx.length; i4++) {
                iZzbk += zzzj.zzbk(this.zzayx[i4]);
            }
            iZzf = iZzf + iZzbk + (this.zzayx.length * 2);
        }
        if (this.zzayy != null) {
            return iZzf + zzzj.zzd(46, this.zzayy.longValue());
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        int length2;
        int length3;
        int length4;
        int length5;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            switch (iZzuq) {
                case 0:
                    return this;
                case 8:
                    this.zzaxt = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 18:
                    int iZzb = zzzu.zzb(zzziVar, 18);
                    if (this.zzaxu != null) {
                        length = this.zzaxu.length;
                    } else {
                        length = 0;
                    }
                    zzgi[] zzgiVarArr = new zzgi[iZzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzaxu, 0, zzgiVarArr, 0, length);
                    }
                    while (length < zzgiVarArr.length - 1) {
                        zzgiVarArr[length] = new zzgi();
                        zzziVar.zza(zzgiVarArr[length]);
                        zzziVar.zzuq();
                        length++;
                    }
                    zzgiVarArr[length] = new zzgi();
                    zzziVar.zza(zzgiVarArr[length]);
                    this.zzaxu = zzgiVarArr;
                    break;
                case 26:
                    int iZzb2 = zzzu.zzb(zzziVar, 26);
                    if (this.zzaxv != null) {
                        length2 = this.zzaxv.length;
                    } else {
                        length2 = 0;
                    }
                    zzgo[] zzgoVarArr = new zzgo[iZzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzaxv, 0, zzgoVarArr, 0, length2);
                    }
                    while (length2 < zzgoVarArr.length - 1) {
                        zzgoVarArr[length2] = new zzgo();
                        zzziVar.zza(zzgoVarArr[length2]);
                        zzziVar.zzuq();
                        length2++;
                    }
                    zzgoVarArr[length2] = new zzgo();
                    zzziVar.zza(zzgoVarArr[length2]);
                    this.zzaxv = zzgoVarArr;
                    break;
                case 32:
                    this.zzaxw = Long.valueOf(zzziVar.zzvj());
                    break;
                case 40:
                    this.zzaxx = Long.valueOf(zzziVar.zzvj());
                    break;
                case 48:
                    this.zzaxy = Long.valueOf(zzziVar.zzvj());
                    break;
                case 56:
                    this.zzaya = Long.valueOf(zzziVar.zzvj());
                    break;
                case 66:
                    this.zzayb = zzziVar.readString();
                    break;
                case 74:
                    this.zzayc = zzziVar.readString();
                    break;
                case 82:
                    this.zzayd = zzziVar.readString();
                    break;
                case 90:
                    this.zzaid = zzziVar.readString();
                    break;
                case 96:
                    this.zzaye = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 106:
                    this.zzage = zzziVar.readString();
                    break;
                case 114:
                    this.zztt = zzziVar.readString();
                    break;
                case 130:
                    this.zzts = zzziVar.readString();
                    break;
                case 136:
                    this.zzayf = Long.valueOf(zzziVar.zzvj());
                    break;
                case 144:
                    this.zzayg = Long.valueOf(zzziVar.zzvj());
                    break;
                case 154:
                    this.zzayh = zzziVar.readString();
                    break;
                case 160:
                    this.zzayi = Boolean.valueOf(zzziVar.zzuw());
                    break;
                case 170:
                    this.zzafw = zzziVar.readString();
                    break;
                case 176:
                    this.zzayj = Long.valueOf(zzziVar.zzvj());
                    break;
                case 184:
                    this.zzayk = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 194:
                    this.zzagy = zzziVar.readString();
                    break;
                case 202:
                    this.zzafx = zzziVar.readString();
                    break;
                case 208:
                    this.zzaxz = Long.valueOf(zzziVar.zzvj());
                    break;
                case 224:
                    this.zzayl = Boolean.valueOf(zzziVar.zzuw());
                    break;
                case 234:
                    int iZzb3 = zzzu.zzb(zzziVar, 234);
                    if (this.zzaym != null) {
                        length3 = this.zzaym.length;
                    } else {
                        length3 = 0;
                    }
                    zzgg[] zzggVarArr = new zzgg[iZzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzaym, 0, zzggVarArr, 0, length3);
                    }
                    while (length3 < zzggVarArr.length - 1) {
                        zzggVarArr[length3] = new zzgg();
                        zzziVar.zza(zzggVarArr[length3]);
                        zzziVar.zzuq();
                        length3++;
                    }
                    zzggVarArr[length3] = new zzgg();
                    zzziVar.zza(zzggVarArr[length3]);
                    this.zzaym = zzggVarArr;
                    break;
                case 242:
                    this.zzafz = zzziVar.readString();
                    break;
                case 248:
                    this.zzayn = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 256:
                    this.zzayo = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 264:
                    this.zzayp = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 274:
                    this.zzayq = zzziVar.readString();
                    break;
                case 280:
                    this.zzayr = Long.valueOf(zzziVar.zzvj());
                    break;
                case 288:
                    this.zzays = Long.valueOf(zzziVar.zzvj());
                    break;
                case 298:
                    this.zzayt = zzziVar.readString();
                    break;
                case 306:
                    this.zzayu = zzziVar.readString();
                    break;
                case 312:
                    this.zzayv = Integer.valueOf(zzziVar.zzvi());
                    break;
                case 330:
                    this.zzaxc = zzziVar.readString();
                    break;
                case 354:
                    zzft.zzb zzbVar = (zzft.zzb) zzziVar.zza(zzft.zzb.zza());
                    if (this.zzayw != null) {
                        zzbVar = (zzft.zzb) ((zzvx) this.zzayw.zzwm().zza(zzbVar).zzwv());
                    }
                    this.zzayw = zzbVar;
                    break;
                case 360:
                    int iZzb4 = zzzu.zzb(zzziVar, 360);
                    if (this.zzayx != null) {
                        length4 = this.zzayx.length;
                    } else {
                        length4 = 0;
                    }
                    int[] iArr = new int[iZzb4 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzayx, 0, iArr, 0, length4);
                    }
                    while (length4 < iArr.length - 1) {
                        iArr[length4] = zzziVar.zzvi();
                        zzziVar.zzuq();
                        length4++;
                    }
                    iArr[length4] = zzziVar.zzvi();
                    this.zzayx = iArr;
                    break;
                case 362:
                    int iZzar = zzziVar.zzar(zzziVar.zzvi());
                    int position = zzziVar.getPosition();
                    int i = 0;
                    while (zzziVar.zzzf() > 0) {
                        zzziVar.zzvi();
                        i++;
                    }
                    zzziVar.zzca(position);
                    if (this.zzayx != null) {
                        length5 = this.zzayx.length;
                    } else {
                        length5 = 0;
                    }
                    int[] iArr2 = new int[i + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.zzayx, 0, iArr2, 0, length5);
                    }
                    while (length5 < iArr2.length) {
                        iArr2[length5] = zzziVar.zzvi();
                        length5++;
                    }
                    this.zzayx = iArr2;
                    zzziVar.zzas(iZzar);
                    break;
                case 368:
                    this.zzayy = Long.valueOf(zzziVar.zzvj());
                    break;
                default:
                    if (!super.zza(zzziVar, iZzuq)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }
}

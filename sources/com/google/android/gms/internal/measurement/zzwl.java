package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public class zzwl {
    private static final zzvk zzbuo = zzvk.zzvy();
    private zzun zzcay;
    private volatile zzxe zzcaz;
    private volatile zzun zzcba;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwl)) {
            return false;
        }
        zzwl zzwlVar = (zzwl) obj;
        zzxe zzxeVar = this.zzcaz;
        zzxe zzxeVar2 = zzwlVar.zzcaz;
        return (zzxeVar == null && zzxeVar2 == null) ? zzud().equals(zzwlVar.zzud()) : (zzxeVar == null || zzxeVar2 == null) ? zzxeVar != null ? zzxeVar.equals(zzwlVar.zzh(zzxeVar.zzwq())) : zzh(zzxeVar2.zzwq()).equals(zzxeVar2) : zzxeVar.equals(zzxeVar2);
    }

    public int hashCode() {
        return 1;
    }

    private final zzxe zzh(zzxe zzxeVar) {
        if (this.zzcaz == null) {
            synchronized (this) {
                if (this.zzcaz == null) {
                    try {
                        this.zzcaz = zzxeVar;
                        this.zzcba = zzun.zzbuu;
                    } catch (zzwe e) {
                        this.zzcaz = zzxeVar;
                        this.zzcba = zzun.zzbuu;
                    }
                }
            }
        }
        return this.zzcaz;
    }

    public final zzxe zzi(zzxe zzxeVar) {
        zzxe zzxeVar2 = this.zzcaz;
        this.zzcay = null;
        this.zzcba = null;
        this.zzcaz = zzxeVar;
        return zzxeVar2;
    }

    public final int zzwe() {
        if (this.zzcba != null) {
            return this.zzcba.size();
        }
        if (this.zzcaz != null) {
            return this.zzcaz.zzwe();
        }
        return 0;
    }

    public final zzun zzud() {
        if (this.zzcba != null) {
            return this.zzcba;
        }
        synchronized (this) {
            if (this.zzcba != null) {
                return this.zzcba;
            }
            if (this.zzcaz == null) {
                this.zzcba = zzun.zzbuu;
            } else {
                this.zzcba = this.zzcaz.zzud();
            }
            return this.zzcba;
        }
    }
}

package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzcet' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public class zzzb {
    public static final zzzb zzcel = new zzzb("DOUBLE", 0, zzzg.DOUBLE, 1);
    public static final zzzb zzcem = new zzzb("FLOAT", 1, zzzg.FLOAT, 5);
    public static final zzzb zzcen = new zzzb("INT64", 2, zzzg.LONG, 0);
    public static final zzzb zzceo = new zzzb("UINT64", 3, zzzg.LONG, 0);
    public static final zzzb zzcep = new zzzb("INT32", 4, zzzg.INT, 0);
    public static final zzzb zzceq = new zzzb("FIXED64", 5, zzzg.LONG, 1);
    public static final zzzb zzcer = new zzzb("FIXED32", 6, zzzg.INT, 5);
    public static final zzzb zzces = new zzzb("BOOL", 7, zzzg.BOOLEAN, 0);
    public static final zzzb zzcet;
    public static final zzzb zzceu;
    public static final zzzb zzcev;
    public static final zzzb zzcew;
    public static final zzzb zzcex;
    public static final zzzb zzcey;
    public static final zzzb zzcez;
    public static final zzzb zzcfa;
    public static final zzzb zzcfb;
    public static final zzzb zzcfc;
    private static final /* synthetic */ zzzb[] zzcff;
    private final zzzg zzcfd;
    private final int zzcfe;

    public static zzzb[] values() {
        return (zzzb[]) zzcff.clone();
    }

    private zzzb(String str, int i, zzzg zzzgVar, int i2) {
        this.zzcfd = zzzgVar;
        this.zzcfe = i2;
    }

    public final zzzg zzzc() {
        return this.zzcfd;
    }

    public final int zzzd() {
        return this.zzcfe;
    }

    /* synthetic */ zzzb(String str, int i, zzzg zzzgVar, int i2, zzza zzzaVar) {
        this(str, i, zzzgVar, i2);
    }

    static {
        final int i = 2;
        final int i2 = 3;
        final String str = "STRING";
        final zzzg zzzgVar = zzzg.STRING;
        final int i3 = 8;
        zzcet = new zzzb(str, i3, zzzgVar, i) { // from class: com.google.android.gms.internal.measurement.zzzc
            {
                int i4 = 8;
                int i5 = 2;
                zzza zzzaVar = null;
            }
        };
        final String str2 = "GROUP";
        final zzzg zzzgVar2 = zzzg.MESSAGE;
        final int i4 = 9;
        zzceu = new zzzb(str2, i4, zzzgVar2, i2) { // from class: com.google.android.gms.internal.measurement.zzzd
            {
                int i5 = 9;
                int i6 = 3;
                zzza zzzaVar = null;
            }
        };
        final String str3 = "MESSAGE";
        final zzzg zzzgVar3 = zzzg.MESSAGE;
        final int i5 = 10;
        zzcev = new zzzb(str3, i5, zzzgVar3, i) { // from class: com.google.android.gms.internal.measurement.zzze
            {
                int i6 = 10;
                int i7 = 2;
                zzza zzzaVar = null;
            }
        };
        final String str4 = "BYTES";
        final zzzg zzzgVar4 = zzzg.BYTE_STRING;
        final int i6 = 11;
        zzcew = new zzzb(str4, i6, zzzgVar4, i) { // from class: com.google.android.gms.internal.measurement.zzzf
            {
                int i7 = 11;
                int i8 = 2;
                zzza zzzaVar = null;
            }
        };
        zzcex = new zzzb("UINT32", 12, zzzg.INT, 0);
        zzcey = new zzzb("ENUM", 13, zzzg.ENUM, 0);
        zzcez = new zzzb("SFIXED32", 14, zzzg.INT, 5);
        zzcfa = new zzzb("SFIXED64", 15, zzzg.LONG, 1);
        zzcfb = new zzzb("SINT32", 16, zzzg.INT, 0);
        zzcfc = new zzzb("SINT64", 17, zzzg.LONG, 0);
        zzcff = new zzzb[]{zzcel, zzcem, zzcen, zzceo, zzcep, zzceq, zzcer, zzces, zzcet, zzceu, zzcev, zzcew, zzcex, zzcey, zzcez, zzcfa, zzcfb, zzcfc};
    }
}

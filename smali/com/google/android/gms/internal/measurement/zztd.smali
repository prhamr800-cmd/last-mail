###### Class com.google.android.gms.internal.measurement.zztd (com.google.android.gms.internal.measurement.zztd)
.class public final Lcom/google/android/gms/internal/measurement/zztd;
.super Ljava/lang/Object;


# instance fields
.field private final zzbsd:Ljava/lang/String;

.field private final zzbse:Landroid/net/Uri;

.field private final zzbsf:Ljava/lang/String;

.field private final zzbsg:Ljava/lang/String;

.field private final zzbsh:Z

.field private final zzbsi:Z

.field private final zzbsj:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 10

    .line 1
    const-string v3, ""

    const-string v4, ""

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zztd;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsd:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbse:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsf:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsg:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsh:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsi:Z

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsj:Z

    .line 11
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zztd;)Landroid/net/Uri;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbse:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zztd;)Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zztd;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zztd;->zzbsf:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/zzsx<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsx;->zzb(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/zzsx<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsx;->zzb(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzsx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsx;->zzb(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/zzsx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsx;->zzb(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    return-object p1
.end method

.method public final zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzsx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsx;->zzb(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    return-object p1
.end method

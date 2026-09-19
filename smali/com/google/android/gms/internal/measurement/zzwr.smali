###### Class com.google.android.gms.internal.measurement.zzwr (com.google.android.gms.internal.measurement.zzwr)
.class final Lcom/google/android/gms/internal/measurement/zzwr;
.super Lcom/google/android/gms/internal/measurement/zzwo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzwo;-><init>(Lcom/google/android/gms/internal/measurement/zzwp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzwp;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwr;-><init>()V

    return-void
.end method

.method private static zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzwd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/zzwd<",
            "TE;>;"
        }
    .end annotation

    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzwd;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->zzug()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->size()I

    move-result v1

    .line 5
    nop

    .line 6
    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_16

    :cond_14
    shl-int/lit8 v1, v1, 0x1

    .line 7
    :goto_16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzwd;->zzak(I)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v0

    .line 8
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzys;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :cond_1d
    return-object v0
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 13
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v0

    .line 14
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object p2

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->size()I

    move-result v1

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzwd;->size()I

    move-result v2

    .line 17
    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwd;->zzug()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 19
    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/zzwd;->zzak(I)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object v0

    .line 20
    :cond_1f
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/measurement/zzwd;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_22
    if-lez v1, :cond_25

    .line 22
    move-object p2, v0

    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 23
    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 4

    .line 10
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzwd;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzwd;->zzsw()V

    .line 12
    return-void
.end method

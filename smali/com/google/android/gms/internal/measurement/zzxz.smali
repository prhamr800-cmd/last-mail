###### Class com.google.android.gms.internal.measurement.zzxz (com.google.android.gms.internal.measurement.zzxz)
.class final Lcom/google/android/gms/internal/measurement/zzxz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field private zzcdb:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzxx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxx;->zzb(Lcom/google/android/gms/internal/measurement/zzxx;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzxx;Lcom/google/android/gms/internal/measurement/zzxy;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;-><init>(Lcom/google/android/gms/internal/measurement/zzxx;)V

    return-void
.end method

.method private final zzyo()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdb:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxx;->zzd(Lcom/google/android/gms/internal/measurement/zzxx;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdb:Ljava/util/Iterator;

    .line 7
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdb:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->pos:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxx;->zzb(Lcom/google/android/gms/internal/measurement/zzxx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1c

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzyo()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .line 8
    nop

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzyo()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzyo()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 11
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxx;->zzb(Lcom/google/android/gms/internal/measurement/zzxx;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

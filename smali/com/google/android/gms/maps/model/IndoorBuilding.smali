###### Class com.google.android.gms.maps.model.IndoorBuilding (com.google.android.gms.maps.model.IndoorBuilding)
.class public final Lcom/google/android/gms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
    }
.end annotation


# instance fields
.field private final zzdd:Lcom/google/android/gms/internal/maps/zzn;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzn;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/maps/zzn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/maps/zzn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzn;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    .line 5
    const-string p1, "shim"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 24
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    if-nez v0, :cond_6

    .line 25
    const/4 p1, 0x0

    return p1

    .line 26
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzn;->zzb(Lcom/google/android/gms/internal/maps/zzn;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 27
    :catch_11
    move-exception p1

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getActiveLevelIndex()I
    .registers 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getActiveLevelIndex()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11
    :catch_7
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getDefaultLevelIndex()I
    .registers 3

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getDefaultLevelIndex()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 8
    :catch_7
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getLevels()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getLevels()Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Lcom/google/android/gms/internal/maps/zzq;)Lcom/google/android/gms/maps/model/IndoorLevel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2c

    .line 17
    goto :goto_13

    .line 18
    :cond_2b
    return-object v1

    .line 19
    :catch_2c
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->zzj()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 30
    :catch_7
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isUnderground()Z
    .registers 3

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->isUnderground()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 22
    :catch_7
    move-exception v0

    .line 23
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

###### Class com.google.android.gms.maps.model.IndoorBuilding.zza (com.google.android.gms.maps.model.IndoorBuilding$zza)
.class final Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/IndoorBuilding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# static fields
.field public static final zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/maps/zzr;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/maps/zzq;)Lcom/google/android/gms/maps/model/IndoorLevel;
    .registers 2
    .param p0    # Lcom/google/android/gms/internal/maps/zzq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/IndoorLevel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/IndoorLevel;-><init>(Lcom/google/android/gms/internal/maps/zzq;)V

    return-object v0
.end method

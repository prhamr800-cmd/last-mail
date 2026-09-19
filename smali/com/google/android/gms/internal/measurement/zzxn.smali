###### Class com.google.android.gms.internal.measurement.zzxn (com.google.android.gms.internal.measurement.zzxn)
.class final Lcom/google/android/gms/internal/measurement/zzxn;
.super Ljava/lang/Object;


# static fields
.field private static final zzccl:Lcom/google/android/gms/internal/measurement/zzxl;

.field private static final zzccm:Lcom/google/android/gms/internal/measurement/zzxl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxn;->zzxz()Lcom/google/android/gms/internal/measurement/zzxl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxn;->zzccl:Lcom/google/android/gms/internal/measurement/zzxl;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxn;->zzccm:Lcom/google/android/gms/internal/measurement/zzxl;

    return-void
.end method

.method static zzxx()Lcom/google/android/gms/internal/measurement/zzxl;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxn;->zzccl:Lcom/google/android/gms/internal/measurement/zzxl;

    return-object v0
.end method

.method static zzxy()Lcom/google/android/gms/internal/measurement/zzxl;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxn;->zzccm:Lcom/google/android/gms/internal/measurement/zzxl;

    return-object v0
.end method

.method private static zzxz()Lcom/google/android/gms/internal/measurement/zzxl;
    .registers 3

    .line 3
    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxl;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 5
    :catch_16
    move-exception v0

    .line 6
    const/4 v0, 0x0

    return-object v0
.end method

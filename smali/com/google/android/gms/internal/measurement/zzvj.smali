###### Class com.google.android.gms.internal.measurement.zzvj (com.google.android.gms.internal.measurement.zzvj)
.class final Lcom/google/android/gms/internal/measurement/zzvj;
.super Ljava/lang/Object;


# static fields
.field private static final zzbwd:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvu()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvj;->zzbwd:Ljava/lang/Class;

    return-void
.end method

.method private static final zzgg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvj;->zzbwd:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvk;

    .line 18
    return-object p0
.end method

.method private static zzvu()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2
    :catch_7
    move-exception v0

    .line 3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzvv()Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvj;->zzbwd:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 5
    :try_start_4
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvj;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 6
    :catch_b
    move-exception v0

    .line 7
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwh:Lcom/google/android/gms/internal/measurement/zzvk;

    return-object v0
.end method

.method static zzvw()Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 1

    .line 8
    nop

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvj;->zzbwd:Ljava/lang/Class;

    if-eqz v0, :cond_d

    .line 10
    :try_start_5
    const-string v0, "loadGeneratedRegistry"

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvj;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    .line 11
    goto :goto_e

    .line 12
    :catch_c
    move-exception v0

    .line 13
    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_14

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvk;->zzvw()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    .line 15
    :cond_14
    if-nez v0, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvv()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

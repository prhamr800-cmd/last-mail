###### Class com.google.android.gms.internal.measurement.zzvk (com.google.android.gms.internal.measurement.zzvk)
.class public Lcom/google/android/gms/internal/measurement/zzvk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzvk$zza;
    }
.end annotation


# static fields
.field private static volatile zzbwe:Z

.field private static final zzbwf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

.field static final zzbwh:Lcom/google/android/gms/internal/measurement/zzvk;


# instance fields
.field private final zzbwi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzvk$zza;",
            "Lcom/google/android/gms/internal/measurement/zzvx$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwe:Z

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvk;->zzvx()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwf:Ljava/lang/Class;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvk;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwh:Lcom/google/android/gms/internal/measurement/zzvk;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    .line 19
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    .line 22
    return-void
.end method

.method static zzvw()Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 1

    .line 13
    const-class v0, Lcom/google/android/gms/internal/measurement/zzvk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvv;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    return-object v0
.end method

.method private static zzvx()Ljava/lang/Class;
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
    const-string v0, "com.google.protobuf.Extension"

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

.method public static zzvy()Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvv()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    return-object v0
.end method

.method public static zzvz()Lcom/google/android/gms/internal/measurement/zzvk;
    .registers 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    .line 6
    if-nez v0, :cond_16

    .line 7
    const-class v1, Lcom/google/android/gms/internal/measurement/zzvk;

    monitor-enter v1

    .line 8
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    .line 9
    if-nez v0, :cond_11

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvw()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    .line 11
    :cond_11
    monitor-exit v1

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    .line 12
    :cond_16
    :goto_16
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzxe;I)Lcom/google/android/gms/internal/measurement/zzvx$zzd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzxe;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzvx$zzd<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzvk$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvk$zza;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvx$zzd;

    .line 16
    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzvk.zza (com.google.android.gms.internal.measurement.zzvk$zza)
.class final Lcom/google/android/gms/internal/measurement/zzvk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final number:I

.field private final object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->object:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->number:I

    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvk$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 7
    return v1

    .line 8
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvk$zza;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->object:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzvk$zza;->object:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->number:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzvk$zza;->number:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvk$zza;->number:I

    add-int/2addr v0, v1

    return v0
.end method

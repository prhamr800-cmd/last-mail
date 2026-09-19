###### Class com.google.android.gms.internal.measurement.zztg (com.google.android.gms.internal.measurement.zztg)
.class public final Lcom/google/android/gms/internal/measurement/zztg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zztg$zza;
    }
.end annotation


# static fields
.field private static final zzbso:Lcom/google/android/gms/internal/measurement/zzth;

.field private static final zzbsp:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 10
    nop

    .line 11
    const/4 v0, 0x1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zztg;->zztu()Ljava/lang/Integer;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6} :catch_2d

    .line 12
    if-eqz v1, :cond_18

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_18

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/measurement/zztl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zztl;-><init>()V

    goto :goto_65

    .line 19
    :catch_16
    move-exception v2

    goto :goto_2f

    .line 14
    :cond_18
    const-string v2, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 15
    xor-int/2addr v2, v0

    if-eqz v2, :cond_27

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/measurement/zztk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zztk;-><init>()V

    goto :goto_65

    .line 17
    :cond_27
    new-instance v2, Lcom/google/android/gms/internal/measurement/zztg$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zztg$zza;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2c} :catch_16

    .line 18
    goto :goto_65

    .line 19
    :catch_2d
    move-exception v2

    const/4 v1, 0x0

    .line 20
    :goto_2f
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v4, Lcom/google/android/gms/internal/measurement/zztg$zza;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x84

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "will be used. The error is: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 24
    new-instance v2, Lcom/google/android/gms/internal/measurement/zztg$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zztg$zza;-><init>()V

    .line 25
    :goto_65
    sput-object v2, Lcom/google/android/gms/internal/measurement/zztg;->zzbso:Lcom/google/android/gms/internal/measurement/zzth;

    .line 26
    if-nez v1, :cond_6a

    goto :goto_6e

    :cond_6a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6e
    sput v0, Lcom/google/android/gms/internal/measurement/zztg;->zzbsp:I

    .line 27
    return-void
.end method

.method public static zza(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zztg;->zzbso:Lcom/google/android/gms/internal/measurement/zzth;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzth;->zza(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 2
    return-void
.end method

.method private static zztu()Ljava/lang/Integer;
    .registers 4

    .line 3
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    .line 6
    :catch_14
    move-exception v1

    .line 7
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 9
    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zztg.zza (com.google.android.gms.internal.measurement.zztg$zza)
.class final Lcom/google/android/gms/internal/measurement/zztg$zza;
.super Lcom/google/android/gms/internal/measurement/zzth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zztg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzth;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 3

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 3
    return-void
.end method

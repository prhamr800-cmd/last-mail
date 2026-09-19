###### Class com.google.android.gms.internal.measurement.zztc (com.google.android.gms.internal.measurement.zztc)
.class final Lcom/google/android/gms/internal/measurement/zztc;
.super Lcom/google/android/gms/internal/measurement/zzsx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzsx<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzsx;-><init>(Lcom/google/android/gms/internal/measurement/zztd;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzsy;)V

    return-void
.end method


# virtual methods
.method final synthetic zzs(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 2
    nop

    .line 3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_8
    const/4 p1, 0x0

    .line 6
    return-object p1
.end method

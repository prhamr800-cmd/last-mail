###### Class com.google.android.gms.internal.measurement.zzxm (com.google.android.gms.internal.measurement.zzxm)
.class final Lcom/google/android/gms/internal/measurement/zzxm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxl;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvx;

    sget v0, Lcom/google/android/gms/internal/measurement/zzvx$zze;->zzbzr:I

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvx;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    return-object p1
.end method

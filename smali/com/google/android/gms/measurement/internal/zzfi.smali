###### Class com.google.android.gms.measurement.internal.zzfi (com.google.android.gms.measurement.internal.zzfi)
.class Lcom/google/android/gms/measurement/internal/zzfi;
.super Lcom/google/android/gms/measurement/internal/zzcp;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzcr;


# instance fields
.field protected final zzang:Lcom/google/android/gms/measurement/internal/zzfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmh()Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 4
    return-void
.end method


# virtual methods
.method public zzjr()Lcom/google/android/gms/measurement/internal/zzfq;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public zzjs()Lcom/google/android/gms/measurement/internal/zzk;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjs()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public zzjt()Lcom/google/android/gms/measurement/internal/zzr;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method

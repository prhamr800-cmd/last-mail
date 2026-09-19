###### Class com.google.android.gms.measurement.internal.zzff (com.google.android.gms.measurement.internal.zzff)
.class final Lcom/google/android/gms/measurement/internal/zzff;
.super Ljava/lang/Object;


# instance fields
.field private startTime:J

.field private final zzrz:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzrz:Lcom/google/android/gms/common/util/Clock;

    .line 4
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->startTime:J

    .line 8
    return-void
.end method

.method public final start()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->startTime:J

    .line 6
    return-void
.end method

.method public final zzj(J)Z
    .registers 7

    .line 9
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->startTime:J

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzff;->startTime:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1b

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

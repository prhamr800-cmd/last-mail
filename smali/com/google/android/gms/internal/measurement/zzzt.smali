###### Class com.google.android.gms.internal.measurement.zzzt (com.google.android.gms.internal.measurement.zzzt)
.class final Lcom/google/android/gms/internal/measurement/zzzt;
.super Ljava/lang/Object;


# instance fields
.field final tag:I

.field final zzbvb:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 5
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 6
    return v0

    .line 7
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzzt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 8
    return v2

    .line 9
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzt;

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    add-int/lit16 v0, v0, 0x20f

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    return v0
.end method

###### Class com.google.android.gms.measurement.internal.zzal (com.google.android.gms.measurement.internal.zzal)
.class public final Lcom/google/android/gms/measurement/internal/zzal;
.super Ljava/lang/Object;


# instance fields
.field public final origin:Ljava/lang/String;

.field public final zzadt:J

.field public final zzadu:J

.field public final zzadv:Z

.field public final zzadw:Ljava/lang/String;

.field public final zzadx:Ljava/lang/String;

.field public final zzady:Landroid/os/Bundle;


# direct methods
.method constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzadt:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzadu:J

    .line 4
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzadv:Z

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzadw:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzal;->origin:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzadx:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzady:Landroid/os/Bundle;

    .line 9
    return-void
.end method

.method public static final zzc(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzal;
    .registers 12

    .line 10
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzal;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v10
.end method

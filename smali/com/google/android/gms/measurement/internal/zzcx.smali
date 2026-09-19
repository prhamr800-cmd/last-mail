###### Class com.google.android.gms.measurement.internal.zzcx (com.google.android.gms.measurement.internal.zzcx)
.class public final Lcom/google/android/gms/measurement/internal/zzcx;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field zzadv:Z

.field zzadx:Ljava/lang/String;

.field zzaps:Ljava/lang/String;

.field zzapt:Ljava/lang/String;

.field zzaqm:Ljava/lang/Boolean;

.field zzarj:Lcom/google/android/gms/measurement/internal/zzal;

.field final zzri:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzal;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzadv:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzri:Landroid/content/Context;

    .line 7
    nop

    .line 8
    if-eqz p2, :cond_39

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzarj:Lcom/google/android/gms/measurement/internal/zzal;

    .line 10
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->zzadx:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzadx:Ljava/lang/String;

    .line 11
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->origin:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzaps:Ljava/lang/String;

    .line 12
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->zzadw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzapt:Ljava/lang/String;

    .line 13
    iget-boolean p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->zzadv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzadv:Z

    .line 14
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->zzady:Landroid/os/Bundle;

    if-eqz p1, :cond_39

    .line 15
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzal;->zzady:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcx;->zzaqm:Ljava/lang/Boolean;

    .line 17
    :cond_39
    return-void
.end method

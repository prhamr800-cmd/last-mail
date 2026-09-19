###### Class com.google.android.gms.measurement.internal.zzl (com.google.android.gms.measurement.internal.zzl)
.class public final Lcom/google/android/gms/measurement/internal/zzl;
.super Ljava/lang/Object;


# instance fields
.field private final zzahd:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Z

    .line 3
    return-void
.end method

.method public static isMainThread()Z
    .registers 2

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

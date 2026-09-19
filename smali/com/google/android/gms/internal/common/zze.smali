###### Class com.google.android.gms.internal.common.zze (com.google.android.gms.internal.common.zze)
.class public Lcom/google/android/gms/internal/common/zze;
.super Landroid/os/Handler;


# static fields
.field private static volatile zzit:Lcom/google/android/gms/internal/common/zzf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/common/zze;->zzit:Lcom/google/android/gms/internal/common/zzf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    return-void
.end method

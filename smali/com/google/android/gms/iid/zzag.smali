###### Class com.google.android.gms.iid.zzag (com.google.android.gms.iid.zzag)
.class final Lcom/google/android/gms/iid/zzag;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic zzcx:Lcom/google/android/gms/iid/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzaf;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/iid/zzag;->zzcx:Lcom/google/android/gms/iid/zzaf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/iid/zzag;->zzcx:Lcom/google/android/gms/iid/zzaf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzaf;->zze(Landroid/os/Message;)V

    return-void
.end method

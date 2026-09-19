###### Class com.google.firebase.iid.zzaj (com.google.firebase.iid.zzaj)
.class final Lcom/google/firebase/iid/zzaj;
.super Lcom/google/firebase/iid/zzak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzak<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    .line 1
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzak;-><init>(IILandroid/os/Bundle;)V

    .line 2
    return-void
.end method


# virtual methods
.method final zzab()Z
    .registers 2

    .line 3
    const/4 v0, 0x1

    return v0
.end method

.method final zzb(Landroid/os/Bundle;)V
    .registers 4

    .line 4
    const-string v0, "ack"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzak;->finish(Ljava/lang/Object;)V

    .line 6
    return-void

    .line 7
    :cond_e
    new-instance p1, Lcom/google/firebase/iid/zzal;

    const/4 v0, 0x4

    const-string v1, "Invalid response to one way request"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/iid/zzal;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzak;->zza(Lcom/google/firebase/iid/zzal;)V

    .line 8
    return-void
.end method

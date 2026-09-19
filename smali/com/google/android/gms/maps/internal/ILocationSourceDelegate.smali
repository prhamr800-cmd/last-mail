###### Class com.google.android.gms.maps.internal.ILocationSourceDelegate (com.google.android.gms.maps.internal.ILocationSourceDelegate)
.class public interface abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract activate(Lcom/google/android/gms/maps/internal/zzah;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.maps.internal.ILocationSourceDelegate.zza (com.google.android.gms.maps.internal.ILocationSourceDelegate$zza)
.class public abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_2e

    .line 16
    const/4 p1, 0x0

    return p1

    .line 14
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->deactivate()V

    .line 15
    goto :goto_29

    .line 4
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5
    if-nez p1, :cond_11

    .line 6
    const/4 p1, 0x0

    goto :goto_25

    .line 7
    :cond_11
    const-string p2, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 8
    instance-of p4, p2, Lcom/google/android/gms/maps/internal/zzah;

    if-eqz p4, :cond_1f

    .line 9
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/internal/zzah;

    goto :goto_25

    .line 10
    :cond_1f
    new-instance p2, Lcom/google/android/gms/maps/internal/zzai;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/internal/zzai;-><init>(Landroid/os/IBinder;)V

    .line 11
    move-object p1, p2

    .line 12
    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->activate(Lcom/google/android/gms/maps/internal/zzah;)V

    .line 13
    nop

    .line 17
    :goto_29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    const/4 p1, 0x1

    return p1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

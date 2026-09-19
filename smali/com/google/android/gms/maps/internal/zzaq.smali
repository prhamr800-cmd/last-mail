###### Class com.google.android.gms.maps.internal.zzaq (com.google.android.gms.maps.internal.zzaq)
.class public abstract Lcom/google/android/gms/maps/internal/zzaq;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.IOnMapReadyCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    const/4 p4, 0x1

    if-ne p1, p4, :cond_26

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5
    if-nez p1, :cond_b

    .line 6
    const/4 p1, 0x0

    goto :goto_1f

    .line 7
    :cond_b
    const-string p2, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    if-eqz v0, :cond_19

    .line 9
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    goto :goto_1f

    .line 10
    :cond_19
    new-instance p2, Lcom/google/android/gms/maps/internal/zzg;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/internal/zzg;-><init>(Landroid/os/IBinder;)V

    .line 11
    move-object p1, p2

    .line 12
    :goto_1f
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzaq;->zza(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    return p4

    .line 15
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

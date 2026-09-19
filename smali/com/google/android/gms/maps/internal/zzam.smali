###### Class com.google.android.gms.maps.internal.zzam (com.google.android.gms.maps.internal.zzam)
.class public abstract Lcom/google/android/gms/maps/internal/zzam;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.IOnMapLoadedCallback"

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
    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzam;->onMapLoaded()V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    return p2

    .line 7
    :cond_a
    const/4 p1, 0x0

    return p1
.end method

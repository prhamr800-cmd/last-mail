###### Class com.google.android.gms.maps.internal.zzd (com.google.android.gms.maps.internal.zzd)
.class public abstract Lcom/google/android/gms/maps/internal/zzd;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ICancelableCallback"

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
    packed-switch p1, :pswitch_data_12

    .line 8
    const/4 p1, 0x0

    return p1

    .line 6
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzd;->onCancel()V

    .line 7
    goto :goto_d

    .line 4
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzd;->onFinish()V

    .line 5
    nop

    .line 9
    :goto_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    const/4 p1, 0x1

    return p1

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

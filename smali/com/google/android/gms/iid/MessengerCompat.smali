###### Class com.google.android.gms.iid.MessengerCompat (com.google.android.gms.iid.MessengerCompat)
.class public Lcom/google/android/gms/iid/MessengerCompat;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/iid/MessengerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzab:Landroid/os/Messenger;

.field private zzby:Lcom/google/android/gms/iid/zzl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/iid/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/iid/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/MessengerCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    return-void

    :cond_11
    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_29

    :cond_15
    const-string v0, "com.google.android.gms.iid.IMessengerCompat"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/iid/zzl;

    if-eqz v1, :cond_23

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/iid/zzl;

    goto :goto_29

    :cond_23
    new-instance v0, Lcom/google/android/gms/iid/zzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/iid/zzm;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_29
    iput-object p1, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzby:Lcom/google/android/gms/iid/zzl;

    return-void
.end method

.method private final getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzby:Lcom/google/android/gms/iid/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/iid/zzl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {p1}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzby:Lcom/google/android/gms/iid/zzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/iid/zzl;->send(Landroid/os/Message;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzab:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzby:Lcom/google/android/gms/iid/zzl;

    invoke-interface {p2}, Lcom/google/android/gms/iid/zzl;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_a
.end method

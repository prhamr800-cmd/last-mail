###### Class com.google.firebase.iid.zzl (com.google.firebase.iid.zzl)
.class public Lcom/google/firebase/iid/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/zzl$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/iid/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzag:Landroid/os/Messenger;

.field private zzah:Lcom/google/firebase/iid/zzv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/google/firebase/iid/zzm;

    invoke-direct {v0}, Lcom/google/firebase/iid/zzm;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    return-void

    .line 4
    :cond_11
    new-instance v0, Lcom/google/firebase/iid/zzw;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/zzw;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzl;->zzah:Lcom/google/firebase/iid/zzv;

    .line 5
    return-void
.end method

.method private final getBinder()Landroid/os/IBinder;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzah:Lcom/google/firebase/iid/zzv;

    invoke-interface {v0}, Lcom/google/firebase/iid/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 11
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 12
    return v0

    .line 13
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/google/firebase/iid/zzl;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/firebase/iid/zzl;

    invoke-direct {p1}, Lcom/google/firebase/iid/zzl;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_12} :catch_13

    return p1

    .line 14
    :catch_13
    move-exception p1

    .line 15
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/iid/zzl;->getBinder()Landroid/os/IBinder;

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

    .line 6
    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    .line 7
    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/google/firebase/iid/zzl;->zzah:Lcom/google/firebase/iid/zzv;

    invoke-interface {v0, p1}, Lcom/google/firebase/iid/zzv;->send(Landroid/os/Message;)V

    .line 9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 18
    iget-object p2, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    if-eqz p2, :cond_e

    .line 19
    iget-object p2, p0, Lcom/google/firebase/iid/zzl;->zzag:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    .line 20
    :cond_e
    iget-object p2, p0, Lcom/google/firebase/iid/zzl;->zzah:Lcom/google/firebase/iid/zzv;

    invoke-interface {p2}, Lcom/google/firebase/iid/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 21
    return-void
.end method

###### Class com.google.firebase.iid.zzl.zza (com.google.firebase.iid.zzl$zza)
.class public final Lcom/google/firebase/iid/zzl$zza;
.super Ljava/lang/ClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2
    const-string v0, "com.google.android.gms.iid.MessengerCompat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 4
    const-string p1, "FirebaseInstanceId"

    const-string p2, "Using renamed FirebaseIidMessengerCompat class"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_15
    const-class p1, Lcom/google/firebase/iid/zzl;

    return-object p1

    .line 6
    :cond_18
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

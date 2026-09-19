###### Class com.google.android.gms.maps.MapFragment (com.google.android.gms.maps.MapFragment)
.class public Lcom/google/android/gms/maps/MapFragment;
.super Landroid/app/Fragment;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/MapFragment$zzb;,
        Lcom/google/android/gms/maps/MapFragment$zza;
    }
.end annotation


# instance fields
.field private final zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/MapFragment$zzb;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    .line 9
    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/maps/MapFragment;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/MapFragment;
    .registers 4

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 3

    .line 71
    const-string v0, "getMapAsync must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 73
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 52
    if-eqz p1, :cond_b

    .line 53
    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 54
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    .line 10
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->zza(Lcom/google/android/gms/maps/MapFragment$zzb;Landroid/app/Activity;)V

    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 25
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/MapFragment$zzb;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 29
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 30
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onDestroy()V

    .line 47
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 48
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onDestroyView()V

    .line 44
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 45
    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .registers 4

    .line 61
    const-string v0, "onEnterAmbient must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zza;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 65
    :cond_16
    return-void
.end method

.method public final onExitAmbient()V
    .registers 3

    .line 66
    const-string v0, "onExitAmbient must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zza;->onExitAmbient()V

    .line 70
    :cond_16
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 13
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 16
    :try_start_14
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-static {v1, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->zza(Lcom/google/android/gms/maps/MapFragment$zzb;Landroid/app/Activity;)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object p2

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/android/gms/maps/MapFragment$zzb;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_33

    .line 22
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    return-void

    .line 24
    :catchall_33
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onLowMemory()V

    .line 50
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 51
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onPause()V

    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 31
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onResume()V

    .line 33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    if-eqz p1, :cond_b

    .line 57
    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 37
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onStart()V

    .line 39
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->zzaz:Lcom/google/android/gms/maps/MapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$zzb;->onStop()V

    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 42
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

###### Class com.google.android.gms.maps.MapFragment.zza (com.google.android.gms.maps.MapFragment$zza)
.class final Lcom/google/android/gms/maps/MapFragment$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/MapLifecycleDelegate;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzba:Landroid/app/Fragment;

.field private final zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    iput-object p2, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzba:Landroid/app/Fragment;

    .line 4
    return-void
.end method


# virtual methods
.method public final getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzab;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzab;-><init>(Lcom/google/android/gms/maps/MapFragment$zza;Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->getMapAsync(Lcom/google/android/gms/maps/internal/zzap;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 71
    return-void

    .line 72
    :catch_b
    move-exception p1

    .line 73
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 13
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzba:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 16
    if-eqz v1, :cond_23

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 17
    const-string v2, "MapOptions"

    const-string v3, "MapOptions"

    .line 18
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 19
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 22
    return-void

    .line 23
    :catch_2c
    move-exception p1

    .line 24
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 25
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-static {p3, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 29
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 30
    invoke-static {v0, p3}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_21

    .line 31
    nop

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 32
    :catch_21
    move-exception p1

    .line 33
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onDestroy()V
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    return-void

    .line 57
    :catch_6
    move-exception v0

    .line 58
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onDestroyView()V
    .registers 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 52
    return-void

    .line 53
    :catch_6
    move-exception v0

    .line 54
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .registers 4

    .line 74
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 77
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 78
    return-void

    .line 79
    :catch_11
    move-exception p1

    .line 80
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onExitAmbient()V
    .registers 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onExitAmbient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    return-void

    .line 83
    :catch_6
    move-exception v0

    .line 84
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 5
    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 6
    :try_start_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-static {p3, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V

    .line 9
    invoke-static {v0, p3}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 10
    return-void

    .line 11
    :catch_1d
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onLowMemory()V
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 60
    return-void

    .line 61
    :catch_6
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onPause()V
    .registers 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onPause()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 44
    return-void

    .line 45
    :catch_6
    move-exception v0

    .line 46
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onResume()V
    .registers 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onResume()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 40
    return-void

    .line 41
    :catch_6
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 63
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 67
    return-void

    .line 68
    :catch_11
    move-exception p1

    .line 69
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onStart()V
    .registers 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onStart()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 36
    return-void

    .line 37
    :catch_6
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onStop()V
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zza;->zzbb:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onStop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 48
    return-void

    .line 49
    :catch_6
    move-exception v0

    .line 50
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

###### Class com.google.android.gms.maps.MapFragment.zzb (com.google.android.gms.maps.MapFragment$zzb)
.class final Lcom/google/android/gms/maps/MapFragment$zzb;
.super Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/DeferredLifecycleHelper<",
        "Lcom/google/android/gms/maps/MapFragment$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzba:Landroid/app/Fragment;

.field private zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapFragment$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbe:Landroid/app/Activity;

.field private final zzbf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbf:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzba:Landroid/app/Fragment;

    .line 4
    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->zzd()V

    .line 27
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/MapFragment$zzb;Landroid/app/Activity;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapFragment$zzb;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private final zzd()V
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Landroid/app/Activity;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 9
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    .line 13
    if-nez v0, :cond_26

    .line 14
    return-void

    .line 15
    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    new-instance v2, Lcom/google/android/gms/maps/MapFragment$zza;

    iget-object v3, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzba:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapFragment$zza;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/OnMapReadyCallback;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/MapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 18
    goto :goto_38

    .line 19
    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_53} :catch_56
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_53} :catch_54

    .line 20
    return-void

    .line 23
    :catch_54
    move-exception v0

    goto :goto_5d

    .line 21
    :catch_56
    move-exception v0

    .line 22
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 24
    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method protected final createDelegate(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/MapFragment$zza;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->zzd()V

    .line 7
    return-void
.end method

.method public final getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .registers 3

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$zza;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    .line 30
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$zzb;->zzbf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

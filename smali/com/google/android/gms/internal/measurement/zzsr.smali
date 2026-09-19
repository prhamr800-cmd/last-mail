###### Class com.google.android.gms.internal.measurement.zzsr (com.google.android.gms.internal.measurement.zzsr)
.class public final synthetic Lcom/google/android/gms/internal/measurement/zzsr;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzss;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzss<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzss;->zzto()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_7

    .line 2
    nop

    .line 9
    move-object p0, v0

    goto :goto_14

    .line 3
    :catch_7
    move-exception v0

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5
    :try_start_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzss;->zzto()Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_15

    .line 6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7
    nop

    .line 9
    :goto_14
    return-object p0

    .line 8
    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

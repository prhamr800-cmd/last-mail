###### Class com.google.android.gms.maps.internal.zza (com.google.android.gms.maps.internal.zza)
.class public final Lcom/google/android/gms/maps/internal/zza;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Boolean;)B
    .registers 1

    .line 5
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static zza(B)Ljava/lang/Boolean;
    .registers 1

    .line 1
    packed-switch p0, :pswitch_data_c

    .line 4
    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :pswitch_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

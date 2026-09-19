###### Class com.google.android.gms.internal.measurement.zzyi (com.google.android.gms.internal.measurement.zzyi)
.class final Lcom/google/android/gms/internal/measurement/zzyi;
.super Ljava/lang/Object;


# direct methods
.method static zzd(Lcom/google/android/gms/internal/measurement/zzun;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzyj;-><init>(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzyk;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzyk;->size()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyk;->zzal(I)B

    move-result v2

    .line 5
    const/16 v3, 0x22

    if-eq v2, v3, :cond_8b

    const/16 v3, 0x27

    if-eq v2, v3, :cond_85

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7f

    packed-switch v2, :pswitch_data_9a

    .line 26
    const/16 v4, 0x20

    if-lt v2, v4, :cond_35

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_35

    .line 27
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 28
    :cond_35
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 14
    :pswitch_55
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    goto :goto_91

    .line 10
    :pswitch_5b
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    goto :goto_91

    .line 18
    :pswitch_61
    const-string v2, "\\v"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    goto :goto_91

    .line 12
    :pswitch_67
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    goto :goto_91

    .line 16
    :pswitch_6d
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    goto :goto_91

    .line 8
    :pswitch_73
    const-string v2, "\\b"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    goto :goto_91

    .line 6
    :pswitch_79
    const-string v2, "\\a"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    goto :goto_91

    .line 20
    :cond_7f
    const-string v2, "\\\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    goto :goto_91

    .line 22
    :cond_85
    const-string v2, "\\\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    goto :goto_91

    .line 24
    :cond_8b
    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    nop

    .line 32
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 33
    :cond_95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    return-object p0

    :pswitch_data_9a
    .packed-switch 0x7
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.measurement.zzvc (com.google.android.gms.internal.measurement.zzvc)
.class final Lcom/google/android/gms/internal/measurement/zzvc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxt;


# instance fields
.field private tag:I

.field private final zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

.field private zzbvn:I

.field private zzbvo:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzuz;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 6
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzvz;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzuz;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvf:Lcom/google/android/gms/internal/measurement/zzvc;

    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzuz;)Lcom/google/android/gms/internal/measurement/zzvc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvf:Lcom/google/android/gms/internal/measurement/zzvc;

    if-eqz v0, :cond_7

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvf:Lcom/google/android/gms/internal/measurement/zzvc;

    return-object p0

    .line 3
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzvc;-><init>(Lcom/google/android/gms/internal/measurement/zzuz;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzzb;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzzb;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvd;->zzbvp:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzb;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_ae

    .line 736
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzur()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuz()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzux()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 732
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzve()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 731
    :pswitch_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvc()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 729
    :pswitch_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 725
    :pswitch_4f
    nop

    .line 726
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 727
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxq;->zzya()Lcom/google/android/gms/internal/measurement/zzxq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzxq;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxu;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzvc;->zzc(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object p1

    .line 728
    return-object p1

    .line 724
    :pswitch_61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzus()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_6a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzut()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 722
    :pswitch_73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 721
    :pswitch_7c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuu()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 720
    :pswitch_85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuv()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 719
    :pswitch_8e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzva()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 718
    :pswitch_97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 717
    :pswitch_a0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuy()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object p1

    return-object p1

    .line 716
    :pswitch_a5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_a0
        :pswitch_97
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 400
    and-int/lit8 v0, v0, 0x7

    .line 401
    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 403
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwn;

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    .line 404
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwn;

    .line 405
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuy()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzwn;->zzc(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 406
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 407
    return-void

    .line 408
    :cond_20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 409
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, p2, :cond_2d

    .line 410
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 411
    return-void

    .line 412
    :cond_2d
    goto :goto_10

    .line 413
    :cond_2e
    :goto_2e
    if-eqz p2, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzux()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 415
    return-void

    .line 416
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 417
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_52

    .line 418
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 419
    return-void

    .line 420
    :cond_52
    goto :goto_2e

    .line 402
    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1
.end method

.method private final zzau(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 23
    and-int/lit8 v0, v0, 0x7

    .line 24
    if-ne v0, p1, :cond_7

    .line 26
    return-void

    .line 25
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1
.end method

.method private static zzav(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_5

    .line 689
    return-void

    .line 688
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxd()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p0

    throw p0
.end method

.method private static zzaw(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_5

    .line 739
    return-void

    .line 738
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxd()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p0

    throw p0
.end method

.method private final zzax(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 742
    return-void

    .line 741
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iget v2, v2, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvd:I

    if-ge v1, v2, :cond_3c

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzar(I)I

    move-result v0

    .line 55
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxu;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvc:I

    .line 57
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxt;Lcom/google/android/gms/internal/measurement/zzvk;)V

    .line 58
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzxu;->zzy(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzuz;->zzao(I)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvc:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzuz;->zzbvc:I

    .line 61
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzas(I)V

    .line 62
    return-object v1

    .line 53
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxc()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    .line 64
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 65
    ushr-int/lit8 v1, v1, 0x3

    .line 66
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 67
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    .line 68
    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxu;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxt;Lcom/google/android/gms/internal/measurement/zzvk;)V

    .line 70
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzxu;->zzy(Ljava/lang/Object;)V

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_25

    if-ne p1, p2, :cond_20

    .line 73
    nop

    .line 74
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    .line 75
    return-object v1

    .line 72
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxd()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    .line 76
    :catchall_25
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    return v0
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zza(Ljava/util/List;Z)V

    .line 396
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvc;->zzc(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 422
    and-int/lit8 v0, v0, 0x7

    .line 423
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 425
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 426
    :goto_9
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzvc;->zzc(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v1

    if-nez v1, :cond_29

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    if-eqz v1, :cond_1d

    goto :goto_29

    .line 429
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v1

    .line 430
    if-eq v1, v0, :cond_28

    .line 431
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 432
    return-void

    .line 433
    :cond_28
    goto :goto_9

    .line 428
    :cond_29
    :goto_29
    return-void

    .line 424
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzwx;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzwx<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 691
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzar(I)I

    move-result v0

    .line 693
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzwx;->zzcbn:Ljava/lang/Object;

    .line 694
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzwx;->zzbsa:Ljava/lang/Object;

    .line 695
    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvo()I

    move-result v3

    .line 696
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_61

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_6a

    if-nez v4, :cond_61

    .line 697
    packed-switch v3, :pswitch_data_72

    .line 704
    :try_start_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvp()Z

    move-result v3

    goto :goto_46

    .line 700
    :pswitch_2d
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzwx;->zzcbo:Lcom/google/android/gms/internal/measurement/zzzb;

    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzwx;->zzbsa:Ljava/lang/Object;

    .line 701
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 702
    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/measurement/zzvc;->zza(Lcom/google/android/gms/internal/measurement/zzzb;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    nop

    .line 695
    move-object v2, v3

    goto :goto_14

    .line 698
    :pswitch_3c
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzwx;->zzcbm:Lcom/google/android/gms/internal/measurement/zzzb;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzvc;->zza(Lcom/google/android/gms/internal/measurement/zzzb;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object v3

    .line 699
    nop

    .line 695
    move-object v1, v3

    goto :goto_14

    .line 704
    :goto_46
    if-eqz v3, :cond_49

    .line 706
    goto :goto_14

    .line 705
    :cond_49
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzwe;

    const-string v4, "Unable to parse map entry."

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzwe;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_51
    .catch Lcom/google/android/gms/internal/measurement/zzwf; {:try_start_28 .. :try_end_51} :catch_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_6a

    .line 707
    :catch_51
    move-exception v3

    .line 708
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzvp()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 710
    goto :goto_14

    .line 709
    :cond_59
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzwe;

    const-string p2, "Unable to parse map entry."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzwe;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_61
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_6a

    .line 712
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzas(I)V

    .line 713
    return-void

    .line 714
    :catchall_6a
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzas(I)V

    throw p1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_2d
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvc;->zzd(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzxu<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 435
    and-int/lit8 v0, v0, 0x7

    .line 436
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 438
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 439
    :goto_9
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzvc;->zzd(Lcom/google/android/gms/internal/measurement/zzxu;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v1

    if-nez v1, :cond_29

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    if-eqz v1, :cond_1d

    goto :goto_29

    .line 442
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v1

    .line 443
    if-eq v1, v0, :cond_28

    .line 444
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 445
    return-void

    .line 446
    :cond_28
    goto :goto_9

    .line 441
    :cond_29
    :goto_29
    return-void

    .line 437
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1
.end method

.method public final zzh(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvh;

    if-eqz v0, :cond_54

    .line 92
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvh;

    .line 93
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 94
    and-int/lit8 v0, v0, 0x7

    .line 95
    packed-switch v0, :pswitch_data_aa

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 96
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 99
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzvh;->zzd(D)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_22

    .line 101
    return-void

    .line 102
    :goto_34
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzvh;->zzd(D)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 104
    return-void

    .line 105
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 106
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_53

    .line 107
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 108
    return-void

    .line 109
    :cond_53
    goto :goto_34

    .line 111
    :cond_54
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 112
    and-int/lit8 v0, v0, 0x7

    .line 113
    packed-switch v0, :pswitch_data_b2

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 114
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 117
    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_70

    .line 119
    return-void

    .line 120
    :goto_86
    :pswitch_86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 122
    return-void

    .line 123
    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_a9

    .line 125
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 126
    return-void

    .line 127
    :cond_a9
    goto :goto_86

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_34
        :pswitch_12
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_86
        :pswitch_60
    .end packed-switch
.end method

.method public final zzi(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_59

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvu;

    .line 131
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 132
    and-int/lit8 p1, p1, 0x7

    .line 133
    if-eq p1, v2, :cond_36

    if-ne p1, v1, :cond_31

    .line 140
    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvu;->zzc(F)V

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 142
    return-void

    .line 143
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 144
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_30

    .line 145
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 146
    return-void

    .line 147
    :cond_30
    goto :goto_11

    .line 148
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 134
    :cond_36
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int v3, v1, p1

    .line 137
    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvu;->zzc(F)V

    .line 138
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v3, :cond_47

    .line 139
    return-void

    .line 149
    :cond_59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 150
    and-int/lit8 v0, v0, 0x7

    .line 151
    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    .line 158
    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 160
    return-void

    .line 161
    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 162
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_84

    .line 163
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 164
    return-void

    .line 165
    :cond_84
    goto :goto_61

    .line 166
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 152
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 153
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 155
    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_9a

    .line 157
    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzws;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 169
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 170
    and-int/lit8 p1, p1, 0x7

    .line 171
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 174
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzur()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 175
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 176
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 177
    return-void

    .line 186
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 178
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzur()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 179
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 180
    return-void

    .line 181
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 182
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 183
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 184
    return-void

    .line 185
    :cond_56
    goto :goto_37

    .line 187
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 188
    and-int/lit8 v0, v0, 0x7

    .line 189
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 192
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzur()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 194
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 195
    return-void

    .line 204
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 196
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzur()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 198
    return-void

    .line 199
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 200
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 201
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 202
    return-void

    .line 203
    :cond_ad
    goto :goto_8a
.end method

.method public final zzk(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzws;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 207
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 208
    and-int/lit8 p1, p1, 0x7

    .line 209
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 212
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzus()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 213
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 214
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 215
    return-void

    .line 224
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 216
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzus()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 217
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 218
    return-void

    .line 219
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 220
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 221
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 222
    return-void

    .line 223
    :cond_56
    goto :goto_37

    .line 225
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 226
    and-int/lit8 v0, v0, 0x7

    .line 227
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 230
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzus()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 232
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 233
    return-void

    .line 242
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 234
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzus()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 236
    return-void

    .line 237
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 238
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 239
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 240
    return-void

    .line 241
    :cond_ad
    goto :goto_8a
.end method

.method public final zzl(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 244
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 245
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 246
    and-int/lit8 p1, p1, 0x7

    .line 247
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 248
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 249
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 250
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzut()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 251
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 253
    return-void

    .line 262
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 254
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzut()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 255
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 256
    return-void

    .line 257
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 258
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 259
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 260
    return-void

    .line 261
    :cond_56
    goto :goto_37

    .line 263
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 264
    and-int/lit8 v0, v0, 0x7

    .line 265
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 268
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzut()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 270
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 271
    return-void

    .line 280
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 272
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzut()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 274
    return-void

    .line 275
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 276
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 277
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 278
    return-void

    .line 279
    :cond_ad
    goto :goto_8a
.end method

.method public final zzm(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v0, :cond_54

    .line 282
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzws;

    .line 283
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 284
    and-int/lit8 v0, v0, 0x7

    .line 285
    packed-switch v0, :pswitch_data_aa

    .line 300
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 286
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 287
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 288
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 289
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuu()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_22

    .line 291
    return-void

    .line 292
    :goto_34
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuu()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 294
    return-void

    .line 295
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 296
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_53

    .line 297
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 298
    return-void

    .line 299
    :cond_53
    goto :goto_34

    .line 301
    :cond_54
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 302
    and-int/lit8 v0, v0, 0x7

    .line 303
    packed-switch v0, :pswitch_data_b2

    .line 318
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 304
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 305
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 307
    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_70

    .line 309
    return-void

    .line 310
    :goto_86
    :pswitch_86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 312
    return-void

    .line 313
    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 314
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_a9

    .line 315
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 316
    return-void

    .line 317
    :cond_a9
    goto :goto_86

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_34
        :pswitch_12
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_86
        :pswitch_60
    .end packed-switch
.end method

.method public final zzn(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_59

    .line 320
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 321
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 322
    and-int/lit8 p1, p1, 0x7

    .line 323
    if-eq p1, v2, :cond_36

    if-ne p1, v1, :cond_31

    .line 330
    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 331
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 332
    return-void

    .line 333
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 334
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_30

    .line 335
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 336
    return-void

    .line 337
    :cond_30
    goto :goto_11

    .line 338
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 324
    :cond_36
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 325
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 326
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int v3, v1, p1

    .line 327
    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 328
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v3, :cond_47

    .line 329
    return-void

    .line 339
    :cond_59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 340
    and-int/lit8 v0, v0, 0x7

    .line 341
    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    .line 348
    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 350
    return-void

    .line 351
    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 352
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_84

    .line 353
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 354
    return-void

    .line 355
    :cond_84
    goto :goto_61

    .line 356
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 342
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 343
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 344
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 345
    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_9a

    .line 347
    return-void
.end method

.method public final zzo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzul;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 358
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzul;

    .line 359
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 360
    and-int/lit8 p1, p1, 0x7

    .line 361
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 362
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 363
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 364
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuw()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzul;->addBoolean(Z)V

    .line 365
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 366
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 367
    return-void

    .line 376
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 368
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuw()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzul;->addBoolean(Z)V

    .line 369
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 370
    return-void

    .line 371
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 372
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 373
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 374
    return-void

    .line 375
    :cond_56
    goto :goto_37

    .line 377
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 378
    and-int/lit8 v0, v0, 0x7

    .line 379
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 382
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 384
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 385
    return-void

    .line 394
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 386
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 388
    return-void

    .line 389
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 390
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 391
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 392
    return-void

    .line 393
    :cond_ad
    goto :goto_8a
.end method

.method public final zzp(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zza(Ljava/util/List;Z)V

    .line 398
    return-void
.end method

.method public final zzq(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzun;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 448
    and-int/lit8 v0, v0, 0x7

    .line 449
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 451
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzuy()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 453
    return-void

    .line 454
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 455
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_24

    .line 456
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 457
    return-void

    .line 458
    :cond_24
    goto :goto_7

    .line 450
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1
.end method

.method public final zzr(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 461
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 462
    and-int/lit8 p1, p1, 0x7

    .line 463
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 464
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 465
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 466
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 467
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 468
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 469
    return-void

    .line 478
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 470
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 471
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 472
    return-void

    .line 473
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 474
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 475
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 476
    return-void

    .line 477
    :cond_56
    goto :goto_37

    .line 479
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 480
    and-int/lit8 v0, v0, 0x7

    .line 481
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 484
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 486
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 487
    return-void

    .line 496
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 488
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 490
    return-void

    .line 491
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 492
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 493
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 494
    return-void

    .line 495
    :cond_ad
    goto :goto_8a
.end method

.method public final zzs(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 498
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 499
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 500
    and-int/lit8 p1, p1, 0x7

    .line 501
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 502
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 503
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 504
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzva()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 505
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 506
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 507
    return-void

    .line 516
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 508
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzva()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 509
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 510
    return-void

    .line 511
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 512
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 513
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 514
    return-void

    .line 515
    :cond_56
    goto :goto_37

    .line 517
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 518
    and-int/lit8 v0, v0, 0x7

    .line 519
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 520
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 522
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzva()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 524
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 525
    return-void

    .line 534
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 526
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzva()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 528
    return-void

    .line 529
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 530
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 531
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 532
    return-void

    .line 533
    :cond_ad
    goto :goto_8a
.end method

.method public final zzt(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_59

    .line 536
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 537
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 538
    and-int/lit8 p1, p1, 0x7

    .line 539
    if-eq p1, v2, :cond_36

    if-ne p1, v1, :cond_31

    .line 546
    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvb()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 547
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 548
    return-void

    .line 549
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 550
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_30

    .line 551
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 552
    return-void

    .line 553
    :cond_30
    goto :goto_11

    .line 554
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 540
    :cond_36
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 542
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int v3, v1, p1

    .line 543
    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvb()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 544
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v3, :cond_47

    .line 545
    return-void

    .line 555
    :cond_59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 556
    and-int/lit8 v0, v0, 0x7

    .line 557
    if-eq v0, v2, :cond_8a

    if-ne v0, v1, :cond_85

    .line 564
    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 566
    return-void

    .line 567
    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 568
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_84

    .line 569
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 570
    return-void

    .line 571
    :cond_84
    goto :goto_61

    .line 572
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 558
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 559
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzaw(I)V

    .line 560
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 561
    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_9a

    .line 563
    return-void
.end method

.method public final zzu(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v0, :cond_54

    .line 574
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzws;

    .line 575
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 576
    and-int/lit8 v0, v0, 0x7

    .line 577
    packed-switch v0, :pswitch_data_aa

    .line 592
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 578
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 579
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 580
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 581
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvc()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 582
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_22

    .line 583
    return-void

    .line 584
    :goto_34
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvc()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 585
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 586
    return-void

    .line 587
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 588
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_53

    .line 589
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 590
    return-void

    .line 591
    :cond_53
    goto :goto_34

    .line 593
    :cond_54
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 594
    and-int/lit8 v0, v0, 0x7

    .line 595
    packed-switch v0, :pswitch_data_b2

    .line 610
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 596
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 597
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzav(I)V

    .line 598
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 599
    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_70

    .line 601
    return-void

    .line 602
    :goto_86
    :pswitch_86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 604
    return-void

    .line 605
    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 606
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_a9

    .line 607
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 608
    return-void

    .line 609
    :cond_a9
    goto :goto_86

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_34
        :pswitch_12
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_86
        :pswitch_60
    .end packed-switch
.end method

.method public final zzur()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzur()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzus()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzus()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzut()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzut()I

    move-result v0

    return v0
.end method

.method public final zzuu()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzuv()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuv()I

    move-result v0

    return v0
.end method

.method public final zzuw()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuw()Z

    move-result v0

    return v0
.end method

.method public final zzux()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzux()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzuy()Lcom/google/android/gms/internal/measurement/zzun;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuy()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v0

    return-object v0
.end method

.method public final zzuz()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    return v0
.end method

.method public final zzv(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 612
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 613
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 614
    and-int/lit8 p1, p1, 0x7

    .line 615
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 616
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 617
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 618
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 619
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 620
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 621
    return-void

    .line 630
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 622
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvd()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzbn(I)V

    .line 623
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 624
    return-void

    .line 625
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 626
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 627
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 628
    return-void

    .line 629
    :cond_56
    goto :goto_37

    .line 631
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 632
    and-int/lit8 v0, v0, 0x7

    .line 633
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 634
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 635
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 636
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 638
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 639
    return-void

    .line 648
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 640
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 642
    return-void

    .line 643
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 644
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 645
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 646
    return-void

    .line 647
    :cond_ad
    goto :goto_8a
.end method

.method public final zzva()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzva()I

    move-result v0

    return v0
.end method

.method public final zzvb()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvb()I

    move-result v0

    return v0
.end method

.method public final zzvc()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzvd()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvd()I

    move-result v0

    return v0
.end method

.method public final zzve()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzvc;->zzau(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzve()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzvo()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    if-eqz v0, :cond_c

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    goto :goto_14

    .line 12
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 13
    :goto_14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    if-ne v0, v1, :cond_1f

    goto :goto_24

    .line 15
    :cond_1f
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 16
    ushr-int/lit8 v0, v0, 0x3

    .line 17
    return v0

    .line 14
    :cond_24
    :goto_24
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzvp()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvn:I

    if-ne v0, v1, :cond_f

    goto :goto_18

    .line 21
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzap(I)Z

    move-result v0

    return v0

    .line 20
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public final zzw(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzws;

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    .line 650
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 651
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 652
    and-int/lit8 p1, p1, 0x7

    .line 653
    if-eqz p1, :cond_37

    if-ne p1, v1, :cond_32

    .line 654
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result p1

    .line 655
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, p1

    .line 656
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzve()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 657
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result p1

    if-lt p1, v1, :cond_1d

    .line 658
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 659
    return-void

    .line 668
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 660
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzve()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzws;->zzbj(J)V

    .line 661
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 662
    return-void

    .line 663
    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result p1

    .line 664
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq p1, v1, :cond_56

    .line 665
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 666
    return-void

    .line 667
    :cond_56
    goto :goto_37

    .line 669
    :cond_57
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    .line 670
    and-int/lit8 v0, v0, 0x7

    .line 671
    if-eqz v0, :cond_8a

    if-ne v0, v1, :cond_85

    .line 672
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuz()I

    move-result v0

    .line 673
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v1

    add-int/2addr v1, v0

    .line 674
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzve()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    if-lt v0, v1, :cond_6c

    .line 676
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvc;->zzax(I)V

    .line 677
    return-void

    .line 686
    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 678
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzve()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 680
    return-void

    .line 681
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvm:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 682
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvc;->tag:I

    if-eq v0, v1, :cond_ad

    .line 683
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvc;->zzbvo:I

    .line 684
    return-void

    .line 685
    :cond_ad
    goto :goto_8a
.end method

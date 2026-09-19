###### Class com.google.android.gms.measurement.internal.zzdt (com.google.android.gms.measurement.internal.zzdt)
.class final Lcom/google/android/gms/measurement/internal/zzdt;
.super Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    return-void
.end method

.method private static zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 186
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)[B
    .registers 36
    .param p1    # Lcom/google/android/gms/measurement/internal/zzae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 4
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzdt;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgf()V

    .line 6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzalr:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_31

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-array v0, v14, [B

    return-object v0

    .line 11
    :cond_31
    const-string v2, "_iap"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_56

    const-string v2, "_iapx"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3, v15, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-object v13

    .line 17
    :cond_56
    new-instance v11, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-direct {v11}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 19
    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v12

    .line 20
    if-nez v12, :cond_83

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    new-array v0, v14, [B
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_486

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 24
    return-object v0

    .line 25
    :cond_83
    :try_start_83
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-array v0, v14, [B
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_486

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 29
    return-object v0

    .line 30
    :cond_a0
    :try_start_a0
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v9}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 31
    const/4 v10, 0x1

    new-array v2, v10, [Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v9, v2, v14

    iput-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxt:Ljava/lang/Integer;

    .line 33
    const-string v2, "android"

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayb:Ljava/lang/String;

    .line 34
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 35
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzage:Ljava/lang/String;

    .line 36
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzts:Ljava/lang/String;

    .line 37
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v2

    .line 38
    const-wide/32 v4, -0x80000000

    cmp-long v6, v2, v4

    if-nez v6, :cond_d5

    move-object v2, v13

    goto :goto_da

    :cond_d5
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_da
    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayn:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayf:Ljava/lang/Long;

    .line 40
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzafx:Ljava/lang/String;

    .line 41
    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzafx:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxc:Ljava/lang/String;

    .line 43
    :cond_fa
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayj:Ljava/lang/Long;

    .line 44
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzdt;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 45
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzie()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    iget-object v3, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzau(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 47
    iput-object v13, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayt:Ljava/lang/String;

    .line 48
    :cond_120
    nop

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzcb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v3

    if-eqz v3, :cond_173

    if-eqz v2, :cond_173

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_13d
    .catchall {:try_start_a0 .. :try_end_13d} :catchall_486

    if-nez v3, :cond_173

    .line 52
    :try_start_13f
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzdt;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;
    :try_end_14f
    .catch Ljava/lang/SecurityException; {:try_start_13f .. :try_end_14f} :catch_157
    .catchall {:try_start_13f .. :try_end_14f} :catchall_486

    .line 55
    nop

    .line 61
    :try_start_150
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayi:Ljava/lang/Boolean;

    goto :goto_173

    .line 56
    :catch_157
    move-exception v0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-array v0, v14, [B
    :try_end_16b
    .catchall {:try_start_150 .. :try_end_16b} :catchall_486

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 60
    return-object v0

    .line 62
    :cond_173
    :goto_173
    :try_start_173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 64
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 65
    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayd:Ljava/lang/String;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 68
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 69
    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzayc:Ljava/lang/String;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zziw()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzaye:Ljava/lang/Integer;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzix()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzaid:Ljava/lang/String;
    :try_end_1a2
    .catchall {:try_start_173 .. :try_end_1a2} :catchall_486

    .line 72
    nop

    .line 73
    :try_start_1a3
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzdt;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzafw:Ljava/lang/String;
    :try_end_1b3
    .catch Ljava/lang/SecurityException; {:try_start_1a3 .. :try_end_1b3} :catch_469
    .catchall {:try_start_1a3 .. :try_end_1b3} :catchall_486

    .line 75
    nop

    .line 81
    :try_start_1b4
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzafz:Ljava/lang/String;

    .line 82
    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzbn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 84
    nop

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzo;->zzaw(Ljava/lang/String;)Z

    move-result v4

    .line 86
    const-wide/16 v23, 0x0

    if-eqz v4, :cond_219

    .line 87
    nop

    .line 88
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ef

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzft;

    .line 89
    const-string v6, "_lte"

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ee

    .line 90
    nop

    .line 91
    goto :goto_1f0

    .line 92
    :cond_1ee
    goto :goto_1d6

    .line 93
    :cond_1ef
    move-object v5, v13

    :goto_1f0
    if-eqz v5, :cond_1f6

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    if-nez v4, :cond_219

    .line 94
    :cond_1f6
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzft;

    const-string v18, "auto"

    const-string v19, "_lte"

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    .line 96
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    .line 99
    :cond_219
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzgo;

    .line 100
    const/4 v4, 0x0

    :goto_220
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_257

    .line 101
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>()V

    .line 102
    aput-object v5, v2, v4

    .line 103
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzft;

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzft;->zzaux:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgo;Ljava/lang/Object;)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_220

    .line 107
    :cond_257
    nop

    .line 108
    iput-object v2, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    .line 109
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zziy()Landroid/os/Bundle;

    move-result-object v7

    .line 110
    const-string v2, "_c"

    const-wide/16 v3, 0x1

    invoke-virtual {v7, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v5, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 112
    const-string v2, "_r"

    invoke-virtual {v7, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    const-string v2, "_o"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    iget-object v5, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzdb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a6

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    const-string v5, "_dbg"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    const-string v5, "_r"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v7, v5, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_2a6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 118
    if-nez v2, :cond_2eb

    .line 119
    nop

    .line 120
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v18, 0x0

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    const-wide/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 v27, v2

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v29, v7

    move-wide/from16 v7, v18

    move-object/from16 v30, v9

    move-wide/from16 v9, v27

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-wide/from16 v11, v20

    move-object/from16 v13, v16

    move-object/from16 v14, v22

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 124
    move-object/from16 v12, v17

    move-wide/from16 v9, v23

    goto :goto_2fe

    .line 121
    :cond_2eb
    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    .line 122
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    .line 123
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zzai(J)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v17

    .line 124
    move-wide v9, v3

    move-object/from16 v12, v17

    :goto_2fe
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 125
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzdt;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v11, v29

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 126
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    .line 127
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzgi;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object/from16 v5, v30

    iput-object v3, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 128
    iget-wide v6, v13, Lcom/google/android/gms/measurement/internal/zzz;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 129
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 130
    iget-wide v6, v13, Lcom/google/android/gms/measurement/internal/zzz;->zzaif:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    .line 131
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzgj;

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 132
    nop

    .line 133
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_34c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_375

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 135
    iget-object v9, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    add-int/lit8 v10, v6, 0x1

    aput-object v8, v9, v6

    .line 136
    iput-object v7, v8, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 137
    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/Object;)V

    .line 139
    nop

    .line 133
    move v6, v10

    goto :goto_34c

    .line 140
    :cond_375
    nop

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zzb;->zzmp()Lcom/google/android/gms/internal/measurement/zzft$zzb$zza;

    move-result-object v3

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft$zza;->zzmn()Lcom/google/android/gms/internal/measurement/zzft$zza$zza;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    .line 143
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzft$zza$zza;->zzar(J)Lcom/google/android/gms/internal/measurement/zzft$zza$zza;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 144
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzft$zza$zza;->zzdc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzft$zza$zza;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvx$zza;->zzwv()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zza;

    .line 146
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzft$zzb$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzft$zza;)Lcom/google/android/gms/internal/measurement/zzft$zzb$zza;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvx$zza;->zzwv()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft$zzb;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzayw:Lcom/google/android/gms/internal/measurement/zzft$zzb;

    .line 148
    nop

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjs()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    .line 150
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    .line 151
    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgi;[Lcom/google/android/gms/internal/measurement/zzgo;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaym:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 152
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    .line 153
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    .line 154
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v2

    .line 155
    cmp-long v0, v2, v23

    if-eqz v0, :cond_3c7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_3c8

    :cond_3c7
    move-object v13, v7

    :goto_3c8
    iput-object v13, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaya:Ljava/lang/Long;

    .line 156
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v8

    .line 157
    cmp-long v0, v8, v23

    if-nez v0, :cond_3d3

    .line 158
    goto :goto_3d4

    .line 159
    :cond_3d3
    move-wide v2, v8

    :goto_3d4
    cmp-long v0, v2, v23

    if-eqz v0, :cond_3dd

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_3de

    :cond_3dd
    move-object v13, v7

    :goto_3de
    iput-object v13, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxz:Ljava/lang/Long;

    .line 160
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzg;->zzhm()V

    .line 161
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzg;->zzhj()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzayk:Ljava/lang/Integer;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzhh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzayg:Ljava/lang/Long;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxw:Ljava/lang/Long;

    .line 164
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Boolean;

    .line 165
    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 166
    iget-object v2, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_430
    .catchall {:try_start_1b4 .. :try_end_430} :catchall_486

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 170
    nop

    .line 172
    :try_start_438
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    .line 173
    new-array v0, v0, [B

    .line 174
    nop

    .line 175
    array-length v2, v0

    invoke-static {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    .line 176
    nop

    .line 177
    move-object/from16 v3, v31

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb([B)[B

    move-result-object v0
    :try_end_455
    .catch Ljava/io/IOException; {:try_start_438 .. :try_end_455} :catch_456

    return-object v0

    .line 180
    :catch_456
    move-exception v0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    .line 183
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-object v7

    .line 76
    :catch_469
    move-exception v0

    const/4 v4, 0x0

    .line 77
    :try_start_46b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-array v0, v4, [B
    :try_end_47e
    .catchall {:try_start_46b .. :try_end_47e} :catchall_486

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 80
    return-object v0

    .line 171
    :catchall_486
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 3
    const/4 v0, 0x0

    return v0
.end method

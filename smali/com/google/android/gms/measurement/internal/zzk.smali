###### Class com.google.android.gms.measurement.internal.zzk (com.google.android.gms.measurement.internal.zzk)
.class final Lcom/google/android/gms/measurement/internal/zzk;
.super Lcom/google/android/gms/measurement/internal/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;
    .registers 5

    .line 670
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzga;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 671
    :catch_e
    move-exception p1

    .line 672
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;
    .registers 5

    .line 667
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzga;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    .line 668
    :catch_c
    move-exception p1

    .line 669
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfy;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgj;J)Ljava/lang/Boolean;
    .registers 14

    .line 454
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 455
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/measurement/internal/zzk;->zza(JLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object p4

    .line 456
    if-nez p4, :cond_f

    .line 457
    return-object v2

    .line 458
    :cond_f
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_1a

    .line 459
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 460
    :cond_1a
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 461
    iget-object p5, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v0, p5

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v0, :cond_4d

    aget-object v4, p5, v3

    .line 462
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "null or empty param name in filter. event"

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 466
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    return-object v2

    .line 468
    :cond_45
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 470
    :cond_4d
    new-instance p5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 471
    array-length v0, p3

    const/4 v3, 0x0

    :goto_54
    if-ge v3, v0, :cond_a7

    aget-object v4, p3, v3

    .line 472
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-interface {p4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 473
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz v5, :cond_6c

    .line 474
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-interface {p5, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 475
    :cond_6c
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-eqz v5, :cond_78

    .line 476
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    invoke-interface {p5, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 477
    :cond_78
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-eqz v5, :cond_84

    .line 478
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    invoke-interface {p5, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 479
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Unknown value for param. event, param"

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    iget-object p5, v4, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 483
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    return-object v2

    .line 485
    :cond_a4
    :goto_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 486
    :cond_a7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length p3, p1

    const/4 p4, 0x0

    :goto_ab
    const/4 v0, 0x1

    if-ge p4, p3, :cond_217

    aget-object v3, p1, p4

    .line 487
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 488
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    .line 489
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Event has empty param name. event"

    .line 492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 493
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-object v2

    .line 495
    :cond_d6
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 496
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_11e

    .line 497
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v7, :cond_100

    .line 498
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "No number filter for long param. event, param"

    .line 500
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 502
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    return-object v2

    .line 504
    :cond_100
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzk;->zza(JLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object v3

    .line 505
    if-nez v3, :cond_10f

    .line 506
    return-object v2

    .line 507
    :cond_10f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_11c

    .line 508
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 509
    :cond_11c
    goto/16 :goto_195

    :cond_11e
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_161

    .line 510
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v7, :cond_144

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "No number filter for double param. event, param"

    .line 513
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 515
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    return-object v2

    .line 517
    :cond_144
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzk;->zza(DLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object v3

    .line 518
    if-nez v3, :cond_153

    .line 519
    return-object v2

    .line 520
    :cond_153
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_160

    .line 521
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 522
    :cond_160
    goto :goto_195

    :cond_161
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1d5

    .line 523
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-eqz v7, :cond_172

    .line 524
    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-direct {p0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgc;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_184

    .line 525
    :cond_172
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v7, :cond_1b7

    .line 526
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_199

    .line 527
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object v3

    .line 540
    :goto_184
    if-nez v3, :cond_187

    .line 541
    return-object v2

    .line 542
    :cond_187
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    if-eqz v0, :cond_194

    .line 543
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 544
    :cond_194
    nop

    .line 557
    :goto_195
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_ab

    .line 528
    :cond_199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Invalid param value for number filter. event, param"

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 531
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 532
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    return-object v2

    .line 534
    :cond_1b7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "No filter for String param. event, param"

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 538
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    return-object v2

    .line 544
    :cond_1d5
    if-nez v6, :cond_1f9

    .line 545
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Missing param for filter. event, param"

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 549
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 551
    :cond_1f9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Unknown param type. event, param"

    .line 553
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p4

    invoke-virtual {p4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 555
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    return-object v2

    .line 558
    :cond_217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzgb;Lcom/google/android/gms/internal/measurement/zzgo;)Ljava/lang/Boolean;
    .registers 7

    .line 559
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    .line 560
    const/4 v0, 0x0

    if-nez p1, :cond_1d

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "Missing property filter. property"

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 564
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    return-object v0

    .line 566
    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 567
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    if-eqz v2, :cond_56

    .line 568
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v2, :cond_45

    .line 569
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "No number filter for long property. property"

    .line 571
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 572
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    return-object v0

    .line 574
    :cond_45
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 575
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(JLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object p1

    .line 576
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 577
    :cond_56
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-eqz v2, :cond_87

    .line 578
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v2, :cond_76

    .line 579
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "No number filter for double property. property"

    .line 581
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 582
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    return-object v0

    .line 584
    :cond_76
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    .line 585
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(DLcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object p1

    .line 586
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 587
    :cond_87
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-eqz v2, :cond_e7

    .line 588
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v2, :cond_da

    .line 589
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v2, :cond_ab

    .line 590
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "No string or number filter defined. property"

    .line 592
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 593
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d9

    .line 594
    :cond_ab
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 595
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    .line 596
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;

    move-result-object p1

    .line 597
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 598
    :cond_c0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 599
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "Invalid user property value for Numeric number filter. property, value"

    .line 600
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    .line 601
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 602
    :goto_d9
    return-object v0

    .line 603
    :cond_da
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 604
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgc;)Ljava/lang/Boolean;

    move-result-object p1

    .line 605
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 606
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 607
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "User property has no value, property"

    .line 608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 609
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    return-object v0
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 611
    if-nez p0, :cond_4

    .line 612
    const/4 p0, 0x0

    return-object p0

    .line 613
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 645
    return-object v0

    .line 646
    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_10

    .line 647
    if-eqz p5, :cond_f

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 648
    :cond_f
    return-object v0

    .line 649
    :cond_10
    if-nez p4, :cond_13

    .line 650
    return-object v0

    .line 651
    :cond_13
    if-nez p3, :cond_1f

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    goto :goto_1f

    :cond_19
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 652
    :cond_1f
    :goto_1f
    packed-switch p2, :pswitch_data_76

    .line 666
    return-object v0

    .line 665
    :pswitch_23
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 664
    :pswitch_2c
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 663
    :pswitch_35
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 662
    :pswitch_3e
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 661
    :pswitch_47
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 653
    :pswitch_50
    if-eqz p3, :cond_54

    const/4 p2, 0x0

    goto :goto_56

    :cond_54
    const/16 p2, 0x42

    .line 654
    :goto_56
    :try_start_56
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 655
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_66
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_56 .. :try_end_66} :catch_67

    return-object p1

    .line 656
    :catch_67
    move-exception p1

    .line 657
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    .line 659
    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    return-object v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_50
        :pswitch_47
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/Boolean;
    .registers 7

    .line 673
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 674
    return-object v1

    .line 675
    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzga;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p1

    .line 676
    :catch_14
    move-exception p1

    .line 677
    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgc;)Ljava/lang/Boolean;
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 614
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 616
    return-object v0

    .line 617
    :cond_7
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    if-eqz v1, :cond_8f

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_8f

    .line 619
    :cond_15
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 620
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2d

    .line 621
    :cond_27
    return-object v0

    .line 622
    :cond_28
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-nez v1, :cond_2d

    .line 623
    return-object v0

    .line 624
    :cond_2d
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 625
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 626
    const/4 v6, 0x1

    goto :goto_45

    .line 625
    :cond_43
    nop

    .line 626
    const/4 v6, 0x0

    :goto_45
    if-nez v6, :cond_55

    if-eq v5, v4, :cond_55

    if-ne v5, v2, :cond_4c

    goto :goto_55

    .line 628
    :cond_4c
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    .line 627
    :cond_55
    :goto_55
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    .line 629
    :goto_57
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    if-nez v1, :cond_5f

    .line 630
    nop

    .line 639
    move-object v8, v0

    goto :goto_81

    .line 631
    :cond_5f
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    .line 632
    if-eqz v6, :cond_69

    .line 633
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 639
    move-object v8, p2

    goto :goto_81

    .line 634
    :cond_69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 635
    array-length v2, p2

    :goto_6f
    if-ge v3, v2, :cond_7f

    aget-object v8, p2, v3

    .line 636
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 638
    :cond_7f
    nop

    .line 639
    move-object v8, v1

    .line 640
    :goto_81
    nop

    .line 641
    if-ne v5, v4, :cond_87

    .line 642
    nop

    .line 643
    move-object v9, v7

    goto :goto_88

    :cond_87
    move-object v9, v0

    :goto_88
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 618
    :cond_8f
    :goto_8f
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzga;D)Ljava/lang/Boolean;
    .registers 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 678
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_100

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_100

    .line 681
    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    .line 682
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawk:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawl:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 683
    :cond_23
    return-object v1

    .line 684
    :cond_24
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawj:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 685
    return-object v1

    .line 686
    :cond_29
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 687
    nop

    .line 688
    nop

    .line 689
    nop

    .line 690
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawh:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_60

    .line 691
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawk:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawl:Ljava/lang/String;

    .line 692
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_5f

    .line 694
    :cond_4b
    :try_start_4b
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawk:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 695
    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawl:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_59} :catch_5d

    .line 696
    nop

    .line 705
    move-object p1, v3

    move-object v3, v1

    goto :goto_73

    .line 697
    :catch_5d
    move-exception p0

    .line 698
    return-object v1

    .line 693
    :cond_5f
    :goto_5f
    return-object v1

    .line 699
    :cond_60
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawj:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zzcu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 700
    return-object v1

    .line 701
    :cond_69
    :try_start_69
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzga;->zzawj:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_70} :catch_fe

    .line 702
    nop

    .line 705
    move-object p1, v1

    move-object v4, p1

    .line 706
    :goto_73
    nop

    .line 707
    if-ne v0, v2, :cond_79

    .line 708
    if-nez p1, :cond_7b

    .line 709
    return-object v1

    .line 710
    :cond_79
    if-eqz v3, :cond_fc

    .line 711
    :cond_7b
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_102

    goto/16 :goto_fc

    .line 722
    :pswitch_83
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v2, :cond_91

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_91

    const/4 v5, 0x1

    nop

    :cond_91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 714
    :pswitch_96
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_d5

    .line 715
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 716
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 717
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_cf

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 718
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 719
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_cf

    .line 720
    const/4 v5, 0x1

    goto :goto_d0

    .line 719
    :cond_cf
    nop

    .line 720
    :goto_d0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 721
    :cond_d5
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_dd

    const/4 v5, 0x1

    nop

    :cond_dd
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 713
    :pswitch_e2
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_ea

    const/4 v5, 0x1

    nop

    :cond_ea
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 712
    :pswitch_ef
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_f7

    const/4 v5, 0x1

    nop

    :cond_f7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 723
    :cond_fc
    :goto_fc
    nop

    .line 724
    return-object v1

    .line 703
    :catch_fe
    move-exception p0

    .line 704
    return-object v1

    .line 680
    :cond_100
    :goto_100
    return-object v1

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_e2
        :pswitch_96
        :pswitch_83
    .end packed-switch
.end method

.method private static zza(Ljava/util/Map;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .line 737
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 738
    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    .line 739
    if-eqz v0, :cond_17

    .line 740
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_22

    .line 741
    :cond_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_22
    return-void
.end method

.method private static zzb(Ljava/util/Map;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;IJ)V"
        }
    .end annotation

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 744
    if-nez v0, :cond_18

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_18
    const-wide/16 p0, 0x3e8

    div-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method private static zzd(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/zzgh;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)[",
            "Lcom/google/android/gms/internal/measurement/zzgh;"
        }
    .end annotation

    .line 725
    if-nez p0, :cond_4

    .line 726
    const/4 p0, 0x0

    return-object p0

    .line 727
    :cond_4
    const/4 v0, 0x0

    .line 728
    nop

    .line 729
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgh;

    .line 730
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 731
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    .line 732
    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    .line 733
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    .line 734
    add-int/lit8 v3, v0, 0x1

    aput-object v4, v1, v0

    .line 735
    nop

    .line 730
    move v0, v3

    goto :goto_14

    .line 736
    :cond_36
    return-object v1
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgi;[Lcom/google/android/gms/internal/measurement/zzgo;)[Lcom/google/android/gms/internal/measurement/zzgg;
    .registers 102
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 4
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v12, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 7
    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 8
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 9
    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 10
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzo;->zzbd(Ljava/lang/String;)Z

    move-result v23

    .line 12
    nop

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzr;->zzbr(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 14
    if-eqz v0, :cond_18f

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 19
    nop

    .line 20
    if-eqz v23, :cond_ba

    .line 21
    nop

    .line 22
    nop

    .line 23
    move-object/from16 v27, v0

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 24
    if-eqz v4, :cond_aa

    move-object/from16 v28, v1

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v1, :cond_87

    goto :goto_ac

    .line 26
    :cond_87
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    move-object/from16 v29, v3

    array-length v3, v1

    move-object/from16 v30, v11

    const/4 v11, 0x0

    :goto_8f
    if-ge v11, v3, :cond_a9

    move/from16 v31, v3

    aget-object v3, v1, v11

    .line 27
    move-object/from16 v32, v1

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    if-eqz v1, :cond_a2

    .line 28
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_a2
    add-int/lit8 v11, v11, 0x1

    .line 26
    move/from16 v3, v31

    move-object/from16 v1, v32

    goto :goto_8f

    .line 30
    :cond_a9
    goto :goto_b0

    .line 25
    :cond_aa
    move-object/from16 v28, v1

    :goto_ac
    move-object/from16 v29, v3

    move-object/from16 v30, v11

    .line 31
    :goto_b0
    nop

    .line 32
    nop

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 34
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 35
    :cond_ba
    move-object/from16 v27, v0

    move-object/from16 v28, v1

    move-object/from16 v29, v3

    move-object/from16 v30, v11

    const/4 v0, 0x0

    :goto_c3
    if-nez v5, :cond_de

    .line 36
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    .line 40
    :cond_de
    move-object/from16 v3, v29

    :goto_e0
    const/4 v1, 0x0

    :goto_e1
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v11, v11

    shl-int/lit8 v11, v11, 0x6

    if-ge v1, v11, :cond_138

    .line 41
    nop

    .line 42
    iget-object v11, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    invoke-static {v11, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([JI)Z

    move-result v11

    if-eqz v11, :cond_11d

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v11

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    move-object/from16 v33, v8

    const-string v8, "Filter already evaluated. audience ID, filter ID"

    .line 45
    move-object/from16 v34, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v35, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 47
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    invoke-static {v8, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([JI)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 48
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    .line 49
    nop

    .line 50
    const/4 v8, 0x1

    goto :goto_124

    :cond_11d
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    :cond_123
    const/4 v8, 0x0

    :goto_124
    if-eqz v0, :cond_12f

    if-nez v8, :cond_12f

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    .line 40
    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    goto :goto_e1

    .line 53
    :cond_138
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 56
    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 57
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 58
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/util/BitSet;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 59
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 60
    if-eqz v23, :cond_180

    .line 61
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzk;->zzd(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_180
    nop

    .line 15
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v11, v30

    move-object/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v10, v35

    goto/16 :goto_44

    .line 65
    :cond_18f
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    if-eqz v13, :cond_7d6

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 70
    array-length v8, v13

    const-wide/16 v27, 0x0

    move-wide/from16 v2, v27

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1a9
    if-ge v4, v8, :cond_7d6

    aget-object v5, v13, v4

    .line 71
    iget-object v10, v5, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 72
    iget-object v11, v5, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 73
    move-wide/from16 v36, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    .line 74
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzaku:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v2

    .line 75
    const-wide/16 v16, 0x1

    if-eqz v2, :cond_393

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v2, "_eid"

    invoke-static {v5, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    .line 77
    if-eqz v3, :cond_1d1

    .line 78
    const/4 v2, 0x1

    goto :goto_1d3

    .line 77
    :cond_1d1
    nop

    .line 78
    const/4 v2, 0x0

    :goto_1d3
    if-eqz v2, :cond_1e1

    move/from16 v38, v4

    const-string v4, "_ep"

    .line 79
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    .line 80
    const/4 v4, 0x1

    goto :goto_1e4

    .line 79
    :cond_1e1
    move/from16 v38, v4

    .line 80
    :cond_1e3
    const/4 v4, 0x0

    :goto_1e4
    if-eqz v4, :cond_347

    .line 81
    nop

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v2, "_en"

    invoke-static {v5, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 83
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    nop

    .line 262
    move-object/from16 v41, v6

    move/from16 v26, v38

    const/16 v24, 0x1

    goto/16 :goto_333

    .line 86
    :cond_20f
    if-eqz v0, :cond_226

    if-eqz v1, :cond_226

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v2, v18, v20

    if-eqz v2, :cond_220

    goto :goto_226

    .line 98
    :cond_220
    move-object v4, v0

    move-object/from16 v18, v1

    move-wide/from16 v1, v36

    goto :goto_252

    .line 87
    :cond_226
    :goto_226
    nop

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_31f

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_237

    goto/16 :goto_31f

    .line 94
    :cond_237
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 95
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 96
    nop

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v4, "_eid"

    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 98
    move-object/from16 v18, v4

    move-object v4, v0

    :goto_252
    const/4 v0, 0x0

    sub-long v19, v1, v16

    .line 99
    cmp-long v0, v19, v27

    if-gtz v0, :cond_2a2

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Clearing complex main event info. appId"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :try_start_26d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    const-string v2, "delete from main_event_params where app_id=?"
    :try_end_273
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26d .. :try_end_273} :catch_284

    move-object/from16 v39, v4

    const/4 v3, 0x1

    :try_start_276
    new-array v4, v3, [Ljava/lang/String;
    :try_end_278
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_276 .. :try_end_278} :catch_282

    const/16 v21, 0x0

    :try_start_27a
    aput-object v15, v4, v21

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27a .. :try_end_27f} :catch_280

    .line 105
    goto :goto_298

    .line 106
    :catch_280
    move-exception v0

    goto :goto_28a

    :catch_282
    move-exception v0

    goto :goto_288

    :catch_284
    move-exception v0

    move-object/from16 v39, v4

    const/4 v3, 0x1

    :goto_288
    const/16 v21, 0x0

    .line 107
    :goto_28a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error clearing complex main event"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    nop

    .line 110
    :goto_298
    move-object v13, v5

    move-object/from16 v41, v6

    move/from16 v26, v38

    move-object/from16 v40, v39

    const/16 v24, 0x1

    goto :goto_2bd

    .line 109
    :cond_2a2
    move-object/from16 v39, v4

    const/4 v4, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v13, v5

    move/from16 v26, v38

    move-object/from16 v40, v39

    const/16 v24, 0x1

    move-wide/from16 v4, v19

    move-object/from16 v41, v6

    move-object/from16 v6, v40

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzgi;)Z

    .line 110
    :goto_2bd
    move-object/from16 v1, v40

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v0, v0

    array-length v2, v11

    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 111
    nop

    .line 112
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2cc
    if-ge v4, v3, :cond_2e8

    aget-object v6, v2, v4

    .line 113
    nop

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-object/from16 v42, v1

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-static {v13, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v1

    .line 115
    if-nez v1, :cond_2e3

    .line 116
    add-int/lit8 v1, v5, 0x1

    aput-object v6, v0, v5

    .line 117
    move v5, v1

    :cond_2e3
    add-int/lit8 v4, v4, 0x1

    .line 112
    move-object/from16 v1, v42

    goto :goto_2cc

    .line 118
    :cond_2e8
    move-object/from16 v42, v1

    if-lez v5, :cond_308

    .line 119
    array-length v1, v11

    const/4 v2, 0x0

    :goto_2ee
    if-ge v2, v1, :cond_2fa

    aget-object v3, v11, v2

    .line 120
    add-int/lit8 v4, v5, 0x1

    aput-object v3, v0, v5

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 119
    move v5, v4

    goto :goto_2ee

    .line 122
    :cond_2fa
    array-length v1, v0

    if-ne v5, v1, :cond_2fe

    .line 123
    goto :goto_304

    .line 124
    :cond_2fe
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 139
    :goto_304
    move-object/from16 v29, v0

    move-object v0, v10

    goto :goto_319

    .line 125
    :cond_308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    nop

    .line 139
    move-object v0, v10

    move-object/from16 v29, v11

    :goto_319
    move-object/from16 v25, v18

    move-wide/from16 v36, v19

    goto/16 :goto_3a1

    .line 90
    :cond_31f
    :goto_31f
    move-object/from16 v41, v6

    move/from16 v26, v38

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Extra parameter without existing main event. eventName, eventId"

    .line 92
    invoke-virtual {v2, v4, v10, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    nop

    .line 262
    :goto_333
    move/from16 v31, v8

    move-object/from16 v65, v9

    move-object/from16 v79, v12

    move-object/from16 v14, v30

    move-object/from16 v77, v33

    move-object/from16 v78, v34

    move-object/from16 v80, v35

    move-wide/from16 v2, v36

    move-object/from16 v72, v41

    goto/16 :goto_7ba

    .line 126
    :cond_347
    move-object v13, v5

    move-object/from16 v41, v6

    move/from16 v26, v38

    const/16 v24, 0x1

    if-eqz v2, :cond_39a

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v0, "_epc"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 131
    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    if-nez v0, :cond_363

    .line 133
    move-object v0, v1

    :cond_363
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 134
    cmp-long v0, v18, v27

    if-gtz v0, :cond_37c

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Complex event with zero extra param count. eventName"

    .line 137
    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    move-object v0, v3

    goto :goto_389

    .line 138
    :cond_37c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v0, v3

    move-wide/from16 v4, v18

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzgi;)Z

    .line 139
    :goto_389
    move-object/from16 v25, v0

    move-object v0, v10

    move-object/from16 v29, v11

    move-object/from16 v42, v13

    move-wide/from16 v36, v18

    goto :goto_3a1

    :cond_393
    move/from16 v26, v4

    move-object v13, v5

    move-object/from16 v41, v6

    const/16 v24, 0x1

    :cond_39a
    move-object/from16 v42, v0

    move-object/from16 v25, v1

    move-object v0, v10

    move-object/from16 v29, v11

    :goto_3a1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 140
    if-nez v1, :cond_3ff

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v10, v13, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    iget-object v6, v13, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 147
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v31, v8

    move-object/from16 v11, v33

    move-object v8, v1

    move-object/from16 v44, v9

    move-object/from16 v43, v34

    move-object/from16 v9, p1

    move-object/from16 v45, v35

    move-object/from16 v48, v11

    move-object/from16 v47, v12

    move-object/from16 v46, v30

    move-wide v11, v2

    move-object v2, v13

    move-object v3, v14

    move-wide v13, v4

    move-object v5, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-object/from16 v19, v6

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_441

    .line 148
    :cond_3ff
    move/from16 v31, v8

    move-object/from16 v44, v9

    move-object/from16 v47, v12

    move-object v2, v13

    move-object v3, v14

    move-object v5, v15

    move-object/from16 v46, v30

    move-object/from16 v48, v33

    move-object/from16 v43, v34

    move-object/from16 v45, v35

    .line 149
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    add-long v52, v9, v16

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    add-long v54, v9, v16

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    move-object/from16 v49, v4

    move-object/from16 v50, v6

    move-object/from16 v51, v8

    move-wide/from16 v56, v9

    move-wide/from16 v58, v11

    move-object/from16 v60, v13

    move-object/from16 v61, v14

    move-object/from16 v62, v15

    move-object/from16 v63, v1

    invoke-direct/range {v49 .. v63}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 150
    nop

    .line 151
    move-object v1, v4

    :goto_441
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 152
    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    .line 153
    nop

    .line 154
    move-object/from16 v10, v44

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 155
    if-nez v1, :cond_467

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 157
    if-nez v1, :cond_464

    .line 158
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 159
    :cond_464
    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_467
    move-object v11, v1

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_470
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 161
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v14, v46

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v4, "Skipping failed audience ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    nop

    .line 160
    move-object/from16 v46, v14

    goto :goto_470

    .line 164
    :cond_4a1
    nop

    .line 165
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v15, v47

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 166
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v6, v45

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    .line 167
    move-object/from16 v64, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v65, v10

    move-object/from16 v10, v43

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 168
    nop

    .line 169
    nop

    .line 170
    if-eqz v23, :cond_4ef

    .line 171
    nop

    .line 172
    move-object/from16 v66, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v67, v12

    move-object/from16 v12, v48

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 173
    nop

    .line 174
    move-object/from16 v68, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v7, v41

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_4fa

    .line 175
    :cond_4ef
    move-object/from16 v66, v2

    move-object/from16 v67, v12

    move-object/from16 v7, v41

    move-object/from16 v12, v48

    const/4 v2, 0x0

    const/16 v68, 0x0

    :goto_4fa
    if-nez v1, :cond_55b

    .line 176
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 177
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 179
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 180
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 182
    move-object/from16 v69, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    if-eqz v23, :cond_550

    .line 184
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 185
    nop

    .line 186
    move-object/from16 v70, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 187
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 189
    nop

    .line 190
    move-object/from16 v71, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v72, v7

    move-object/from16 v2, v70

    move-object v7, v1

    move-object/from16 v1, v71

    goto :goto_565

    :cond_550
    move-object/from16 v70, v1

    move-object/from16 v72, v7

    move-object/from16 v1, v68

    move-object/from16 v7, v69

    move-object/from16 v2, v70

    goto :goto_565

    :cond_55b
    move-object/from16 v69, v2

    move-object/from16 v72, v7

    move-object/from16 v2, v66

    move-object/from16 v1, v68

    move-object/from16 v7, v69

    :goto_565
    move-object/from16 v73, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_575
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 194
    move-object/from16 v74, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    move-object/from16 v75, v11

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_5c7

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v11, "Evaluating filter. audience, filter, event"

    .line 197
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 198
    move-object/from16 v76, v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v6

    move-object/from16 v77, v12

    iget-object v12, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v2, v11, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Filter definition"

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzfy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5cb

    .line 203
    :cond_5c7
    move-object/from16 v76, v6

    move-object/from16 v77, v12

    :goto_5cb
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    if-eqz v2, :cond_73f

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v11, 0x100

    if-le v2, v11, :cond_5db

    goto/16 :goto_73f

    .line 210
    :cond_5db
    if-eqz v23, :cond_6cb

    .line 211
    nop

    .line 212
    if-eqz v1, :cond_5ee

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-eqz v2, :cond_5ee

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5ee

    .line 213
    const/4 v12, 0x1

    goto :goto_5f0

    .line 212
    :cond_5ee
    nop

    .line 213
    const/4 v12, 0x0

    .line 214
    :goto_5f0
    nop

    .line 215
    if-eqz v1, :cond_602

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-eqz v2, :cond_602

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_602

    .line 216
    const/16 v17, 0x1

    goto :goto_605

    .line 215
    :cond_602
    nop

    .line 216
    const/16 v17, 0x0

    .line 217
    :goto_605
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_633

    if-nez v12, :cond_633

    if-nez v17, :cond_633

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Event filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    .line 220
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 221
    invoke-virtual {v2, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    nop

    .line 193
    move-object/from16 v2, v74

    move-object/from16 v11, v75

    move-object/from16 v6, v76

    move-object/from16 v12, v77

    goto/16 :goto_779

    .line 223
    :cond_633
    nop

    .line 224
    move-object v5, v1

    move-object/from16 v6, v73

    move-object/from16 v1, p0

    move-object/from16 v3, v64

    move-object/from16 v11, v74

    move-object v2, v5

    move-object/from16 v78, v10

    move-object/from16 v79, v15

    move-object/from16 v10, p3

    move-object v15, v3

    move-object v3, v0

    move-object v10, v4

    move-object/from16 v4, v29

    move-object/from16 v81, v0

    move-object v0, v5

    move-object/from16 v82, v6

    move-object/from16 v80, v76

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Lcom/google/android/gms/internal/measurement/zzfy;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgj;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Event filter result"

    .line 227
    if-nez v1, :cond_664

    const-string v4, "null"

    goto :goto_665

    :cond_664
    move-object v4, v1

    :goto_665
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    if-nez v1, :cond_686

    .line 229
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    nop

    .line 193
    :cond_672
    :goto_672
    move-object v4, v10

    move-object v2, v11

    move-object/from16 v64, v15

    move-object/from16 v11, v75

    move-object/from16 v12, v77

    move-object/from16 v10, v78

    move-object/from16 v15, v79

    move-object/from16 v6, v80

    move-object/from16 v0, v81

    move-object/from16 v73, v82

    goto/16 :goto_779

    .line 231
    :cond_686
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/util/BitSet;->set(I)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_672

    .line 233
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    .line 234
    if-nez v12, :cond_6a2

    if-eqz v17, :cond_672

    :cond_6a2
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-eqz v1, :cond_672

    .line 235
    if-eqz v17, :cond_6b8

    .line 236
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 238
    invoke-static {v7, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzk;->zzb(Ljava/util/Map;IJ)V

    goto :goto_672

    .line 239
    :cond_6b8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 241
    move-object/from16 v12, v82

    invoke-static {v12, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/util/Map;IJ)V

    .line 242
    goto/16 :goto_767

    .line 243
    :cond_6cb
    move-object/from16 v81, v0

    move-object v0, v1

    move-object/from16 v78, v10

    move-object/from16 v79, v15

    move-object/from16 v15, v64

    move-object/from16 v12, v73

    move-object/from16 v11, v74

    move-object/from16 v80, v76

    move-object v10, v4

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6fc

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Event filter already evaluated true. audience ID, filter ID"

    .line 246
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 247
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    goto/16 :goto_767

    .line 249
    :cond_6fc
    nop

    .line 250
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v81

    move-object/from16 v4, v29

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Lcom/google/android/gms/internal/measurement/zzfy;Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgj;J)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Event filter result"

    .line 253
    if-nez v1, :cond_718

    const-string v4, "null"

    goto :goto_719

    :cond_718
    move-object v4, v1

    :goto_719
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    if-nez v1, :cond_726

    .line 255
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    goto :goto_767

    .line 257
    :cond_726
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/util/BitSet;->set(I)V

    .line 258
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_73e

    .line 259
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V

    .line 260
    :cond_73e
    goto :goto_767

    .line 204
    :cond_73f
    :goto_73f
    move-object/from16 v81, v0

    move-object v0, v1

    move-object/from16 v78, v10

    move-object/from16 v79, v15

    move-object/from16 v15, v64

    move-object/from16 v12, v73

    move-object/from16 v11, v74

    move-object/from16 v80, v76

    move-object v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Invalid event filter ID. appId, id"

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 207
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    nop

    .line 193
    :goto_767
    move-object v4, v10

    move-object v2, v11

    move-object/from16 v73, v12

    move-object/from16 v64, v15

    move-object/from16 v11, v75

    move-object/from16 v12, v77

    move-object/from16 v10, v78

    move-object/from16 v15, v79

    move-object/from16 v6, v80

    move-object/from16 v0, v81

    :goto_779
    move-object/from16 v3, p3

    move-object/from16 v5, p1

    goto/16 :goto_575

    .line 261
    :cond_77f
    move-object/from16 v81, v0

    move-object/from16 v80, v6

    move-object/from16 v78, v10

    move-object/from16 v75, v11

    move-object/from16 v77, v12

    move-object/from16 v79, v15

    move-object/from16 v15, v64

    .line 160
    move-object/from16 v46, v14

    move-object v2, v15

    move-object/from16 v10, v65

    move-object/from16 v12, v67

    move-object/from16 v41, v72

    move-object/from16 v48, v77

    move-object/from16 v43, v78

    move-object/from16 v47, v79

    move-object/from16 v45, v80

    move-object/from16 v3, p3

    move-object/from16 v5, p1

    move-object/from16 v7, p0

    goto/16 :goto_470

    .line 262
    :cond_7a6
    move-object/from16 v65, v10

    move-object/from16 v72, v41

    move-object/from16 v78, v43

    move-object/from16 v80, v45

    move-object/from16 v14, v46

    move-object/from16 v79, v47

    move-object/from16 v77, v48

    move-object/from16 v1, v25

    move-wide/from16 v2, v36

    move-object/from16 v0, v42

    :goto_7ba
    add-int/lit8 v4, v26, 0x1

    .line 70
    move-object/from16 v13, p2

    move-object/from16 v30, v14

    move/from16 v8, v31

    move-object/from16 v9, v65

    move-object/from16 v6, v72

    move-object/from16 v33, v77

    move-object/from16 v34, v78

    move-object/from16 v12, v79

    move-object/from16 v35, v80

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p1

    goto/16 :goto_1a9

    .line 263
    :cond_7d6
    move-object/from16 v72, v6

    move-object/from16 v79, v12

    move-object/from16 v14, v30

    move-object/from16 v77, v33

    move-object/from16 v78, v34

    move-object/from16 v80, v35

    const/16 v24, 0x1

    move-object/from16 v1, p3

    if-eqz v1, :cond_b18

    .line 264
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 265
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7ef
    if-ge v3, v2, :cond_b18

    aget-object v4, v1, v3

    .line 266
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 267
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 268
    if-nez v5, :cond_816

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzr;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 270
    if-nez v5, :cond_810

    .line 271
    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 272
    :cond_810
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_818

    .line 273
    :cond_816
    move-object/from16 v7, p1

    :goto_818
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_820
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b02

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84c

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v10, "Skipping failed audience ID"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    goto :goto_820

    .line 277
    :cond_84c
    nop

    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, v79

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v12, v80

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/BitSet;

    .line 280
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v15, v78

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    .line 281
    nop

    .line 282
    nop

    .line 283
    if-eqz v23, :cond_896

    .line 284
    nop

    .line 285
    move-object/from16 v83, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v77

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 286
    nop

    .line 287
    move-object/from16 v84, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v85, v2

    move-object/from16 v2, v72

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_8a1

    .line 288
    :cond_896
    move-object/from16 v83, v0

    move/from16 v85, v2

    move-object/from16 v2, v72

    move-object/from16 v1, v77

    const/4 v0, 0x0

    const/16 v84, 0x0

    :goto_8a1
    if-nez v9, :cond_8ee

    .line 289
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v9}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 290
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v9, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 292
    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11}, Ljava/util/BitSet;-><init>()V

    .line 293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13}, Ljava/util/BitSet;-><init>()V

    .line 295
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    if-eqz v23, :cond_8ee

    .line 297
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 298
    nop

    .line 299
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 300
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 302
    nop

    .line 303
    move-object/from16 v86, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 304
    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-object/from16 v0, v86

    goto :goto_8f1

    :cond_8ee
    move-object v9, v0

    move-object/from16 v0, v84

    :goto_8f1
    move-object/from16 v87, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 306
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_901
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_ade

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v88, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgb;

    .line 307
    move-object/from16 v89, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    move-object/from16 v90, v6

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_959

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Evaluating filter. audience, filter, property"

    .line 310
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v91, v1

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 311
    move-object/from16 v92, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v15

    move-object/from16 v93, v10

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {v15, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 312
    invoke-virtual {v5, v6, v7, v1, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v5, "Filter definition"

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_95f

    .line 316
    :cond_959
    move-object/from16 v91, v1

    move-object/from16 v93, v10

    move-object/from16 v92, v15

    :goto_95f
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    if-eqz v1, :cond_ab0

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x100

    if-le v1, v5, :cond_96f

    goto/16 :goto_ab0

    .line 324
    :cond_96f
    if-eqz v23, :cond_a3c

    .line 325
    nop

    .line 326
    if-eqz v2, :cond_982

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_982

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_982

    .line 327
    const/4 v1, 0x1

    goto :goto_984

    .line 326
    :cond_982
    nop

    .line 327
    const/4 v1, 0x0

    .line 328
    :goto_984
    nop

    .line 329
    if-eqz v2, :cond_995

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-eqz v6, :cond_995

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_995

    .line 330
    const/4 v6, 0x1

    goto :goto_997

    .line 329
    :cond_995
    nop

    .line 330
    const/4 v6, 0x0

    .line 331
    :goto_997
    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_9c9

    if-nez v1, :cond_9c9

    if-nez v6, :cond_9c9

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v6, "Property filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID"

    .line 334
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 335
    invoke-virtual {v1, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    nop

    .line 306
    move-object/from16 v2, v88

    move-object/from16 v5, v89

    move-object/from16 v6, v90

    move-object/from16 v1, v91

    move-object/from16 v15, v92

    move-object/from16 v10, v93

    goto/16 :goto_a72

    .line 337
    :cond_9c9
    move-object/from16 v10, v87

    move-object/from16 v7, p0

    invoke-direct {v7, v2, v4}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Lcom/google/android/gms/internal/measurement/zzgb;Lcom/google/android/gms/internal/measurement/zzgo;)Ljava/lang/Boolean;

    move-result-object v15

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v16

    .line 339
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    move-object/from16 v94, v10

    const-string v10, "Property filter result"

    .line 340
    if-nez v15, :cond_9e6

    const-string v16, "null"

    move-object/from16 v95, v12

    move-object/from16 v12, v16

    goto :goto_9e9

    :cond_9e6
    move-object/from16 v95, v12

    move-object v12, v15

    :goto_9e9
    invoke-virtual {v5, v10, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    if-nez v15, :cond_9f6

    .line 342
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    goto :goto_a62

    .line 344
    :cond_9f6
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->set(I)V

    .line 345
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v11, v5, v10}, Ljava/util/BitSet;->set(IZ)V

    .line 346
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a62

    if-nez v1, :cond_a16

    if-eqz v6, :cond_a62

    :cond_a16
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    if-eqz v1, :cond_a62

    .line 347
    if-eqz v6, :cond_a2c

    .line 348
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 351
    invoke-static {v9, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzk;->zzb(Ljava/util/Map;IJ)V

    goto :goto_a62

    .line 352
    :cond_a2c
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 353
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 354
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 355
    invoke-static {v0, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/util/Map;IJ)V

    .line 356
    goto :goto_a62

    .line 357
    :cond_a3c
    move-object/from16 v95, v12

    move-object/from16 v94, v87

    move-object/from16 v7, p0

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a76

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v5, "Property filter already evaluated true. audience ID, filter ID"

    .line 360
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 361
    invoke-virtual {v1, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    nop

    .line 306
    :cond_a62
    :goto_a62
    move-object/from16 v2, v88

    move-object/from16 v5, v89

    move-object/from16 v6, v90

    move-object/from16 v1, v91

    move-object/from16 v15, v92

    move-object/from16 v10, v93

    move-object/from16 v87, v94

    move-object/from16 v12, v95

    :goto_a72
    move-object/from16 v7, p1

    goto/16 :goto_901

    .line 363
    :cond_a76
    invoke-direct {v7, v2, v4}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Lcom/google/android/gms/internal/measurement/zzgb;Lcom/google/android/gms/internal/measurement/zzgo;)Ljava/lang/Boolean;

    move-result-object v1

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 365
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Property filter result"

    .line 366
    if-nez v1, :cond_a89

    const-string v10, "null"

    goto :goto_a8a

    :cond_a89
    move-object v10, v1

    :goto_a8a
    invoke-virtual {v5, v6, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    if-nez v1, :cond_a97

    .line 368
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    goto :goto_a62

    .line 370
    :cond_a97
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->set(I)V

    .line 371
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_aaf

    .line 372
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    .line 373
    :cond_aaf
    goto :goto_a62

    .line 317
    :cond_ab0
    :goto_ab0
    move-object/from16 v95, v12

    move-object/from16 v94, v87

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Invalid property filter ID. appId, id"

    .line 319
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 320
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    nop

    .line 273
    move-object/from16 v0, v83

    move/from16 v2, v85

    move-object/from16 v5, v89

    move-object/from16 v6, v90

    goto :goto_af2

    .line 374
    :cond_ade
    move-object/from16 v91, v1

    move-object/from16 v89, v5

    move-object/from16 v90, v6

    move-object/from16 v93, v10

    move-object/from16 v95, v12

    move-object/from16 v92, v15

    move-object/from16 v94, v87

    move-object/from16 v7, p0

    .line 273
    move-object/from16 v0, v83

    move/from16 v2, v85

    :goto_af2
    move-object/from16 v77, v91

    move-object/from16 v78, v92

    move-object/from16 v79, v93

    move-object/from16 v72, v94

    move-object/from16 v80, v95

    move-object/from16 v1, p3

    move-object/from16 v7, p1

    goto/16 :goto_820

    .line 375
    :cond_b02
    move-object/from16 v83, v0

    move/from16 v85, v2

    move-object/from16 v94, v72

    move-object/from16 v91, v77

    move-object/from16 v92, v78

    move-object/from16 v93, v79

    move-object/from16 v95, v80

    move-object/from16 v7, p0

    add-int/lit8 v3, v3, 0x1

    .line 265
    move-object/from16 v1, p3

    goto/16 :goto_7ef

    .line 376
    :cond_b18
    move-object/from16 v94, v72

    move-object/from16 v91, v77

    move-object/from16 v92, v78

    move-object/from16 v93, v79

    move-object/from16 v95, v80

    move-object/from16 v7, p0

    .line 377
    invoke-interface/range {v95 .. v95}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 378
    nop

    .line 379
    invoke-interface/range {v95 .. v95}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cea

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v93

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 382
    if-nez v4, :cond_b61

    .line 383
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 384
    :cond_b61
    add-int/lit8 v6, v3, 0x1

    aput-object v4, v1, v3

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    .line 386
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    iput-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 387
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v95

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 388
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v10, v92

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/util/BitSet;)[J

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 389
    if-eqz v23, :cond_c3f

    .line 390
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 391
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v11, v91

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 392
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzk;->zzd(Ljava/util/Map;)[Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    .line 393
    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v12, v94

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 395
    nop

    .line 396
    if-nez v8, :cond_bcb

    .line 397
    const/4 v13, 0x0

    new-array v8, v13, [Lcom/google/android/gms/internal/measurement/zzgn;

    .line 416
    move-object/from16 v96, v2

    move-object/from16 v97, v5

    move-object v15, v8

    goto/16 :goto_c3c

    .line 398
    :cond_bcb
    const/4 v13, 0x0

    .line 399
    nop

    .line 400
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    new-array v15, v15, [Lcom/google/android/gms/internal/measurement/zzgn;

    .line 401
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :goto_bdd
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c38

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Ljava/lang/Integer;

    .line 402
    move-object/from16 v96, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>()V

    .line 403
    iput-object v13, v2, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    .line 404
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 405
    if-eqz v13, :cond_c29

    .line 406
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 407
    move-object/from16 v97, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    .line 408
    nop

    .line 409
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v18, 0x0

    :goto_c0e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 410
    add-int/lit8 v20, v18, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    aput-wide v21, v5, v18

    .line 411
    nop

    .line 409
    move/from16 v18, v20

    goto :goto_c0e

    .line 412
    :cond_c26
    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    goto :goto_c2b

    .line 413
    :cond_c29
    move-object/from16 v97, v5

    :goto_c2b
    add-int/lit8 v5, v17, 0x1

    aput-object v2, v15, v17

    .line 414
    nop

    .line 401
    move/from16 v17, v5

    move-object/from16 v2, v96

    move-object/from16 v5, v97

    const/4 v13, 0x0

    goto :goto_bdd

    .line 415
    :cond_c38
    move-object/from16 v96, v2

    move-object/from16 v97, v5

    .line 416
    :goto_c3c
    iput-object v15, v3, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    goto :goto_c47

    .line 417
    :cond_c3f
    move-object/from16 v96, v2

    move-object/from16 v97, v5

    move-object/from16 v11, v91

    move-object/from16 v12, v94

    :goto_c47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 418
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 419
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 420
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :try_start_c59
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v4

    .line 423
    new-array v4, v4, [B

    .line 424
    nop

    .line 425
    array-length v5, v4
    :try_end_c61
    .catch Ljava/io/IOException; {:try_start_c59 .. :try_end_c61} :catch_cc4

    const/4 v8, 0x0

    :try_start_c62
    invoke-static {v4, v8, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v5

    .line 426
    nop

    .line 427
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 428
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_c6d
    .catch Ljava/io/IOException; {:try_start_c62 .. :try_end_c6d} :catch_cc2

    .line 429
    nop

    .line 436
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 437
    const-string v5, "app_id"

    move-object/from16 v13, p1

    invoke-virtual {v3, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v5, "audience_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v0, "current_results"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 440
    :try_start_c88
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 441
    const-string v4, "audience_filter_values"
    :try_end_c8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c88 .. :try_end_c8e} :catch_cae

    const/4 v5, 0x5

    .line 442
    const/4 v15, 0x0

    :try_start_c90
    invoke-virtual {v0, v4, v15, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    .line 443
    const-wide/16 v16, -0x1

    cmp-long v0, v3, v16

    if-nez v0, :cond_cab

    .line 444
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 446
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_cab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c90 .. :try_end_cab} :catch_cac

    .line 447
    :cond_cab
    goto :goto_cdb

    .line 448
    :catch_cac
    move-exception v0

    goto :goto_cb0

    :catch_cae
    move-exception v0

    const/4 v15, 0x0

    .line 449
    :goto_cb0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error storing filter results. appId"

    .line 451
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    goto :goto_cdb

    .line 430
    :catch_cc2
    move-exception v0

    goto :goto_cc6

    :catch_cc4
    move-exception v0

    const/4 v8, 0x0

    :goto_cc6
    move-object/from16 v13, p1

    const/4 v15, 0x0

    .line 431
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Configuration loss. Failed to serialize filter results. appId"

    .line 433
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 434
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    nop

    .line 379
    :goto_cdb
    move v3, v6

    move-object/from16 v95, v9

    move-object/from16 v92, v10

    move-object/from16 v91, v11

    move-object/from16 v94, v12

    move-object/from16 v2, v96

    move-object/from16 v93, v97

    goto/16 :goto_b34

    :cond_cea
    move-object/from16 v13, p1

    goto/16 :goto_b34

    .line 453
    :cond_cee
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzgg;

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 3
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.measurement.internal.zzam (com.google.android.gms.measurement.internal.zzam)
.class public final Lcom/google/android/gms/measurement/internal/zzam;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private final zzalx:Lcom/google/android/gms/measurement/internal/zzan;

.field private zzaly:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzam;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzalx:Lcom/google/android/gms/measurement/internal/zzan;

    .line 5
    return-void
.end method

.method private final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 237
    return-object v1

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzalx:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 239
    if-nez v0, :cond_12

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z

    .line 241
    return-object v1

    .line 242
    :cond_12
    return-object v0
.end method

.method private final zza(I[B)Z
    .registers 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 19
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 20
    return v2

    .line 21
    :cond_e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    const-string/jumbo v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 24
    nop

    .line 25
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_28
    if-ge v5, v4, :cond_13c

    .line 26
    nop

    .line 27
    nop

    .line 28
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2e .. :try_end_32} :catch_10e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2e .. :try_end_32} :catch_fb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_32} :catch_d0
    .catchall {:try_start_2e .. :try_end_32} :catchall_cc

    .line 29
    if-nez v9, :cond_47

    .line 30
    :try_start_34
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_34 .. :try_end_36} :catch_44
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_34 .. :try_end_36} :catch_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_36} :catch_3c
    .catchall {:try_start_34 .. :try_end_36} :catchall_12f

    .line 31
    if-eqz v9, :cond_3b

    .line 32
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 33
    :cond_3b
    return v2

    .line 74
    :catch_3c
    move-exception v0

    move-object v12, v7

    :goto_3e
    move-object v7, v9

    goto/16 :goto_d2

    .line 67
    :catch_41
    move-exception v0

    goto/16 :goto_fd

    .line 60
    :catch_44
    move-exception v0

    goto/16 :goto_110

    .line 34
    :cond_47
    :try_start_47
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 35
    const-wide/16 v10, 0x0

    .line 36
    const-string v0, "select count(1) from messages"

    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_47 .. :try_end_52} :catch_44
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_47 .. :try_end_52} :catch_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_52} :catch_3c
    .catchall {:try_start_47 .. :try_end_52} :catchall_12f

    .line 37
    if-eqz v12, :cond_6a

    :try_start_54
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 38
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_6a

    .line 83
    :catchall_5f
    move-exception v0

    goto/16 :goto_131

    .line 74
    :catch_62
    move-exception v0

    goto :goto_3e

    .line 67
    :catch_64
    move-exception v0

    goto :goto_ca

    .line 60
    :catch_66
    move-exception v0

    move-object v7, v12

    goto/16 :goto_110

    .line 39
    :cond_6a
    :goto_6a
    const-wide/32 v13, 0x186a0

    cmp-long v0, v10, v13

    if-ltz v0, :cond_b4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    .line 42
    const-string v0, "messages"

    const-string v10, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v11, v8, [Ljava/lang/String;

    .line 43
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v2

    .line 44
    invoke-virtual {v9, v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    .line 45
    cmp-long v0, v10, v13

    if-eqz v0, :cond_b4

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 49
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x0

    sub-long/2addr v13, v10

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 51
    invoke-virtual {v0, v15, v4, v2, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_b4
    const-string v0, "messages"

    invoke-virtual {v9, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_54 .. :try_end_bf} :catch_66
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_54 .. :try_end_bf} :catch_64
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_bf} :catch_62
    .catchall {:try_start_54 .. :try_end_bf} :catchall_5f

    .line 55
    if-eqz v12, :cond_c4

    .line 56
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_c4
    if-eqz v9, :cond_c9

    .line 58
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    :cond_c9
    return v8

    .line 67
    :goto_ca
    move-object v7, v12

    goto :goto_fd

    .line 83
    :catchall_cc
    move-exception v0

    move-object v9, v7

    move-object v12, v9

    goto :goto_131

    .line 74
    :catch_d0
    move-exception v0

    move-object v12, v7

    .line 75
    :goto_d2
    if-eqz v7, :cond_e1

    :try_start_d4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 76
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_e1

    .line 83
    :catchall_de
    move-exception v0

    move-object v9, v7

    goto :goto_131

    .line 77
    :cond_e1
    :goto_e1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_f0
    .catchall {:try_start_d4 .. :try_end_f0} :catchall_de

    .line 79
    if-eqz v12, :cond_f5

    .line 80
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_f5
    if-eqz v7, :cond_129

    .line 82
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_129

    .line 67
    :catch_fb
    move-exception v0

    move-object v9, v7

    .line 68
    :goto_fd
    int-to-long v10, v6

    :try_start_fe
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_12f

    .line 69
    add-int/lit8 v6, v6, 0x14

    .line 70
    if-eqz v7, :cond_108

    .line 71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_108
    if-eqz v9, :cond_129

    .line 73
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_129

    .line 60
    :catch_10e
    move-exception v0

    move-object v9, v7

    .line 61
    :goto_110
    :try_start_110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_11f
    .catchall {:try_start_110 .. :try_end_11f} :catchall_12f

    .line 63
    if-eqz v7, :cond_124

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_124
    if-eqz v9, :cond_129

    .line 66
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_129
    :goto_129
    add-int/lit8 v5, v5, 0x1

    .line 25
    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_28

    .line 83
    :catchall_12f
    move-exception v0

    move-object v12, v7

    :goto_131
    if-eqz v12, :cond_136

    .line 84
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_136
    if-eqz v9, :cond_13b

    .line 86
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_13b
    throw v0

    .line 88
    :cond_13c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final resetAnalyticsData()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 9
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzam;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 10
    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11
    if-lez v0, :cond_26

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_26} :catch_27

    .line 13
    :cond_26
    return-void

    .line 14
    :catch_27
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;)Z
    .registers 5

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 97
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 98
    return v1

    .line 99
    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzfr;)Z
    .registers 5

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 108
    return v1

    .line 109
    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 111
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 115
    const/4 p1, 0x0

    return p1

    .line 116
    :cond_1b
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 243
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 244
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzcy;
    .registers 2

    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzdz;
    .registers 2

    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdw;
    .registers 2

    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 259
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 260
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 261
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 262
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 263
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr(I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    .line 117
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 119
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 120
    return-object v2

    .line 121
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    nop

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    const-string v4, "google_app_measurement_local.db"

    .line 125
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 126
    if-nez v0, :cond_25

    .line 127
    return-object v3

    .line 128
    :cond_25
    nop

    .line 129
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    :goto_2a
    if-ge v6, v4, :cond_215

    .line 130
    nop

    .line 131
    nop

    .line 132
    const/4 v8, 0x1

    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzam;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2f .. :try_end_33} :catch_1e5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2f .. :try_end_33} :catch_1cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_33} :catch_1a2
    .catchall {:try_start_2f .. :try_end_33} :catchall_19d

    .line 133
    if-nez v15, :cond_49

    .line 134
    :try_start_35
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_35 .. :try_end_37} :catch_46
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_35 .. :try_end_37} :catch_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_37} :catch_3d
    .catchall {:try_start_35 .. :try_end_37} :catchall_207

    .line 135
    if-eqz v15, :cond_3c

    .line 136
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 137
    :cond_3c
    return-object v2

    .line 220
    :catch_3d
    move-exception v0

    move-object v9, v2

    move-object v2, v15

    goto/16 :goto_1a5

    .line 213
    :catch_42
    move-exception v0

    move-object v2, v15

    goto/16 :goto_196

    .line 206
    :catch_46
    move-exception v0

    goto/16 :goto_1e8

    .line 138
    :cond_49
    :try_start_49
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 139
    const-string v10, "messages"

    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v11, v5

    const-string/jumbo v0, "type"

    aput-object v0, v11, v8

    const-string v0, "entry"

    const/4 v14, 0x2

    aput-object v0, v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid asc"

    const/16 v9, 0x64

    .line 140
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_49 .. :try_end_6c} :catch_199
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_49 .. :try_end_6c} :catch_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_6c} :catch_193
    .catchall {:try_start_49 .. :try_end_6c} :catchall_190

    .line 141
    move-object v9, v15

    const/4 v4, 0x2

    move-object v14, v0

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    :try_start_76
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_76 .. :try_end_7a} :catch_18d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_76 .. :try_end_7a} :catch_18b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_7a} :catch_189
    .catchall {:try_start_76 .. :try_end_7a} :catchall_187

    .line 142
    const-wide/16 v10, -0x1

    .line 143
    :goto_7c
    :try_start_7c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 144
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 145
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 146
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 147
    if-nez v0, :cond_c5

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7c .. :try_end_94} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7c .. :try_end_94} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_94} :catch_17c
    .catchall {:try_start_7c .. :try_end_94} :catchall_1b1

    .line 149
    :try_start_94
    array-length v0, v12

    invoke-virtual {v13, v12, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 150
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzae;
    :try_end_a3
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_94 .. :try_end_a3} :catch_af
    .catchall {:try_start_94 .. :try_end_a3} :catchall_ad

    .line 152
    :try_start_a3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 157
    if-eqz v0, :cond_ac

    .line 158
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a3 .. :try_end_ac} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a3 .. :try_end_ac} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a3 .. :try_end_ac} :catch_17c
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_1b1

    .line 159
    :cond_ac
    goto :goto_7c

    .line 156
    :catchall_ad
    move-exception v0

    goto :goto_c1

    .line 154
    :catch_af
    move-exception v0

    .line 155
    :try_start_b0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v12, "Failed to load event from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b0 .. :try_end_bd} :catchall_ad

    .line 156
    :try_start_bd
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto :goto_7c

    :goto_c1
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 159
    :cond_c5
    if-ne v0, v8, :cond_fe

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_bd .. :try_end_cb} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_bd .. :try_end_cb} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bd .. :try_end_cb} :catch_17c
    .catchall {:try_start_bd .. :try_end_cb} :catchall_1b1

    .line 161
    nop

    .line 162
    :try_start_cc
    array-length v0, v12

    invoke-virtual {v13, v12, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 163
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 164
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfr;
    :try_end_db
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_cc .. :try_end_db} :catch_e1
    .catchall {:try_start_cc .. :try_end_db} :catchall_df

    .line 165
    :try_start_db
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_de
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_db .. :try_end_de} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_db .. :try_end_de} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_db .. :try_end_de} :catch_17c
    .catchall {:try_start_db .. :try_end_de} :catchall_1b1

    .line 166
    goto :goto_f4

    .line 171
    :catchall_df
    move-exception v0

    goto :goto_fa

    .line 167
    :catch_e1
    move-exception v0

    .line 168
    :try_start_e2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v12, "Failed to load user property from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_e2 .. :try_end_ef} :catchall_df

    .line 169
    :try_start_ef
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 172
    const/4 v0, 0x0

    :goto_f4
    if-eqz v0, :cond_f9

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_f9
    goto :goto_7c

    .line 171
    :goto_fa
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 174
    :cond_fe
    if-ne v0, v4, :cond_138

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13
    :try_end_104
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ef .. :try_end_104} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ef .. :try_end_104} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ef .. :try_end_104} :catch_17c
    .catchall {:try_start_ef .. :try_end_104} :catchall_1b1

    .line 176
    nop

    .line 177
    :try_start_105
    array-length v0, v12

    invoke-virtual {v13, v12, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 178
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzm;
    :try_end_114
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_105 .. :try_end_114} :catch_11a
    .catchall {:try_start_105 .. :try_end_114} :catchall_118

    .line 181
    :try_start_114
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_117
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_114 .. :try_end_117} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_114 .. :try_end_117} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_114 .. :try_end_117} :catch_17c
    .catchall {:try_start_114 .. :try_end_117} :catchall_1b1

    .line 182
    goto :goto_12d

    .line 187
    :catchall_118
    move-exception v0

    goto :goto_134

    .line 183
    :catch_11a
    move-exception v0

    .line 184
    :try_start_11b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v12, "Failed to load user property from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_11b .. :try_end_128} :catchall_118

    .line 185
    :try_start_128
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 188
    const/4 v0, 0x0

    :goto_12d
    if-eqz v0, :cond_132

    .line 189
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_132
    goto/16 :goto_7c

    .line 187
    :goto_134
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 191
    :cond_138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 192
    goto/16 :goto_7c

    .line 193
    :cond_147
    const-string v0, "messages"

    const-string v4, "rowid <= ?"

    new-array v12, v8, [Ljava/lang/String;

    .line 194
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v5

    .line 195
    invoke-virtual {v2, v0, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_16a

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v4, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 198
    :cond_16a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 199
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_170
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_128 .. :try_end_170} :catch_182
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_128 .. :try_end_170} :catch_17e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_128 .. :try_end_170} :catch_17c
    .catchall {:try_start_128 .. :try_end_170} :catchall_1b1

    .line 200
    nop

    .line 201
    if-eqz v9, :cond_176

    .line 202
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_176
    if-eqz v2, :cond_17b

    .line 204
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    :cond_17b
    return-object v3

    .line 220
    :catch_17c
    move-exception v0

    goto :goto_1a5

    .line 213
    :catch_17e
    move-exception v0

    move-object v4, v2

    move-object v2, v9

    goto :goto_1d0

    .line 206
    :catch_182
    move-exception v0

    move-object v15, v2

    move-object v2, v9

    goto/16 :goto_1e8

    .line 229
    :catchall_187
    move-exception v0

    goto :goto_19f

    .line 220
    :catch_189
    move-exception v0

    goto :goto_1a4

    .line 213
    :catch_18b
    move-exception v0

    goto :goto_196

    .line 206
    :catch_18d
    move-exception v0

    move-object v15, v2

    goto :goto_19b

    .line 229
    :catchall_190
    move-exception v0

    move-object v2, v15

    goto :goto_19f

    .line 220
    :catch_193
    move-exception v0

    move-object v2, v15

    goto :goto_1a4

    .line 213
    :goto_196
    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_1d0

    .line 206
    :catch_199
    move-exception v0

    move-object v2, v15

    :goto_19b
    const/4 v2, 0x0

    goto :goto_1e8

    .line 229
    :catchall_19d
    move-exception v0

    const/4 v2, 0x0

    :goto_19f
    const/4 v9, 0x0

    goto/16 :goto_20a

    .line 220
    :catch_1a2
    move-exception v0

    const/4 v2, 0x0

    :goto_1a4
    const/4 v9, 0x0

    .line 221
    :goto_1a5
    if-eqz v2, :cond_1b3

    :try_start_1a7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 222
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1b3

    .line 229
    :catchall_1b1
    move-exception v0

    goto :goto_20a

    .line 223
    :cond_1b3
    :goto_1b3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v10, "Error reading entries from local database"

    invoke-virtual {v4, v10, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_1c2
    .catchall {:try_start_1a7 .. :try_end_1c2} :catchall_1b1

    .line 225
    if-eqz v9, :cond_1c7

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_1c7
    if-eqz v2, :cond_201

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_201

    .line 213
    :catch_1cd
    move-exception v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 214
    :goto_1d0
    int-to-long v8, v7

    :try_start_1d1
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d4
    .catchall {:try_start_1d1 .. :try_end_1d4} :catchall_1e1

    .line 215
    add-int/lit8 v7, v7, 0x14

    .line 216
    if-eqz v2, :cond_1db

    .line 217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1db
    if-eqz v4, :cond_201

    .line 219
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_201

    .line 229
    :catchall_1e1
    move-exception v0

    move-object v9, v2

    move-object v2, v4

    goto :goto_20a

    .line 206
    :catch_1e5
    move-exception v0

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 207
    :goto_1e8
    :try_start_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v9, "Error reading entries from local database"

    invoke-virtual {v4, v9, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzam;->zzaly:Z
    :try_end_1f7
    .catchall {:try_start_1e8 .. :try_end_1f7} :catchall_207

    .line 209
    if-eqz v2, :cond_1fc

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1fc
    if-eqz v15, :cond_201

    .line 212
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 233
    :cond_201
    :goto_201
    add-int/lit8 v6, v6, 0x1

    .line 129
    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_2a

    .line 229
    :catchall_207
    move-exception v0

    move-object v9, v2

    move-object v2, v15

    :goto_20a
    if-eqz v9, :cond_20f

    .line 230
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_20f
    if-eqz v2, :cond_214

    .line 232
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_214
    throw v0

    .line 234
    :cond_215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 235
    const/4 v2, 0x0

    return-object v2
.end method

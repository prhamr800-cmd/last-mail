###### Class com.google.android.gms.measurement.internal.zzr (com.google.android.gms.measurement.internal.zzr)
.class final Lcom/google/android/gms/measurement/internal/zzr;
.super Lcom/google/android/gms/measurement/internal/zzfj;


# static fields
.field private static final zzahl:[Ljava/lang/String;

.field private static final zzahm:[Ljava/lang/String;

.field private static final zzahn:[Ljava/lang/String;

.field private static final zzaho:[Ljava/lang/String;

.field private static final zzahp:[Ljava/lang/String;

.field private static final zzahq:[Ljava/lang/String;


# instance fields
.field private final zzahr:Lcom/google/android/gms/measurement/internal/zzu;

.field private final zzahs:Lcom/google/android/gms/measurement/internal/zzff;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1487
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "last_bundled_timestamp"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "last_bundled_day"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "last_sampled_complex_event_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "last_sampling_rate"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "last_exempt_from_sampling"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzr;->zzahl:[Ljava/lang/String;

    .line 1488
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "origin"

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    aput-object v2, v1, v4

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzr;->zzahm:[Ljava/lang/String;

    .line 1489
    const/16 v1, 0x2e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "app_version"

    aput-object v2, v1, v3

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    aput-object v2, v1, v4

    const-string v2, "app_store"

    aput-object v2, v1, v5

    const-string v2, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    aput-object v2, v1, v6

    const-string v2, "gmp_version"

    aput-object v2, v1, v7

    const-string v2, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    aput-object v2, v1, v8

    const-string v2, "dev_cert_hash"

    aput-object v2, v1, v9

    const-string v2, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    aput-object v2, v1, v10

    const-string v2, "measurement_enabled"

    aput-object v2, v1, v11

    const-string v2, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    aput-object v2, v1, v12

    const-string v2, "last_bundle_start_timestamp"

    aput-object v2, v1, v0

    const-string v0, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "day"

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "daily_public_events_count"

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "daily_events_count"

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "daily_conversions_count"

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "remote_config"

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "config_fetched_time"

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "failed_config_fetch_time"

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "app_version_int"

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "firebase_instance_id"

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "daily_error_events_count"

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "daily_realtime_events_count"

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "health_monitor_sample"

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v0, "android_id"

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v0, "adid_reporting_enabled"

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v0, "ssaid_reporting_enabled"

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v0, "admob_app_id"

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v0, "linked_admob_app_id"

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v0, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzr;->zzahn:[Ljava/lang/String;

    .line 1490
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "realtime"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaho:[Ljava/lang/String;

    .line 1491
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "has_realtime"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "retry_count"

    aput-object v1, v0, v5

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahp:[Ljava/lang/String;

    .line 1492
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "previous_install_count"

    aput-object v1, v0, v3

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahq:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzff;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzahs:Lcom/google/android/gms/measurement/internal/zzff;

    .line 3
    const-string p1, "google_app_measurement.db"

    .line 4
    nop

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzr;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzahr:Lcom/google/android/gms/measurement/internal/zzu;

    .line 6
    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    nop

    .line 19
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_a} :catch_2b
    .catchall {:try_start_6 .. :try_end_a} :catchall_28

    .line 20
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 21
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_15} :catch_25
    .catchall {:try_start_a .. :try_end_15} :catchall_23

    .line 22
    if-eqz p2, :cond_1a

    .line 23
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_1a
    return-wide v0

    .line 25
    :cond_1b
    :try_start_1b
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database returned empty set"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_23} :catch_25
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 29
    :catchall_23
    move-exception p1

    goto :goto_3a

    .line 26
    :catch_25
    move-exception v0

    move-object v1, p2

    goto :goto_2c

    .line 29
    :catchall_28
    move-exception p1

    move-object p2, v1

    goto :goto_3a

    .line 26
    :catch_2b
    move-exception v0

    .line 27
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v2, "Database error"

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    throw v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_28

    .line 29
    :goto_3a
    if-eqz p2, :cond_3f

    .line 30
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw p1
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    nop

    .line 33
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_a} :catch_2a
    .catchall {:try_start_6 .. :try_end_a} :catchall_28

    .line 34
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 35
    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_15} :catch_25
    .catchall {:try_start_a .. :try_end_15} :catchall_22

    .line 36
    if-eqz p2, :cond_1a

    .line 37
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_1a
    return-wide p3

    .line 39
    :cond_1b
    nop

    .line 40
    if-eqz p2, :cond_21

    .line 41
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_21
    return-wide p3

    .line 46
    :catchall_22
    move-exception p1

    move-object v1, p2

    goto :goto_39

    .line 43
    :catch_25
    move-exception p3

    move-object v1, p2

    goto :goto_2b

    .line 46
    :catchall_28
    move-exception p1

    goto :goto_39

    .line 43
    :catch_2a
    move-exception p3

    .line 44
    :goto_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p4, "Database error"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    throw p3
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_28

    .line 46
    :goto_39
    if-eqz v1, :cond_3e

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzff;
    .registers 1

    .line 1480
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzahs:Lcom/google/android/gms/measurement/internal/zzff;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1190
    nop

    .line 1191
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 1192
    nop

    .line 1193
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_50

    .line 1201
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1202
    return-object v1

    .line 1199
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1200
    return-object v1

    .line 1198
    :pswitch_2a
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1197
    :pswitch_2f
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1196
    :pswitch_38
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1194
    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1195
    return-object v1

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_41
        :pswitch_38
        :pswitch_2f
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1184
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1185
    :cond_10
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 1186
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 1187
    :cond_1a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_24

    .line 1188
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 1189
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfy;)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 927
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 928
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 929
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 930
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 932
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 934
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 935
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 936
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 937
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 938
    return v1

    .line 939
    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    .line 940
    new-array v0, v0, [B

    .line 941
    nop

    .line 942
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    .line 943
    nop

    .line 944
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 945
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_44} :catch_a4

    .line 946
    nop

    .line 953
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 954
    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string p2, "event_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string p2, "data"

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 959
    :try_start_6b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 960
    const-string p3, "event_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 961
    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    .line 962
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_8e

    .line 963
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 964
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 965
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_8e} :catch_91

    .line 966
    :cond_8e
    nop

    .line 972
    const/4 p1, 0x1

    return p1

    .line 967
    :catch_91
    move-exception p2

    .line 968
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 969
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v0, "Error storing event filter. appId"

    .line 970
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 971
    return v1

    .line 947
    :catch_a4
    move-exception p2

    .line 948
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 949
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize event filter. appId"

    .line 950
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 951
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 952
    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzgb;)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 975
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 976
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 978
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 980
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 981
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 982
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 983
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 984
    return v1

    .line 985
    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    .line 986
    new-array v0, v0, [B

    .line 987
    nop

    .line 988
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    .line 989
    nop

    .line 990
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 991
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_44} :catch_a5

    .line 992
    nop

    .line 999
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string p2, "filter_id"

    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    const-string p2, "property_name"

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string p2, "data"

    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1005
    :try_start_6b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1006
    const-string p3, "property_filters"

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 1007
    invoke-virtual {p2, p3, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    .line 1008
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_8f

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1010
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 1011
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_8e} :catch_92

    .line 1012
    return v1

    .line 1013
    :cond_8f
    nop

    .line 1019
    const/4 p1, 0x1

    return p1

    .line 1014
    :catch_92
    move-exception p2

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 1016
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v0, "Error storing property filter. appId"

    .line 1017
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1018
    return v1

    .line 993
    :catch_a5
    move-exception p2

    .line 994
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 995
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v0, "Configuration loss. Failed to serialize property filter. appId"

    .line 996
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 997
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    return v1
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1108
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1112
    const/4 v1, 0x0

    :try_start_e
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1113
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_19} :catch_b7

    .line 1114
    nop

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    .line 1121
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzag;->zzakl:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v2, p1, v6}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v2

    .line 1122
    const/16 v6, 0x7d0

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1123
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1124
    nop

    .line 1125
    int-to-long v6, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_35

    .line 1126
    return v1

    .line 1127
    :cond_35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    const/4 v5, 0x0

    :goto_3b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 1129
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1130
    if-eqz v6, :cond_5c

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_4e

    goto :goto_5c

    .line 1132
    :cond_4e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 1131
    :cond_5c
    :goto_5c
    return v1

    .line 1134
    :cond_5d
    const-string p2, ","

    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1135
    const-string v4, "audience_filter_values"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x8c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 1136
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    .line 1137
    invoke-virtual {v0, v4, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1138
    if-lez p1, :cond_b6

    return v3

    :cond_b6
    return v1

    .line 1115
    :catch_b7
    move-exception p2

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Database error querying filters. appId"

    .line 1118
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    return v1
.end method

.method private final zzip()Z
    .registers 3

    .line 1477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1478
    const-string v1, "google_app_measurement.db"

    .line 1479
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic zziq()[Ljava/lang/String;
    .registers 1

    .line 1481
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahl:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzir()[Ljava/lang/String;
    .registers 1

    .line 1482
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahm:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzis()[Ljava/lang/String;
    .registers 1

    .line 1483
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahn:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzit()[Ljava/lang/String;
    .registers 1

    .line 1484
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zziu()[Ljava/lang/String;
    .registers 1

    .line 1485
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzaho:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zziv()[Ljava/lang/String;
    .registers 1

    .line 1486
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzr;->zzahq:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final beginTransaction()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    return-void
.end method

.method public final endTransaction()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    return-void
.end method

.method final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 49
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzahr:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 50
    :catch_a
    move-exception v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    throw v0
.end method

.method public final setTransactionSuccessful()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 13
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgl;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1251
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1253
    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    .line 1254
    new-array v0, v0, [B

    .line 1255
    nop

    .line 1256
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v1

    .line 1257
    nop

    .line 1258
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 1259
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_8c

    .line 1260
    nop

    .line 1267
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    .line 1268
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1270
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfu;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 1271
    if-nez v2, :cond_47

    .line 1272
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to get MD5"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1273
    const-wide/16 v1, 0x0

    goto :goto_4f

    .line 1274
    :cond_47
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1275
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc([B)J

    move-result-wide v1

    .line 1276
    :goto_4f
    nop

    .line 1277
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1278
    const-string v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v4, "metadata_fingerprint"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1280
    const-string v4, "metadata"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1281
    :try_start_6a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1282
    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_75} :catch_77

    .line 1283
    nop

    .line 1290
    return-wide v1

    .line 1284
    :catch_77
    move-exception v0

    .line 1285
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1286
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1287
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1288
    const-string v2, "Error storing raw event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1289
    throw v0

    .line 1261
    :catch_8c
    move-exception v0

    .line 1262
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1264
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1265
    const-string v2, "Data loss. Failed to serialize event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1266
    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzgi;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1340
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1341
    nop

    .line 1342
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1343
    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1344
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 1345
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_1f} :catch_7b
    .catchall {:try_start_8 .. :try_end_1f} :catchall_78

    .line 1346
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_38

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_32} :catch_76
    .catchall {:try_start_1f .. :try_end_32} :catchall_90

    .line 1348
    if-eqz v1, :cond_37

    .line 1349
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_37
    return-object v0

    .line 1351
    :cond_38
    :try_start_38
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1352
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1353
    nop

    .line 1354
    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v2

    .line 1355
    nop

    .line 1356
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_50} :catch_76
    .catchall {:try_start_38 .. :try_end_50} :catchall_90

    .line 1357
    :try_start_50
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_53} :catch_76
    .catchall {:try_start_50 .. :try_end_53} :catchall_90

    .line 1358
    nop

    .line 1367
    :try_start_54
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_58} :catch_76
    .catchall {:try_start_54 .. :try_end_58} :catchall_90

    .line 1368
    if-eqz v1, :cond_5d

    .line 1369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1370
    :cond_5d
    return-object p1

    .line 1359
    :catch_5e
    move-exception v2

    .line 1360
    :try_start_5f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1361
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 1362
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1363
    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_70} :catch_76
    .catchall {:try_start_5f .. :try_end_70} :catchall_90

    .line 1364
    if-eqz v1, :cond_75

    .line 1365
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1366
    :cond_75
    return-object v0

    .line 1371
    :catch_76
    move-exception p1

    goto :goto_7d

    .line 1375
    :catchall_78
    move-exception p1

    move-object v1, v0

    goto :goto_91

    .line 1371
    :catch_7b
    move-exception p1

    move-object v1, v0

    .line 1372
    :goto_7d
    :try_start_7d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_90

    .line 1373
    if-eqz v1, :cond_8f

    .line 1374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1377
    :cond_8f
    return-object v0

    .line 1375
    :catchall_90
    move-exception p1

    :goto_91
    if-eqz v1, :cond_96

    .line 1376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_96
    throw p1
.end method

.method public final zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzs;
    .registers 28
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 598
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 601
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 602
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzs;

    invoke-direct {v4}, Lcom/google/android/gms/measurement/internal/zzs;-><init>()V

    .line 603
    nop

    .line 604
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 605
    const-string v7, "apps"

    const/4 v6, 0x6

    new-array v8, v6, [Ljava/lang/String;

    const-string v6, "day"

    aput-object v6, v8, v3

    const-string v6, "daily_events_count"

    aput-object v6, v8, v0

    const-string v6, "daily_public_events_count"

    const/4 v15, 0x2

    aput-object v6, v8, v15

    const-string v6, "daily_conversions_count"

    const/4 v13, 0x3

    aput-object v6, v8, v13

    const-string v6, "daily_error_events_count"

    const/4 v12, 0x4

    aput-object v6, v8, v12

    const-string v6, "daily_realtime_events_count"

    const/4 v11, 0x5

    aput-object v6, v8, v11

    const-string v9, "app_id=?"

    new-array v10, v0, [Ljava/lang/String;

    aput-object p3, v10, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 606
    move-object v6, v14

    const/4 v5, 0x5

    move-object/from16 v11, v16

    const/4 v5, 0x4

    move-object/from16 v12, v17

    const/4 v5, 0x3

    move-object/from16 v13, v18

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_54
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_54} :catch_11f
    .catchall {:try_start_15 .. :try_end_54} :catchall_11c

    .line 607
    :try_start_54
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_72

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Not updating daily counts, app is not known. appId"

    .line 610
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_6b} :catch_119
    .catchall {:try_start_54 .. :try_end_6b} :catchall_117

    .line 611
    nop

    .line 612
    if-eqz v6, :cond_71

    .line 613
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_71
    return-object v4

    .line 615
    :cond_72
    :try_start_72
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 616
    cmp-long v3, v7, p1

    if-nez v3, :cond_9a

    .line 617
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    .line 618
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    .line 619
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahv:J

    .line 620
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    .line 621
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    .line 622
    :cond_9a
    const-wide/16 v7, 0x1

    if-eqz p4, :cond_a4

    .line 623
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    .line 624
    :cond_a4
    if-eqz p5, :cond_ac

    .line 625
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    .line 626
    :cond_ac
    if-eqz p6, :cond_b4

    .line 627
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahv:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahv:J

    .line 628
    :cond_b4
    if-eqz p7, :cond_bc

    .line 629
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    .line 630
    :cond_bc
    if-eqz p8, :cond_c4

    .line 631
    iget-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    const/4 v0, 0x0

    add-long/2addr v11, v7

    iput-wide v11, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    .line 632
    :cond_c4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    const-string v3, "day"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 634
    const-string v3, "daily_public_events_count"

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 635
    const-string v3, "daily_events_count"

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    const-string v3, "daily_conversions_count"

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahv:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    const-string v3, "daily_error_events_count"

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 638
    const-string v3, "daily_realtime_events_count"

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    const-string v3, "apps"

    const-string v5, "app_id=?"

    invoke-virtual {v14, v3, v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_110} :catch_119
    .catchall {:try_start_72 .. :try_end_110} :catchall_117

    .line 640
    nop

    .line 641
    if-eqz v6, :cond_116

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_116
    return-object v4

    .line 652
    :catchall_117
    move-exception v0

    goto :goto_13b

    .line 644
    :catch_119
    move-exception v0

    move-object v5, v6

    goto :goto_121

    .line 652
    :catchall_11c
    move-exception v0

    const/4 v6, 0x0

    goto :goto_13b

    .line 644
    :catch_11f
    move-exception v0

    const/4 v5, 0x0

    .line 645
    :goto_121
    :try_start_121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 646
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error updating daily counts. appId"

    .line 647
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_132
    .catchall {:try_start_121 .. :try_end_132} :catchall_139

    .line 648
    nop

    .line 649
    if-eqz v5, :cond_138

    .line 650
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_138
    return-object v4

    .line 652
    :catchall_139
    move-exception v0

    move-object v6, v5

    :goto_13b
    if-eqz v6, :cond_140

    .line 653
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_140
    throw v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "lifetime_count"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v1, "current_bundle_count"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaii:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string v1, "last_fire_timestamp"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "last_bundled_timestamp"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v1, "last_bundled_day"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v1, "last_sampled_complex_event_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "last_sampling_rate"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    nop

    .line 110
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_72

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 111
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_73

    .line 112
    :cond_72
    move-object v1, v2

    :goto_73
    const-string v3, "last_exempt_from_sampling"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    :try_start_78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 114
    const-string v3, "events"

    const/4 v4, 0x5

    .line 115
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 116
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9c

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_9c} :catch_9d

    .line 121
    :cond_9c
    return-void

    .line 122
    :catch_9d
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error storing event aggregates. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zztt:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 533
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 536
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 537
    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "last_bundle_index"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    const-string v1, "last_bundle_start_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    const-string v1, "last_bundle_end_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    const-string v1, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "gmp_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    const-string v1, "dev_cert_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v1, "measurement_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 549
    const-string v1, "day"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string v1, "daily_public_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzho()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    const-string v1, "daily_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    const-string v1, "daily_conversions_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    const-string v1, "config_fetched_time"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    const-string v1, "failed_config_fetch_time"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    const-string v1, "app_version_int"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v1, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "daily_error_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    const-string v1, "daily_realtime_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v1, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzht()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "android_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 561
    const-string v1, "adid_reporting_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 562
    const-string v1, "ssaid_reporting_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 563
    const-string v1, "admob_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :try_start_149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 565
    const-string v2, "apps"

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 567
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_189

    .line 568
    const-string v2, "apps"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 569
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 570
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_189

    .line 571
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 574
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_189
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_149 .. :try_end_189} :catch_18a

    .line 575
    :cond_189
    return-void

    .line 576
    :catch_18a
    move-exception v0

    .line 577
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error storing app. appId"

    .line 579
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzfx;)V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 853
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 854
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 855
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 858
    nop

    .line 859
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 860
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 861
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 862
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 863
    const-string v2, "property_filters"

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 864
    const-string v2, "event_filters"

    const-string v3, "app_id=?"

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_11f

    aget-object v3, p2, v2

    .line 866
    nop

    .line 867
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 868
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 869
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    if-nez v5, :cond_6d

    .line 874
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v5, "Audience with no ID. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    goto/16 :goto_11b

    .line 876
    :cond_6d
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 877
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_77
    if-ge v9, v8, :cond_97

    aget-object v10, v7, v9

    .line 878
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    if-nez v10, :cond_94

    .line 879
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 880
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v7, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 881
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    .line 882
    invoke-virtual {v5, v7, v8, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    goto/16 :goto_11b

    .line 884
    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    .line 885
    :cond_97
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_9b
    if-ge v9, v8, :cond_ba

    aget-object v10, v7, v9

    .line 886
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    if-nez v10, :cond_b7

    .line 887
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 888
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v7, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 889
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    .line 890
    invoke-virtual {v5, v7, v8, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 891
    goto :goto_11b

    .line 892
    :cond_b7
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    .line 893
    :cond_ba
    nop

    .line 894
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_bf
    if-ge v9, v8, :cond_d0

    aget-object v10, v7, v9

    .line 895
    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfy;)Z

    move-result v10

    if-nez v10, :cond_cd

    .line 896
    nop

    .line 897
    nop

    .line 899
    const/4 v7, 0x0

    goto :goto_d1

    .line 898
    :cond_cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_bf

    .line 899
    :cond_d0
    const/4 v7, 0x1

    :goto_d1
    if-eqz v7, :cond_e8

    .line 900
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_d7
    if-ge v9, v8, :cond_e8

    aget-object v10, v3, v9

    .line 901
    invoke-direct {p0, p1, v5, v10}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzgb;)Z

    move-result v10

    if-nez v10, :cond_e5

    .line 902
    nop

    .line 903
    nop

    .line 905
    const/4 v7, 0x0

    goto :goto_e8

    .line 904
    :cond_e5
    add-int/lit8 v9, v9, 0x1

    goto :goto_d7

    .line 905
    :cond_e8
    :goto_e8
    if-nez v7, :cond_11b

    .line 906
    nop

    .line 907
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 908
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 909
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 910
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 911
    const-string v7, "property_filters"

    const-string v8, "app_id=? and audience_id=?"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v6

    .line 912
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 913
    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 914
    const-string v7, "event_filters"

    const-string v8, "app_id=? and audience_id=?"

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v6

    .line 915
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 916
    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    :cond_11b
    :goto_11b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3b

    .line 918
    :cond_11f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    array-length v2, p2

    :goto_125
    if-ge v6, v2, :cond_131

    aget-object v3, p2, v6

    .line 920
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v6, v6, 0x1

    goto :goto_125

    .line 922
    :cond_131
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;Ljava/util/List;)Z

    .line 923
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_137
    .catchall {:try_start_14 .. :try_end_137} :catchall_13b

    .line 924
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 925
    return-void

    .line 926
    :catchall_13b
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgl;Z)Z
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 685
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 686
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->zzij()V

    .line 690
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 691
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzib()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    .line 692
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzib()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_56

    .line 693
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 694
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 695
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 696
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    .line 697
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 698
    :cond_56
    const/4 v0, 0x0

    :try_start_57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v1

    .line 699
    new-array v1, v1, [B

    .line 700
    nop

    .line 701
    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    .line 702
    nop

    .line 703
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 704
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V

    .line 705
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb([B)[B

    move-result-object v1
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_72} :catch_ee

    .line 706
    nop

    .line 713
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Saving bundle, size"

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 715
    const-string v3, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v3, "bundle_end_timestamp"

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 718
    const-string v1, "has_realtime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayv:Ljava/lang/Integer;

    if-eqz p2, :cond_b1

    .line 720
    const-string p2, "retry_count"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayv:Ljava/lang/Integer;

    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 722
    const-string v1, "queue"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 723
    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_d6

    .line 724
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 725
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Failed to insert bundle (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 726
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b1 .. :try_end_d5} :catch_d9

    .line 727
    return v0

    .line 728
    :cond_d6
    nop

    .line 734
    const/4 p1, 0x1

    return p1

    .line 729
    :catch_d9
    move-exception p2

    .line 730
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error storing bundle. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 732
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 733
    return v0

    .line 707
    :catch_ee
    move-exception p2

    .line 708
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 710
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 711
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 712
    return v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzft;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 147
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 148
    const/4 v1, 0x1

    if-nez v0, :cond_47

    .line 149
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcv(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, 0x19

    const/4 v4, 0x0

    if-eqz v0, :cond_31

    .line 150
    const-string v0, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    aput-object v6, v5, v4

    .line 151
    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 152
    cmp-long v0, v5, v2

    if-ltz v0, :cond_30

    .line 153
    return v4

    .line 154
    :cond_30
    goto :goto_47

    .line 155
    :cond_31
    const-string v0, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzft;->origin:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 156
    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 157
    cmp-long v0, v5, v2

    if-ltz v0, :cond_47

    .line 158
    return v4

    .line 159
    :cond_47
    :goto_47
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->origin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "set_timestamp"

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->zzaux:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string/jumbo v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :try_start_74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 166
    const-string/jumbo v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 167
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 168
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_9a

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    .line 171
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 172
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_9a} :catch_9b

    .line 173
    :cond_9a
    goto :goto_af

    .line 174
    :catch_9b
    move-exception v0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error storing user property. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzft;->zztt:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    :goto_af
    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 312
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 315
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 316
    const/4 v1, 0x1

    if-nez v0, :cond_2a

    .line 317
    const-string v0, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 318
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 319
    const-wide/16 v5, 0x3e8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2a

    .line 320
    return v4

    .line 321
    :cond_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    const-string v2, "active"

    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    const-string/jumbo v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->triggerEventName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "trigger_timeout"

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->triggerTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string/jumbo v2, "timed_out_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahf:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 330
    const-string v2, "creation_timestamp"

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->creationTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    const-string/jumbo v2, "triggered_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 332
    const-string/jumbo v2, "triggered_timestamp"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->zzaux:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const-string/jumbo v2, "time_to_live"

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->timeToLive:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    const-string v2, "expired_event"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 335
    :try_start_c2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 336
    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 337
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 338
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_e7

    .line 339
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 341
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 342
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c2 .. :try_end_e7} :catch_e8

    .line 343
    :cond_e7
    goto :goto_fc

    .line 344
    :catch_e8
    move-exception v0

    .line 345
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error storing conditional user property"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 347
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 348
    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    :goto_fc
    return v1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzz;JZ)Z
    .registers 13

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1424
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1426
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    .line 1427
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzaif:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    .line 1428
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgj;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1429
    nop

    .line 1430
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1431
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 1432
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    add-int/lit8 v7, v3, 0x1

    aput-object v5, v6, v3

    .line 1433
    iput-object v4, v5, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1434
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/Object;)V

    .line 1436
    nop

    .line 1430
    move v3, v7

    goto :goto_2e

    .line 1437
    :cond_57
    :try_start_57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v1

    .line 1438
    new-array v1, v1, [B

    .line 1439
    nop

    .line 1440
    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v3

    .line 1441
    nop

    .line 1442
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 1443
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6a} :catch_fa

    .line 1444
    nop

    .line 1451
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1452
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Saving event, name, data size"

    .line 1453
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    .line 1454
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1455
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1456
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    const-string v3, "app_id"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v3, "name"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v3, "timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzz;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1460
    const-string v3, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1461
    const-string p2, "data"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1462
    const-string p2, "realtime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    :try_start_bd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1464
    const-string p3, "raw_events"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    .line 1465
    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_e2

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1467
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to insert raw event (got -1). appId"

    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    .line 1468
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bd .. :try_end_e1} :catch_e5

    .line 1469
    return v2

    .line 1470
    :cond_e2
    nop

    .line 1476
    const/4 p1, 0x1

    return p1

    .line 1471
    :catch_e5
    move-exception p2

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 1473
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string p4, "Error storing raw event. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    .line 1474
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1475
    return v2

    .line 1445
    :catch_fa
    move-exception p2

    .line 1446
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 1447
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string p4, "Data loss. Failed to serialize event params/data. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    .line 1448
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1449
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1450
    return v2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzgi;)Z
    .registers 11

    .line 1378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1380
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v1

    .line 1384
    new-array v1, v1, [B

    .line 1385
    nop

    .line 1386
    array-length v2, v1

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    .line 1387
    nop

    .line 1388
    invoke-virtual {p5, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 1389
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_23} :catch_95

    .line 1390
    nop

    .line 1397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p5

    .line 1398
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p5

    const-string v2, "Saving complex main event, appId, data size"

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    .line 1400
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1401
    invoke-virtual {p5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1402
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 1403
    const-string v2, "app_id"

    invoke-virtual {p5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v2, "event_id"

    invoke-virtual {p5, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1405
    const-string p2, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1406
    const-string p2, "main_event"

    invoke-virtual {p5, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1407
    :try_start_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 1408
    const-string p3, "main_event_params"

    const/4 p4, 0x0

    const/4 v1, 0x5

    .line 1409
    invoke-virtual {p2, p3, p4, p5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    .line 1410
    const-wide/16 p4, -0x1

    cmp-long v1, p2, p4

    if-nez v1, :cond_7f

    .line 1411
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1412
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Failed to insert complex main event (got -1). appId"

    .line 1413
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_7e} :catch_82

    .line 1414
    return v0

    .line 1415
    :cond_7f
    nop

    .line 1421
    const/4 p1, 0x1

    return p1

    .line 1416
    :catch_82
    move-exception p2

    .line 1417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 1418
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string p4, "Error storing complex main event. appId"

    .line 1419
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1420
    return v0

    .line 1391
    :catch_95
    move-exception p3

    .line 1392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p4

    .line 1393
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p4

    const-string p5, "Data loss. Failed to serialize event params/data. appId, eventId"

    .line 1394
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1395
    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1396
    return v0
.end method

.method public final zzah(J)Ljava/lang/String;
    .registers 7

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1299
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1300
    nop

    .line 1301
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1302
    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 1303
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 1304
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_1c} :catch_44
    .catchall {:try_start_8 .. :try_end_1c} :catchall_41

    .line 1305
    :try_start_1c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_35

    .line 1306
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_2f} :catch_3f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_59

    .line 1307
    if-eqz p1, :cond_34

    .line 1308
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1309
    :cond_34
    return-object v0

    .line 1310
    :cond_35
    :try_start_35
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_39} :catch_3f
    .catchall {:try_start_35 .. :try_end_39} :catchall_59

    .line 1311
    if-eqz p1, :cond_3e

    .line 1312
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1313
    :cond_3e
    return-object p2

    .line 1314
    :catch_3f
    move-exception p2

    goto :goto_46

    .line 1318
    :catchall_41
    move-exception p2

    move-object p1, v0

    goto :goto_5a

    .line 1314
    :catch_44
    move-exception p2

    move-object p1, v0

    .line 1315
    :goto_46
    :try_start_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_59

    .line 1316
    if-eqz p1, :cond_58

    .line 1317
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_58
    return-object v0

    .line 1318
    :catchall_59
    move-exception p2

    :goto_5a
    if-eqz p1, :cond_5f

    .line 1319
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw p2
.end method

.method public final zzb(Ljava/lang/String;II)Ljava/util/List;
    .registers 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 757
    move/from16 v1, p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 758
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 759
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p2, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 760
    if-lez v1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 762
    const/4 v4, 0x0

    .line 763
    :try_start_1e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 764
    const-string v6, "queue"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "rowid"

    aput-object v8, v7, v3

    const-string v8, "data"

    aput-object v8, v7, v2

    const-string v8, "retry_count"

    const/4 v14, 0x2

    aput-object v8, v7, v14

    const-string v8, "app_id=?"

    new-array v9, v2, [Ljava/lang/String;

    aput-object p1, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "rowid"

    .line 765
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 766
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_46} :catch_e4
    .catchall {:try_start_1e .. :try_end_46} :catchall_e1

    .line 767
    :try_start_46
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_56

    .line 768
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_50} :catch_de
    .catchall {:try_start_46 .. :try_end_50} :catchall_dc

    .line 769
    if-eqz v5, :cond_55

    .line 770
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_55
    return-object v0

    .line 772
    :cond_56
    :try_start_56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 773
    nop

    .line 774
    const/4 v6, 0x0

    :cond_5d
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_61} :catch_de
    .catchall {:try_start_56 .. :try_end_61} :catchall_dc

    .line 775
    :try_start_61
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([B)[B

    move-result-object v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6d} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_6d} :catch_de
    .catchall {:try_start_61 .. :try_end_6d} :catchall_dc

    .line 777
    nop

    .line 783
    :try_start_6e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_78

    array-length v9, v0

    add-int/2addr v9, v6

    if-gt v9, v1, :cond_d5

    .line 784
    :cond_78
    nop

    .line 785
    array-length v9, v0

    invoke-static {v0, v3, v9}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v9

    .line 786
    nop

    .line 787
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_84} :catch_de
    .catchall {:try_start_6e .. :try_end_84} :catchall_dc

    .line 788
    :try_start_84
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_87} :catch_de
    .catchall {:try_start_84 .. :try_end_87} :catchall_dc

    .line 789
    nop

    .line 795
    :try_start_88
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_98

    .line 796
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v10, Lcom/google/android/gms/internal/measurement/zzgl;->zzayv:Ljava/lang/Integer;

    .line 797
    :cond_98
    array-length v0, v0

    add-int/2addr v6, v0

    .line 798
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 790
    :catch_a6
    move-exception v0

    move-object v7, v0

    .line 791
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v8, "Failed to merge queued bundle. appId"

    .line 793
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 794
    goto :goto_cd

    .line 778
    :catch_ba
    move-exception v0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 780
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Failed to unzip queued bundle. appId"

    .line 781
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    nop

    .line 799
    :goto_cd
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_d1} :catch_de
    .catchall {:try_start_88 .. :try_end_d1} :catchall_dc

    if-eqz v0, :cond_d5

    if-le v6, v1, :cond_5d

    .line 800
    :cond_d5
    nop

    .line 801
    if-eqz v5, :cond_db

    .line 802
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_db
    return-object v4

    .line 810
    :catchall_dc
    move-exception v0

    goto :goto_100

    .line 804
    :catch_de
    move-exception v0

    move-object v4, v5

    goto :goto_e5

    .line 810
    :catchall_e1
    move-exception v0

    move-object v5, v4

    goto :goto_100

    .line 804
    :catch_e4
    move-exception v0

    .line 805
    :goto_e5
    :try_start_e5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error querying bundles. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_fa
    .catchall {:try_start_e5 .. :try_end_fa} :catchall_e1

    .line 807
    if-eqz v4, :cond_ff

    .line 808
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_ff
    return-object v0

    .line 810
    :goto_100
    if-eqz v5, :cond_105

    .line 811
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_105
    throw v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzft;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    nop

    .line 261
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_16} :catch_12d
    .catchall {:try_start_10 .. :try_end_16} :catchall_129

    .line 262
    move-object/from16 v11, p1

    :try_start_18
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_id=?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_26} :catch_125
    .catchall {:try_start_18 .. :try_end_26} :catchall_129

    if-nez v5, :cond_38

    .line 265
    move-object/from16 v5, p2

    :try_start_2a
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v6, " and origin=?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 303
    :catch_33
    move-exception v0

    move-object/from16 v14, p0

    goto/16 :goto_134

    .line 267
    :cond_38
    move-object/from16 v5, p2

    :goto_3a
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 268
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v6, " and name glob ?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 272
    const-string/jumbo v13, "user_attributes"

    const/4 v2, 0x4

    new-array v14, v2, [Ljava/lang/String;

    const-string v2, "name"

    const/4 v10, 0x0

    aput-object v2, v14, v10

    const-string v2, "set_timestamp"

    const/4 v8, 0x1

    aput-object v2, v14, v8

    const-string/jumbo v2, "value"

    const/4 v9, 0x2

    aput-object v2, v14, v9

    const-string v2, "origin"

    aput-object v2, v14, v3

    .line 273
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    .line 274
    const-string v20, "1001"

    .line 275
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_8e} :catch_33
    .catchall {:try_start_2a .. :try_end_8e} :catchall_129

    .line 276
    :try_start_8e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e .. :try_end_92} :catch_121
    .catchall {:try_start_8e .. :try_end_92} :catchall_11d

    if-nez v4, :cond_9b

    .line 277
    nop

    .line 278
    if-eqz v2, :cond_9a

    .line 279
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_9a
    return-object v0

    .line 281
    :cond_9b
    :goto_9b
    :try_start_9b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_b8

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 285
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    nop

    .line 299
    move-object/from16 v14, p0

    goto :goto_105

    .line 287
    :cond_b8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9b .. :try_end_c0} :catch_121
    .catchall {:try_start_9b .. :try_end_c0} :catchall_11d

    .line 289
    move-object/from16 v14, p0

    :try_start_c2
    invoke-direct {v14, v2, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v15

    .line 290
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_ca
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c2 .. :try_end_ca} :catch_11b
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_14c

    .line 291
    if-nez v15, :cond_ea

    .line 292
    :try_start_cc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 293
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "(2)Read invalid user property value, ignoring it"

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 295
    move-object/from16 v12, p3

    invoke-virtual {v4, v5, v7, v6, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cc .. :try_end_df} :catch_e7
    .catchall {:try_start_cc .. :try_end_df} :catchall_14c

    .line 298
    move-object/from16 v16, v6

    const/4 v12, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    goto :goto_ff

    .line 303
    :catch_e7
    move-exception v0

    move-object v5, v6

    goto :goto_135

    .line 296
    :cond_ea
    :try_start_ea
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzft;
    :try_end_ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_ec} :catch_115
    .catchall {:try_start_ea .. :try_end_ec} :catchall_14c

    move-object v4, v5

    move-object v3, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    const/16 v17, 0x1

    const/16 v18, 0x2

    move-wide v8, v12

    const/4 v12, 0x0

    move-object v10, v15

    :try_start_f9
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 297
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_ff
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_103
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f9 .. :try_end_103} :catch_113
    .catchall {:try_start_f9 .. :try_end_103} :catchall_14c

    if-nez v3, :cond_10c

    .line 299
    :goto_105
    nop

    .line 300
    if-eqz v2, :cond_10b

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_10b
    return-object v0

    .line 281
    :cond_10c
    move-object/from16 v5, v16

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto :goto_9b

    .line 303
    :catch_113
    move-exception v0

    goto :goto_118

    :catch_115
    move-exception v0

    move-object/from16 v16, v6

    :goto_118
    move-object/from16 v5, v16

    goto :goto_135

    :catch_11b
    move-exception v0

    goto :goto_135

    .line 310
    :catchall_11d
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_14d

    .line 303
    :catch_121
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_135

    :catch_125
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_132

    .line 310
    :catchall_129
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_14e

    .line 303
    :catch_12d
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    :goto_132
    move-object/from16 v5, p2

    :goto_134
    move-object v2, v1

    .line 304
    :goto_135
    :try_start_135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "(2)Error querying user properties"

    .line 306
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catchall {:try_start_135 .. :try_end_146} :catchall_14c

    .line 307
    if-eqz v2, :cond_14b

    .line 308
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_14b
    return-object v1

    .line 310
    :catchall_14c
    move-exception v0

    :goto_14d
    move-object v1, v2

    :goto_14e
    if-eqz v1, :cond_153

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_153
    throw v0
.end method

.method public final zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    nop

    .line 432
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 433
    const-string v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "app_id"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "name"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string/jumbo v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "active"

    const/4 v15, 0x4

    aput-object v5, v4, v15

    const-string/jumbo v5, "trigger_event_name"

    const/4 v10, 0x5

    aput-object v5, v4, v10

    const-string/jumbo v5, "trigger_timeout"

    const/4 v9, 0x6

    aput-object v5, v4, v9

    const-string/jumbo v5, "timed_out_event"

    const/4 v8, 0x7

    aput-object v5, v4, v8

    const-string v5, "creation_timestamp"

    const/16 v7, 0x8

    aput-object v5, v4, v7

    const-string/jumbo v5, "triggered_event"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string/jumbo v5, "triggered_timestamp"

    const/16 v1, 0xa

    aput-object v5, v4, v1

    const-string/jumbo v5, "time_to_live"

    const/16 v1, 0xb

    aput-object v5, v4, v1

    const-string v5, "expired_event"

    const/16 v1, 0xc

    aput-object v5, v4, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    .line 434
    const-string v22, "1001"

    .line 435
    move-object/from16 v5, p1

    const/16 v1, 0x9

    move-object/from16 v6, p2

    const/16 v1, 0x8

    move-object/from16 v7, v19

    const/4 v1, 0x7

    move-object/from16 v8, v20

    const/4 v1, 0x6

    move-object/from16 v9, v21

    const/4 v1, 0x5

    move-object/from16 v10, v22

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_82} :catch_164
    .catchall {:try_start_c .. :try_end_82} :catchall_161

    .line 436
    :try_start_82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_86
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_86} :catch_15e
    .catchall {:try_start_82 .. :try_end_86} :catchall_15c

    if-nez v3, :cond_8f

    .line 437
    nop

    .line 438
    if-eqz v2, :cond_8e

    .line 439
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_8e
    return-object v0

    .line 441
    :cond_8f
    :goto_8f
    :try_start_8f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_aa

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v3, "Read more than the max allowed conditional properties, ignoring extra"

    .line 444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 445
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    goto/16 :goto_151

    .line 447
    :cond_aa
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 449
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 450
    move-object/from16 v9, p0

    invoke-direct {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v8

    .line 451
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_c5

    .line 452
    const/16 v22, 0x1

    goto :goto_c8

    .line 451
    :cond_c5
    nop

    .line 452
    const/16 v22, 0x0

    :goto_c8
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 453
    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 454
    nop

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    const/4 v7, 0x7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v1, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzae;

    .line 456
    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 457
    nop

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    const/16 v11, 0x9

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Lcom/google/android/gms/measurement/internal/zzae;

    .line 459
    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 460
    const/16 v7, 0xb

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 461
    nop

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    const/16 v11, 0xc

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v38, v4

    check-cast v38, Lcom/google/android/gms/measurement/internal/zzae;

    .line 463
    new-instance v19, Lcom/google/android/gms/measurement/internal/zzfr;

    move-object/from16 v4, v19

    const/16 v31, 0x6

    const/16 v32, 0x7

    const/16 v33, 0x8

    const/16 v36, 0xa

    const/16 v37, 0xb

    move-wide/from16 v6, v16

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 464
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzm;

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    move-object/from16 v23, v28

    move-object/from16 v24, v1

    move-wide/from16 v25, v29

    move-wide/from16 v28, v34

    move-object/from16 v30, v38

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzae;JLcom/google/android/gms/measurement/internal/zzae;JLcom/google/android/gms/measurement/internal/zzae;)V

    .line 465
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_14f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_14f} :catch_15e
    .catchall {:try_start_8f .. :try_end_14f} :catchall_15c

    if-nez v1, :cond_158

    .line 467
    :goto_151
    nop

    .line 468
    if-eqz v2, :cond_157

    .line 469
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_157
    return-object v0

    .line 441
    :cond_158
    const/4 v1, 0x5

    const/4 v11, 0x0

    goto/16 :goto_8f

    .line 477
    :catchall_15c
    move-exception v0

    goto :goto_17f

    .line 471
    :catch_15e
    move-exception v0

    move-object v1, v2

    goto :goto_166

    .line 477
    :catchall_161
    move-exception v0

    const/4 v2, 0x0

    goto :goto_17f

    .line 471
    :catch_164
    move-exception v0

    const/4 v1, 0x0

    .line 472
    :goto_166
    :try_start_166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_177
    .catchall {:try_start_166 .. :try_end_177} :catchall_17d

    .line 474
    if-eqz v1, :cond_17c

    .line 475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_17c
    return-object v0

    .line 477
    :catchall_17d
    move-exception v0

    move-object v2, v1

    :goto_17f
    if-eqz v2, :cond_184

    .line 478
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_184
    throw v0
.end method

.method public final zzbn(Ljava/lang/String;)Ljava/util/List;
    .registers 24
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzft;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    nop

    .line 220
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 221
    const-string/jumbo v3, "user_attributes"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "name"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v5, "origin"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const-string v5, "set_timestamp"

    const/4 v13, 0x2

    aput-object v5, v4, v13

    const-string/jumbo v5, "value"

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const-string v5, "app_id=?"

    new-array v6, v12, [Ljava/lang/String;

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    .line 222
    const-string v10, "1000"

    .line 223
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_3f} :catch_9f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_9a

    .line 224
    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_43} :catch_96
    .catchall {:try_start_3f .. :try_end_43} :catchall_92

    if-nez v3, :cond_4c

    .line 225
    nop

    .line 226
    if-eqz v2, :cond_4b

    .line 227
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_4b
    return-object v0

    .line 229
    :cond_4c
    :try_start_4c
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 230
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    if-nez v3, :cond_58

    .line 232
    const-string v3, ""

    .line 233
    :cond_58
    move-object/from16 v17, v3

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_5e} :catch_96
    .catchall {:try_start_4c .. :try_end_5e} :catchall_92

    .line 234
    move-object/from16 v3, p0

    :try_start_60
    invoke-direct {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v21

    .line 235
    if-nez v21, :cond_78

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Read invalid user property value, ignoring it. appId"

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 239
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_83

    .line 240
    :cond_78
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzft;

    move-object v15, v4

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 241
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_83
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_87} :catch_90
    .catchall {:try_start_60 .. :try_end_87} :catchall_ba

    if-nez v4, :cond_4c

    .line 243
    nop

    .line 244
    if-eqz v2, :cond_8f

    .line 245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_8f
    return-object v0

    .line 247
    :catch_90
    move-exception v0

    goto :goto_a3

    .line 254
    :catchall_92
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_bb

    .line 247
    :catch_96
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_a3

    .line 254
    :catchall_9a
    move-exception v0

    move-object/from16 v3, p0

    move-object v2, v1

    goto :goto_bb

    .line 247
    :catch_9f
    move-exception v0

    move-object/from16 v3, p0

    move-object v2, v1

    .line 248
    :goto_a3
    :try_start_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Error querying user properties. appId"

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_ba

    .line 251
    if-eqz v2, :cond_b9

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_b9
    return-object v1

    .line 254
    :catchall_ba
    move-exception v0

    :goto_bb
    if-eqz v2, :cond_c0

    .line 255
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw v0
.end method

.method public final zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 479
    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 482
    nop

    .line 483
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 484
    const-string v4, "apps"

    const/16 v0, 0x1a

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "app_instance_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string v0, "gmp_app_id"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string v0, "resettable_device_id_hash"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string v0, "last_bundle_index"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const-string v0, "last_bundle_start_timestamp"

    const/4 v15, 0x4

    aput-object v0, v5, v15

    const-string v0, "last_bundle_end_timestamp"

    const/4 v10, 0x5

    aput-object v0, v5, v10

    const-string v0, "app_version"

    const/4 v9, 0x6

    aput-object v0, v5, v9

    const-string v0, "app_store"

    const/4 v8, 0x7

    aput-object v0, v5, v8

    const-string v0, "gmp_version"

    const/16 v7, 0x8

    aput-object v0, v5, v7

    const/16 v0, 0x9

    const-string v6, "dev_cert_hash"

    aput-object v6, v5, v0

    const-string v0, "measurement_enabled"

    const/16 v6, 0xa

    aput-object v0, v5, v6

    const/16 v0, 0xb

    const-string v16, "day"

    aput-object v16, v5, v0

    const/16 v0, 0xc

    const-string v16, "daily_public_events_count"

    aput-object v16, v5, v0

    const/16 v0, 0xd

    const-string v16, "daily_events_count"

    aput-object v16, v5, v0

    const/16 v0, 0xe

    const-string v16, "daily_conversions_count"

    aput-object v16, v5, v0

    const/16 v0, 0xf

    const-string v16, "config_fetched_time"

    aput-object v16, v5, v0

    const/16 v0, 0x10

    const-string v16, "failed_config_fetch_time"

    aput-object v16, v5, v0

    const-string v0, "app_version_int"

    const/16 v15, 0x11

    aput-object v0, v5, v15

    const/16 v0, 0x12

    const-string v16, "firebase_instance_id"

    aput-object v16, v5, v0

    const/16 v0, 0x13

    const-string v16, "daily_error_events_count"

    aput-object v16, v5, v0

    const/16 v0, 0x14

    const-string v16, "daily_realtime_events_count"

    aput-object v16, v5, v0

    const/16 v0, 0x15

    const-string v16, "health_monitor_sample"

    aput-object v16, v5, v0

    const-string v0, "android_id"

    const/16 v15, 0x16

    aput-object v0, v5, v15

    const-string v0, "adid_reporting_enabled"

    const/16 v15, 0x17

    aput-object v0, v5, v15

    const-string v0, "ssaid_reporting_enabled"

    const/16 v15, 0x18

    aput-object v0, v5, v15

    const/16 v0, 0x19

    const-string v16, "admob_app_id"

    aput-object v16, v5, v0

    const-string v0, "app_id=?"

    new-array v7, v12, [Ljava/lang/String;

    aput-object v1, v7, v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 485
    const/16 v15, 0xa

    move-object v6, v0

    const/16 v0, 0x8

    const/4 v15, 0x7

    move-object/from16 v8, v16

    const/4 v0, 0x6

    move-object/from16 v9, v17

    const/4 v15, 0x5

    move-object/from16 v10, v18

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_c9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_c9} :catch_225
    .catchall {:try_start_d .. :try_end_c9} :catchall_220

    .line 486
    :try_start_c9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c9 .. :try_end_cd} :catch_21c
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_218

    if-nez v4, :cond_d5

    .line 487
    if-eqz v3, :cond_d4

    .line 488
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_d4
    return-object v2

    .line 490
    :cond_d5
    :try_start_d5
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzg;
    :try_end_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d5 .. :try_end_d7} :catch_21c
    .catchall {:try_start_d5 .. :try_end_d7} :catchall_218

    move-object/from16 v5, p0

    :try_start_d9
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmh()Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;Ljava/lang/String;)V

    .line 491
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    .line 492
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    .line 493
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    .line 494
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzx(J)V

    .line 495
    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 496
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 497
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq(Ljava/lang/String;)V

    .line 499
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    .line 500
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 501
    const/16 v0, 0xa

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_13f

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_13d

    goto :goto_13f

    :cond_13d
    const/4 v0, 0x0

    goto :goto_140

    :cond_13f
    :goto_13f
    const/4 v0, 0x1

    :goto_140
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    .line 502
    const/16 v0, 0xb

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa(J)V

    .line 503
    const/16 v0, 0xc

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzab(J)V

    .line 504
    const/16 v0, 0xd

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(J)V

    .line 505
    const/16 v0, 0xe

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzad(J)V

    .line 506
    const/16 v0, 0xf

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    .line 507
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzz(J)V

    .line 508
    const/16 v0, 0x11

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_185

    const-wide/32 v6, -0x80000000

    goto :goto_18a

    :cond_185
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    :goto_18a
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    .line 509
    const/16 v0, 0x12

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    .line 510
    const/16 v0, 0x13

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf(J)V

    .line 511
    const/16 v0, 0x14

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 512
    const/16 v0, 0x15

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzar(Ljava/lang/String;)V

    .line 513
    const/16 v0, 0x16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1bc

    const-wide/16 v6, 0x0

    goto :goto_1c0

    :cond_1bc
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :goto_1c0
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(J)V

    .line 514
    const/16 v0, 0x17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1d4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1d2

    goto :goto_1d4

    :cond_1d2
    const/4 v0, 0x0

    goto :goto_1d5

    :cond_1d4
    :goto_1d4
    const/4 v0, 0x1

    :goto_1d5
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Z)V

    .line 515
    const/16 v0, 0x18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1e8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1e7

    goto :goto_1e8

    :cond_1e7
    goto :goto_1e9

    :cond_1e8
    :goto_1e8
    const/4 v11, 0x1

    :goto_1e9
    invoke-virtual {v4, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Z)V

    .line 516
    const/16 v0, 0x19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()V

    .line 518
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 521
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d9 .. :try_end_20f} :catch_216
    .catchall {:try_start_d9 .. :try_end_20f} :catchall_240

    .line 522
    :cond_20f
    nop

    .line 523
    if-eqz v3, :cond_215

    .line 524
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_215
    return-object v4

    .line 526
    :catch_216
    move-exception v0

    goto :goto_229

    .line 531
    :catchall_218
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_241

    .line 526
    :catch_21c
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_229

    .line 531
    :catchall_220
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    goto :goto_241

    .line 526
    :catch_225
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    .line 527
    :goto_229
    :try_start_229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23a
    .catchall {:try_start_229 .. :try_end_23a} :catchall_240

    .line 528
    if-eqz v3, :cond_23f

    .line 529
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_23f
    return-object v2

    .line 531
    :catchall_240
    move-exception v0

    :goto_241
    if-eqz v3, :cond_246

    .line 532
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_246
    throw v0
.end method

.method public final zzbp(Ljava/lang/String;)J
    .registers 8

    .line 581
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 582
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 583
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 584
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 586
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->zzajv:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v1

    .line 587
    const v2, 0xf4240

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 589
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    const-string v3, "raw_events"

    const-string v4, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 591
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_37} :catch_39

    int-to-long v0, v0

    .line 592
    return-wide v0

    .line 593
    :catch_39
    move-exception v0

    .line 594
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    .line 596
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzbq(Ljava/lang/String;)[B
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 654
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 655
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 656
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 657
    nop

    .line 658
    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 659
    const-string v2, "apps"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "remote_config"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const-string v5, "app_id=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 660
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_2c} :catch_5f
    .catchall {:try_start_b .. :try_end_2c} :catchall_5c

    .line 661
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_30} :catch_5a
    .catchall {:try_start_2c .. :try_end_30} :catchall_78

    if-nez v2, :cond_38

    .line 662
    if-eqz v1, :cond_37

    .line 663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_37
    return-object v0

    .line 665
    :cond_38
    :try_start_38
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 666
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 667
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 668
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    .line 669
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 670
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_53} :catch_5a
    .catchall {:try_start_38 .. :try_end_53} :catchall_78

    .line 671
    :cond_53
    nop

    .line 672
    if-eqz v1, :cond_59

    .line 673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_59
    return-object v2

    .line 675
    :catch_5a
    move-exception v2

    goto :goto_61

    .line 682
    :catchall_5c
    move-exception p1

    move-object v1, v0

    goto :goto_79

    .line 675
    :catch_5f
    move-exception v2

    move-object v1, v0

    .line 676
    :goto_61
    :try_start_61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 677
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 678
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_78

    .line 679
    if-eqz v1, :cond_77

    .line 680
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 681
    :cond_77
    return-object v0

    .line 682
    :catchall_78
    move-exception p1

    :goto_79
    if-eqz v1, :cond_7e

    .line 683
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw p1
.end method

.method final zzbr(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/zzgm;",
            ">;"
        }
    .end annotation

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1141
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1143
    nop

    .line 1144
    const/4 v8, 0x0

    :try_start_f
    const-string v1, "audience_filter_values"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "audience_id"

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const-string v3, "current_results"

    const/4 v10, 0x1

    aput-object v3, v2, v10

    const-string v3, "app_id=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1145
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_2b} :catch_85
    .catchall {:try_start_f .. :try_end_2b} :catchall_82

    .line 1146
    :try_start_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_2f} :catch_80
    .catchall {:try_start_2b .. :try_end_2f} :catchall_9e

    if-nez v1, :cond_37

    .line 1147
    if-eqz v0, :cond_36

    .line 1148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1149
    :cond_36
    return-object v8

    .line 1150
    :cond_37
    :try_start_37
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1151
    :cond_3c
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1152
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1153
    nop

    .line 1154
    array-length v4, v3

    invoke-static {v3, v9, v4}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v3

    .line 1155
    nop

    .line 1156
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_50} :catch_80
    .catchall {:try_start_37 .. :try_end_50} :catchall_9e

    .line 1157
    :try_start_50
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_53} :catch_80
    .catchall {:try_start_50 .. :try_end_53} :catchall_9e

    .line 1158
    nop

    .line 1166
    :try_start_54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 1159
    :catch_5c
    move-exception v3

    .line 1160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 1161
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    .line 1162
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1164
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1165
    nop

    .line 1167
    :goto_73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_77} :catch_80
    .catchall {:try_start_54 .. :try_end_77} :catchall_9e

    if-nez v2, :cond_3c

    .line 1168
    nop

    .line 1169
    if-eqz v0, :cond_7f

    .line 1170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1171
    :cond_7f
    return-object v1

    .line 1172
    :catch_80
    move-exception v1

    goto :goto_87

    .line 1179
    :catchall_82
    move-exception p1

    move-object v0, v8

    goto :goto_9f

    .line 1172
    :catch_85
    move-exception v1

    move-object v0, v8

    .line 1173
    :goto_87
    :try_start_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 1174
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    .line 1175
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_9e

    .line 1176
    if-eqz v0, :cond_9d

    .line 1177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_9d
    return-object v8

    .line 1179
    :catchall_9e
    move-exception p1

    :goto_9f
    if-eqz v0, :cond_a4

    .line 1180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw p1
.end method

.method public final zzbs(Ljava/lang/String;)J
    .registers 6

    .line 1296
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 421
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 424
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/util/List;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 836
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 837
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(I)I

    .line 839
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzr;->zzip()Z

    move-result v0

    if-nez v0, :cond_17

    .line 840
    return-void

    .line 841
    :cond_17
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 842
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_75

    .line 843
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 844
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 845
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 846
    :cond_75
    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 847
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_9c} :catch_9d

    .line 848
    return-void

    .line 849
    :catch_9d
    move-exception p1

    .line 850
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 53
    move-object/from16 v15, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 57
    nop

    .line 58
    const/16 v16, 0x0

    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    const-string v2, "events"

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "lifetime_count"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v0, "current_bundle_count"

    const/4 v10, 0x1

    aput-object v0, v3, v10

    const-string v0, "last_fire_timestamp"

    const/4 v11, 0x2

    aput-object v0, v3, v11

    const-string v0, "last_bundled_timestamp"

    const/4 v12, 0x3

    aput-object v0, v3, v12

    const-string v0, "last_bundled_day"

    const/4 v13, 0x4

    aput-object v0, v3, v13

    const-string v0, "last_sampled_complex_event_id"

    const/4 v14, 0x5

    aput-object v0, v3, v14

    const-string v0, "last_sampling_rate"

    const/4 v8, 0x6

    aput-object v0, v3, v8

    const-string v0, "last_exempt_from_sampling"

    const/4 v7, 0x7

    aput-object v0, v3, v7

    const-string v4, "app_id=? and name=?"

    new-array v5, v11, [Ljava/lang/String;

    aput-object p1, v5, v9

    aput-object v15, v5, v10

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    .line 60
    move-object v7, v0

    const/4 v0, 0x6

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_57} :catch_111
    .catchall {:try_start_11 .. :try_end_57} :catchall_10d

    .line 61
    :try_start_57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_5b} :catch_109
    .catchall {:try_start_57 .. :try_end_5b} :catchall_105

    if-nez v1, :cond_63

    .line 62
    if-eqz v8, :cond_62

    .line 63
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_62
    return-object v16

    .line 65
    :cond_63
    :try_start_63
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 67
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 68
    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_79

    const-wide/16 v1, 0x0

    .line 69
    :goto_77
    move-wide v11, v1

    goto :goto_7e

    .line 68
    :cond_79
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_77

    .line 69
    :goto_7e
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 70
    move-object/from16 v13, v16

    goto :goto_90

    .line 69
    :cond_87
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 70
    move-object v13, v1

    :goto_90
    invoke-interface {v8, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 71
    move-object/from16 v14, v16

    goto :goto_a2

    .line 70
    :cond_99
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 71
    move-object v14, v1

    :goto_a2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 72
    move-object/from16 v0, v16

    goto :goto_b3

    .line 71
    :cond_ab
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    :goto_b3
    nop

    .line 73
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_ce

    .line 74
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v17, 0x1

    cmp-long v3, v1, v17

    if-nez v3, :cond_c7

    const/4 v9, 0x1

    nop

    :cond_c7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 75
    move-object/from16 v17, v1

    goto :goto_d0

    :cond_ce
    move-object/from16 v17, v16

    :goto_d0
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzaa;
    :try_end_d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_d2} :catch_109
    .catchall {:try_start_63 .. :try_end_d2} :catchall_105

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v21, v8

    move-wide/from16 v8, v19

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move-object v14, v0

    move-object/from16 v15, v17

    :try_start_e2
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 76
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Got multiple records for event aggregates, expected one. appId"

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_fc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e2 .. :try_end_fc} :catch_103
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_135

    .line 81
    :cond_fc
    nop

    .line 82
    if-eqz v21, :cond_102

    .line 83
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_102
    return-object v18

    .line 85
    :catch_103
    move-exception v0

    goto :goto_114

    .line 94
    :catchall_105
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_136

    .line 85
    :catch_109
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_114

    .line 94
    :catchall_10d
    move-exception v0

    move-object/from16 v21, v16

    goto :goto_136

    .line 85
    :catch_111
    move-exception v0

    move-object/from16 v21, v16

    .line 86
    :goto_114
    :try_start_114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error querying events. appId"

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12f
    .catchall {:try_start_114 .. :try_end_12f} :catchall_135

    .line 91
    if-eqz v21, :cond_134

    .line 92
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_134
    return-object v16

    .line 94
    :catchall_135
    move-exception v0

    :goto_136
    if-eqz v21, :cond_13b

    .line 95
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_13b
    throw v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 132
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Deleted user attribute rows"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_33} :catch_34

    .line 136
    return-void

    .line 137
    :catch_34
    move-exception v0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error deleting user attribute. appId"

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 179
    move-object/from16 v8, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 183
    nop

    .line 184
    const/4 v9, 0x0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 185
    const-string/jumbo v11, "user_attributes"

    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    const-string v0, "set_timestamp"

    const/4 v1, 0x0

    aput-object v0, v12, v1

    const-string/jumbo v0, "value"

    const/4 v2, 0x1

    aput-object v0, v12, v2

    const-string v0, "origin"

    const/4 v3, 0x2

    aput-object v0, v12, v3

    const-string v13, "app_id=? and name=?"

    new-array v14, v3, [Ljava/lang/String;

    aput-object p1, v14, v1

    aput-object v8, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 186
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_3b} :catch_8c
    .catchall {:try_start_10 .. :try_end_3b} :catchall_87

    .line 187
    :try_start_3b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_3f} :catch_83
    .catchall {:try_start_3b .. :try_end_3f} :catchall_7f

    if-nez v0, :cond_47

    .line 188
    if-eqz v10, :cond_46

    .line 189
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_46
    return-object v9

    .line 191
    :cond_47
    :try_start_47
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_4b} :catch_83
    .catchall {:try_start_47 .. :try_end_4b} :catchall_7f

    .line 192
    move-object/from16 v11, p0

    :try_start_4d
    invoke-direct {v11, v10, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 193
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 195
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_76} :catch_7d
    .catchall {:try_start_4d .. :try_end_76} :catchall_af

    .line 200
    :cond_76
    nop

    .line 201
    if-eqz v10, :cond_7c

    .line 202
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_7c
    return-object v0

    .line 204
    :catch_7d
    move-exception v0

    goto :goto_90

    .line 213
    :catchall_7f
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_b0

    .line 204
    :catch_83
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_90

    .line 213
    :catchall_87
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    goto :goto_b0

    .line 204
    :catch_8c
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    .line 205
    :goto_90
    :try_start_90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error querying user property. appId"

    .line 207
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_af

    .line 210
    if-eqz v10, :cond_ae

    .line 211
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_ae
    return-object v9

    .line 213
    :catchall_af
    move-exception v0

    :goto_b0
    if-eqz v10, :cond_b5

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v0
.end method

.method public final zzih()Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 735
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 736
    nop

    .line 737
    const/4 v1, 0x0

    :try_start_6
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 738
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_c} :catch_2a
    .catchall {:try_start_6 .. :try_end_c} :catchall_25

    .line 739
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 740
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_17} :catch_23
    .catchall {:try_start_c .. :try_end_17} :catchall_3f

    .line 741
    if-eqz v0, :cond_1c

    .line 742
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_1c
    return-object v2

    .line 744
    :cond_1d
    if-eqz v0, :cond_22

    .line 745
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_22
    return-object v1

    .line 747
    :catch_23
    move-exception v2

    goto :goto_2c

    .line 752
    :catchall_25
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_40

    .line 747
    :catch_2a
    move-exception v2

    move-object v0, v1

    .line 748
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3f

    .line 749
    if-eqz v0, :cond_3e

    .line 750
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 751
    :cond_3e
    return-object v1

    .line 752
    :catchall_3f
    move-exception v1

    :goto_40
    if-eqz v0, :cond_45

    .line 753
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v1
.end method

.method public final zzii()Z
    .registers 6

    .line 754
    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    .line 755
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 756
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method final zzij()V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 812
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 813
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 814
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzr;->zzip()Z

    move-result v0

    if-nez v0, :cond_d

    .line 815
    return-void

    .line 816
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzano:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v0

    .line 817
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 818
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 819
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->zzake:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 820
    cmp-long v6, v0, v4

    if-lez v6, :cond_87

    .line 821
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzano:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 822
    nop

    .line 823
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 824
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 825
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzr;->zzip()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 826
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 827
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 829
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzib()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 830
    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 831
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 832
    if-lez v0, :cond_87

    .line 833
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    :cond_87
    return-void
.end method

.method public final zzik()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1203
    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzil()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1248
    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzim()Z
    .registers 6

    .line 1291
    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1292
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzin()Z
    .registers 6

    .line 1293
    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    .line 1294
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1295
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final zzio()J
    .registers 8

    .line 1321
    nop

    .line 1322
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1323
    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_e} :catch_2f
    .catchall {:try_start_4 .. :try_end_e} :catchall_2d

    .line 1324
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_12} :catch_28
    .catchall {:try_start_e .. :try_end_12} :catchall_25

    if-nez v2, :cond_1a

    .line 1325
    if-eqz v3, :cond_19

    .line 1326
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1327
    :cond_19
    return-wide v0

    .line 1328
    :cond_1a
    const/4 v2, 0x0

    :try_start_1b
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1f} :catch_28
    .catchall {:try_start_1b .. :try_end_1f} :catchall_25

    .line 1329
    if-eqz v3, :cond_24

    .line 1330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1331
    :cond_24
    return-wide v4

    .line 1336
    :catchall_25
    move-exception v0

    move-object v2, v3

    goto :goto_43

    .line 1332
    :catch_28
    move-exception v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_30

    .line 1336
    :catchall_2d
    move-exception v0

    goto :goto_43

    .line 1332
    :catch_2f
    move-exception v3

    .line 1333
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_2d

    .line 1334
    if-eqz v2, :cond_42

    .line 1335
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1338
    :cond_42
    return-wide v0

    .line 1336
    :goto_43
    if-eqz v2, :cond_48

    .line 1337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .registers 35
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 350
    move-object/from16 v7, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 354
    nop

    .line 355
    const/4 v8, 0x0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 356
    const-string v10, "conditional_properties"

    const/16 v0, 0xb

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "origin"

    const/4 v1, 0x0

    aput-object v0, v11, v1

    const-string/jumbo v0, "value"

    const/4 v2, 0x1

    aput-object v0, v11, v2

    const-string v0, "active"

    const/4 v3, 0x2

    aput-object v0, v11, v3

    const-string/jumbo v0, "trigger_event_name"

    const/4 v4, 0x3

    aput-object v0, v11, v4

    const-string/jumbo v0, "trigger_timeout"

    const/4 v5, 0x4

    aput-object v0, v11, v5

    const-string/jumbo v0, "timed_out_event"

    const/4 v6, 0x5

    aput-object v0, v11, v6

    const-string v0, "creation_timestamp"

    const/4 v15, 0x6

    aput-object v0, v11, v15

    const-string/jumbo v0, "triggered_event"

    const/4 v14, 0x7

    aput-object v0, v11, v14

    const-string/jumbo v0, "triggered_timestamp"

    const/16 v13, 0x8

    aput-object v0, v11, v13

    const-string/jumbo v0, "time_to_live"

    const/16 v12, 0x9

    aput-object v0, v11, v12

    const-string v0, "expired_event"

    const/16 v6, 0xa

    aput-object v0, v11, v6

    const-string v0, "app_id=? and name=?"

    new-array v13, v3, [Ljava/lang/String;

    aput-object p1, v13, v1

    aput-object v7, v13, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 357
    const/16 v6, 0x9

    move-object v12, v0

    const/16 v0, 0x8

    const/4 v6, 0x7

    move-object/from16 v14, v16

    const/4 v0, 0x6

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_7a} :catch_13a
    .catchall {:try_start_10 .. :try_end_7a} :catchall_135

    .line 358
    :try_start_7a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7e} :catch_131
    .catchall {:try_start_7a .. :try_end_7e} :catchall_12d

    if-nez v10, :cond_86

    .line 359
    if-eqz v9, :cond_85

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_85
    return-object v8

    .line 362
    :cond_86
    :try_start_86
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_8a} :catch_131
    .catchall {:try_start_86 .. :try_end_8a} :catchall_12d

    .line 363
    move-object/from16 v10, p0

    :try_start_8c
    invoke-direct {v10, v9, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    .line 364
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_99

    .line 365
    const/16 v23, 0x1

    goto :goto_9c

    .line 364
    :cond_99
    nop

    .line 365
    const/16 v23, 0x0

    :goto_9c
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 366
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 367
    nop

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/google/android/gms/measurement/internal/zzae;

    .line 369
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 370
    nop

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/google/android/gms/measurement/internal/zzae;

    .line 372
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 373
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 374
    nop

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lcom/google/android/gms/measurement/internal/zzae;

    .line 376
    new-instance v20, Lcom/google/android/gms/measurement/internal/zzfr;

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object v5, v11

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzm;

    move-object/from16 v17, v0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v31}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzae;JLcom/google/android/gms/measurement/internal/zzae;JLcom/google/android/gms/measurement/internal/zzae;)V

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_124

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 381
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_124
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c .. :try_end_124} :catch_12b
    .catchall {:try_start_8c .. :try_end_124} :catchall_15d

    .line 384
    :cond_124
    nop

    .line 385
    if-eqz v9, :cond_12a

    .line 386
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_12a
    return-object v0

    .line 388
    :catch_12b
    move-exception v0

    goto :goto_13e

    .line 397
    :catchall_12d
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_15e

    .line 388
    :catch_131
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_13e

    .line 397
    :catchall_135
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    goto :goto_15e

    .line 388
    :catch_13a
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    .line 389
    :goto_13e
    :try_start_13e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    .line 391
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_157
    .catchall {:try_start_13e .. :try_end_157} :catchall_15d

    .line 394
    if-eqz v9, :cond_15c

    .line 395
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_15c
    return-object v8

    .line 397
    :catchall_15d
    move-exception v0

    :goto_15e
    if-eqz v9, :cond_163

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_163
    throw v0
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 399
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 403
    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 404
    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 405
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_21} :catch_22

    .line 406
    return v1

    .line 407
    :catch_22
    move-exception v1

    .line 408
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Error deleting conditional property"

    .line 410
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 411
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 412
    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    return v0
.end method

.method final zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy;",
            ">;>;"
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1022
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1024
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1026
    nop

    .line 1027
    const/4 v9, 0x0

    :try_start_17
    const-string v2, "event_filters"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "audience_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "data"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "app_id=? AND event_name=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v10

    aput-object p2, v6, v11

    const/4 p2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1028
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_39} :catch_a1
    .catchall {:try_start_17 .. :try_end_39} :catchall_9e

    .line 1029
    :try_start_39
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1030
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_43} :catch_9c
    .catchall {:try_start_39 .. :try_end_43} :catchall_ba

    .line 1031
    if-eqz p2, :cond_48

    .line 1032
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_48
    return-object v0

    .line 1034
    :cond_49
    :try_start_49
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1035
    nop

    .line 1036
    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v1

    .line 1037
    nop

    .line 1038
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_59} :catch_9c
    .catchall {:try_start_49 .. :try_end_59} :catchall_ba

    .line 1039
    :try_start_59
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_5c} :catch_9c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_ba

    .line 1040
    nop

    .line 1046
    :try_start_5d
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1047
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1048
    if-nez v3, :cond_79

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 1041
    :catch_7d
    move-exception v1

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1044
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1045
    nop

    .line 1052
    :goto_90
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_94} :catch_9c
    .catchall {:try_start_5d .. :try_end_94} :catchall_ba

    if-nez v1, :cond_49

    .line 1053
    if-eqz p2, :cond_9b

    .line 1054
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_9b
    return-object v0

    .line 1055
    :catch_9c
    move-exception v0

    goto :goto_a3

    .line 1062
    :catchall_9e
    move-exception p1

    move-object p2, v9

    goto :goto_bb

    .line 1055
    :catch_a1
    move-exception v0

    move-object p2, v9

    .line 1056
    :goto_a3
    :try_start_a3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1057
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1058
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_ba

    .line 1059
    if-eqz p2, :cond_b9

    .line 1060
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1061
    :cond_b9
    return-object v9

    .line 1062
    :catchall_ba
    move-exception p1

    :goto_bb
    if-eqz p2, :cond_c0

    .line 1063
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw p1
.end method

.method final zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgb;",
            ">;>;"
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1067
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1071
    nop

    .line 1072
    const/4 v9, 0x0

    :try_start_17
    const-string v2, "property_filters"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "audience_id"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const-string v5, "data"

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "app_id=? AND property_name=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v10

    aput-object p2, v6, v11

    const/4 p2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1073
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_39} :catch_a1
    .catchall {:try_start_17 .. :try_end_39} :catchall_9e

    .line 1074
    :try_start_39
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_49

    .line 1075
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_43} :catch_9c
    .catchall {:try_start_39 .. :try_end_43} :catchall_ba

    .line 1076
    if-eqz p2, :cond_48

    .line 1077
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_48
    return-object v0

    .line 1079
    :cond_49
    :try_start_49
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1080
    nop

    .line 1081
    array-length v2, v1

    invoke-static {v1, v10, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v1

    .line 1082
    nop

    .line 1083
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_59} :catch_9c
    .catchall {:try_start_49 .. :try_end_59} :catchall_ba

    .line 1084
    :try_start_59
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_5c} :catch_9c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_ba

    .line 1085
    nop

    .line 1089
    :try_start_5d
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1090
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1091
    if-nez v3, :cond_79

    .line 1092
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    :cond_79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 1086
    :catch_7d
    move-exception v1

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    nop

    .line 1095
    :goto_90
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_94} :catch_9c
    .catchall {:try_start_5d .. :try_end_94} :catchall_ba

    if-nez v1, :cond_49

    .line 1096
    if-eqz p2, :cond_9b

    .line 1097
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1107
    :cond_9b
    return-object v0

    .line 1098
    :catch_9c
    move-exception v0

    goto :goto_a3

    .line 1105
    :catchall_9e
    move-exception p1

    move-object p2, v9

    goto :goto_bb

    .line 1098
    :catch_a1
    move-exception v0

    move-object p2, v9

    .line 1099
    :goto_a3
    :try_start_a3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1101
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_ba

    .line 1102
    if-eqz p2, :cond_b9

    .line 1103
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1104
    :cond_b9
    return-object v9

    .line 1105
    :catchall_ba
    move-exception p1

    :goto_bb
    if-eqz p2, :cond_c0

    .line 1106
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw p1
.end method

.method protected final zzn(Ljava/lang/String;Ljava/lang/String;)J
    .registers 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1204
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1208
    nop

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1211
    const-wide/16 v1, 0x0

    :try_start_16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "select "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from app2 where app_id=?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 1212
    const-wide/16 v7, -0x1

    invoke-direct {p0, v3, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    .line 1213
    cmp-long v3, v9, v7

    if-nez v3, :cond_85

    .line 1214
    nop

    .line 1215
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1216
    const-string v5, "app_id"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v5, "first_open_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    const-string v5, "previous_install_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v5, "app2"

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 1220
    invoke-virtual {v0, v5, v9, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v9

    .line 1221
    cmp-long v3, v9, v7

    if-nez v3, :cond_84

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1223
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Failed to insert column (got -1). appId"

    .line 1224
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_80} :catch_ca
    .catchall {:try_start_16 .. :try_end_80} :catchall_c8

    .line 1225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1226
    return-wide v7

    .line 1227
    :cond_84
    move-wide v9, v1

    :cond_85
    :try_start_85
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1228
    const-string v5, "app_id"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1230
    const-string v5, "app2"

    const-string v11, "app_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v0, v5, v3, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 1231
    cmp-long v5, v3, v1

    if-nez v5, :cond_bf

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1233
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to update column (got 0). appId"

    .line 1234
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_bb} :catch_c6
    .catchall {:try_start_85 .. :try_end_bb} :catchall_c8

    .line 1235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1236
    return-wide v7

    .line 1237
    :cond_bf
    :try_start_bf
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c2} :catch_c6
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c8

    .line 1238
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1239
    goto :goto_e1

    .line 1240
    :catch_c6
    move-exception v3

    goto :goto_cc

    .line 1246
    :catchall_c8
    move-exception p1

    goto :goto_e2

    .line 1240
    :catch_ca
    move-exception v3

    move-wide v9, v1

    .line 1241
    :goto_cc
    :try_start_cc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1242
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error inserting column. appId"

    .line 1243
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_dd
    .catchall {:try_start_cc .. :try_end_dd} :catchall_c8

    .line 1244
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1245
    nop

    .line 1247
    :goto_e1
    return-wide v9

    .line 1246
    :goto_e2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

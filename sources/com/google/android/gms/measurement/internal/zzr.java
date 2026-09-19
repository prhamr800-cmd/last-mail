package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzgm;
import com.google.android.gms.internal.measurement.zzzi;
import com.google.android.gms.internal.measurement.zzzj;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.storage.EventStoreHelper;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzr extends zzfj {
    private static final String[] zzahl = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};
    private static final String[] zzahm = {FirebaseAnalytics.Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzahn = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"};
    private static final String[] zzaho = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zzahp = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzahq = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzu zzahr;
    private final zzff zzahs;

    zzr(zzfk zzfkVar) {
        super(zzfkVar);
        this.zzahs = new zzff(zzbx());
        this.zzahr = new zzu(this, getContext(), "google_app_measurement.db");
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        return false;
    }

    @WorkerThread
    public final void beginTransaction() {
        zzcl();
        getWritableDatabase().beginTransaction();
    }

    @WorkerThread
    public final void setTransactionSuccessful() {
        zzcl();
        getWritableDatabase().setTransactionSuccessful();
    }

    @WorkerThread
    public final void endTransaction() {
        zzcl();
        getWritableDatabase().endTransaction();
    }

    @WorkerThread
    private final long zza(String str, String[] strArr) throws Throwable {
        Cursor cursorRawQuery;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
            } catch (Throwable th) {
                th = th;
                cursorRawQuery = null;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            if (cursorRawQuery.moveToFirst()) {
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e2) {
            e = e2;
            zzgt().zzjg().zze("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    @WorkerThread
    private final long zza(String str, String[] strArr, long j) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery(str, strArr);
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (cursorRawQuery.moveToFirst()) {
                long j2 = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j2;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return j;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = cursorRawQuery;
            zzgt().zzjg().zze("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorRawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    @VisibleForTesting
    final SQLiteDatabase getWritableDatabase() {
        zzaf();
        try {
            return this.zzahr.getWritableDatabase();
        } catch (SQLiteException e) {
            zzgt().zzjj().zzg("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    public final zzaa zzg(String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursorQuery;
        Long lValueOf;
        Long lValueOf2;
        Long lValueOf3;
        Boolean boolValueOf;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursorQuery = getWritableDatabase().query(EventStoreHelper.TABLE_EVENTS, new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                long j = cursorQuery.getLong(0);
                long j2 = cursorQuery.getLong(1);
                long j3 = cursorQuery.getLong(2);
                long j4 = cursorQuery.isNull(3) ? 0L : cursorQuery.getLong(3);
                if (!cursorQuery.isNull(4)) {
                    lValueOf = Long.valueOf(cursorQuery.getLong(4));
                } else {
                    lValueOf = null;
                }
                if (!cursorQuery.isNull(5)) {
                    lValueOf2 = Long.valueOf(cursorQuery.getLong(5));
                } else {
                    lValueOf2 = null;
                }
                if (!cursorQuery.isNull(6)) {
                    lValueOf3 = Long.valueOf(cursorQuery.getLong(6));
                } else {
                    lValueOf3 = null;
                }
                if (cursorQuery.isNull(7)) {
                    boolValueOf = null;
                } else {
                    boolValueOf = Boolean.valueOf(cursorQuery.getLong(7) == 1);
                }
                cursor2 = cursorQuery;
                try {
                    zzaa zzaaVar = new zzaa(str, str2, j, j2, j3, j4, lValueOf, lValueOf2, lValueOf3, boolValueOf);
                    if (cursor2.moveToNext()) {
                        zzgt().zzjg().zzg("Got multiple records for event aggregates, expected one. appId", zzaq.zzby(str));
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return zzaaVar;
                } catch (SQLiteException e) {
                    e = e;
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor2 = cursorQuery;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        zzgt().zzjg().zzd("Error querying events. appId", zzaq.zzby(str), zzgq().zzbv(str2), e);
        if (cursor2 != null) {
            cursor2.close();
        }
        return null;
    }

    @WorkerThread
    public final void zza(zzaa zzaaVar) {
        Long l;
        Preconditions.checkNotNull(zzaaVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzaaVar.zztt);
        contentValues.put("name", zzaaVar.name);
        contentValues.put("lifetime_count", Long.valueOf(zzaaVar.zzaih));
        contentValues.put("current_bundle_count", Long.valueOf(zzaaVar.zzaii));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzaaVar.zzaij));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzaaVar.zzaik));
        contentValues.put("last_bundled_day", zzaaVar.zzail);
        contentValues.put("last_sampled_complex_event_id", zzaaVar.zzaim);
        contentValues.put("last_sampling_rate", zzaaVar.zzain);
        if (zzaaVar.zzaio != null && zzaaVar.zzaio.booleanValue()) {
            l = 1L;
        } else {
            l = null;
        }
        contentValues.put("last_exempt_from_sampling", l);
        try {
            if (getWritableDatabase().insertWithOnConflict(EventStoreHelper.TABLE_EVENTS, null, contentValues, 5) == -1) {
                zzgt().zzjg().zzg("Failed to insert/update event aggregates (got -1). appId", zzaq.zzby(zzaaVar.zztt));
            }
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Error storing event aggregates. appId", zzaq.zzby(zzaaVar.zztt), e);
        }
    }

    @WorkerThread
    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            zzgt().zzjo().zzg("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzgt().zzjg().zzd("Error deleting user attribute. appId", zzaq.zzby(str), zzgq().zzbx(str2), e);
        }
    }

    @WorkerThread
    public final boolean zza(zzft zzftVar) {
        Preconditions.checkNotNull(zzftVar);
        zzaf();
        zzcl();
        if (zzi(zzftVar.zztt, zzftVar.name) == null) {
            if (zzfu.zzcv(zzftVar.name)) {
                if (zza("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzftVar.zztt}) >= 25) {
                    return false;
                }
            } else if (zza("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzftVar.zztt, zzftVar.origin}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzftVar.zztt);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzftVar.origin);
        contentValues.put("name", zzftVar.name);
        contentValues.put("set_timestamp", Long.valueOf(zzftVar.zzaux));
        zza(contentValues, FirebaseAnalytics.Param.VALUE, zzftVar.value);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzgt().zzjg().zzg("Failed to insert/update user property (got -1). appId", zzaq.zzby(zzftVar.zztt));
            }
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Error storing user property. appId", zzaq.zzby(zzftVar.zztt), e);
        }
        return true;
    }

    @WorkerThread
    public final zzft zzi(String str, String str2) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursorQuery = getWritableDatabase().query("user_attributes", new String[]{"set_timestamp", FirebaseAnalytics.Param.VALUE, FirebaseAnalytics.Param.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    zzft zzftVar = new zzft(str, cursorQuery.getString(2), str2, cursorQuery.getLong(0), zza(cursorQuery, 1));
                    if (cursorQuery.moveToNext()) {
                        zzgt().zzjg().zzg("Got multiple records for user property, expected one. appId", zzaq.zzby(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzftVar;
                } catch (SQLiteException e) {
                    e = e;
                }
            } catch (SQLiteException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        zzgt().zzjg().zzd("Error querying user property. appId", zzaq.zzby(str), zzgq().zzbx(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzft> zzbn(java.lang.String r23) throws java.lang.Throwable {
        /*
            r22 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r23)
            r22.zzaf()
            r22.zzcl()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r22.getWritableDatabase()     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r3 = "user_attributes"
            r4 = 4
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r5 = "name"
            r11 = 0
            r4[r11] = r5     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r5 = "origin"
            r12 = 1
            r4[r12] = r5     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r5 = "set_timestamp"
            r13 = 2
            r4[r13] = r5     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r5 = "value"
            r14 = 3
            r4[r14] = r5     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r12]     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            r6[r11] = r23     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            r7 = 0
            r8 = 0
            java.lang.String r9 = "rowid"
            java.lang.String r10 = "1000"
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L9a android.database.sqlite.SQLiteException -> L9f
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L96
            if (r3 != 0) goto L4c
        L46:
            if (r2 == 0) goto L4b
            r2.close()
        L4b:
            return r0
        L4c:
            java.lang.String r18 = r2.getString(r11)     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L96
            java.lang.String r3 = r2.getString(r12)     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L96
            if (r3 != 0) goto L58
            java.lang.String r3 = ""
        L58:
            r17 = r3
            long r19 = r2.getLong(r13)     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L96
            r3 = r22
            java.lang.Object r21 = r3.zza(r2, r14)     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            if (r21 != 0) goto L78
            com.google.android.gms.measurement.internal.zzaq r4 = r22.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r4 = r4.zzjg()     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            java.lang.String r5 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzaq.zzby(r23)     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            r4.zzg(r5, r6)     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            goto L83
        L78:
            com.google.android.gms.measurement.internal.zzft r4 = new com.google.android.gms.measurement.internal.zzft     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            r15 = r4
            r16 = r23
            r15.<init>(r16, r17, r18, r19, r21)     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            r0.add(r4)     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
        L83:
            boolean r4 = r2.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L90 java.lang.Throwable -> Lba
            if (r4 != 0) goto L4c
        L8a:
            if (r2 == 0) goto L8f
            r2.close()
        L8f:
            return r0
        L90:
            r0 = move-exception
            goto La3
        L92:
            r0 = move-exception
            r3 = r22
            goto Lbb
        L96:
            r0 = move-exception
            r3 = r22
            goto La3
        L9a:
            r0 = move-exception
            r3 = r22
            r2 = r1
            goto Lbb
        L9f:
            r0 = move-exception
            r3 = r22
            r2 = r1
        La3:
            com.google.android.gms.measurement.internal.zzaq r4 = r22.zzgt()     // Catch: java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r4 = r4.zzjg()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r5 = "Error querying user properties. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzaq.zzby(r23)     // Catch: java.lang.Throwable -> Lba
            r4.zze(r5, r6, r0)     // Catch: java.lang.Throwable -> Lba
            if (r2 == 0) goto Lb9
            r2.close()
        Lb9:
            return r1
        Lba:
            r0 = move-exception
        Lbb:
            if (r2 == 0) goto Lc0
            r2.close()
        Lc0:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzbn(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a3, code lost:
    
        zzgt().zzjg().zzg("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0150  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzft> zzb(java.lang.String r22, java.lang.String r23, java.lang.String r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzb(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    public final boolean zza(zzm zzmVar) {
        Preconditions.checkNotNull(zzmVar);
        zzaf();
        zzcl();
        if (zzi(zzmVar.packageName, zzmVar.zzahe.name) == null && zza("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzmVar.packageName}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzmVar.packageName);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzmVar.origin);
        contentValues.put("name", zzmVar.zzahe.name);
        zza(contentValues, FirebaseAnalytics.Param.VALUE, zzmVar.zzahe.getValue());
        contentValues.put("active", Boolean.valueOf(zzmVar.active));
        contentValues.put("trigger_event_name", zzmVar.triggerEventName);
        contentValues.put("trigger_timeout", Long.valueOf(zzmVar.triggerTimeout));
        zzgr();
        contentValues.put("timed_out_event", zzfu.zza(zzmVar.zzahf));
        contentValues.put("creation_timestamp", Long.valueOf(zzmVar.creationTimestamp));
        zzgr();
        contentValues.put("triggered_event", zzfu.zza(zzmVar.zzahg));
        contentValues.put("triggered_timestamp", Long.valueOf(zzmVar.zzahe.zzaux));
        contentValues.put("time_to_live", Long.valueOf(zzmVar.timeToLive));
        zzgr();
        contentValues.put("expired_event", zzfu.zza(zzmVar.zzahh));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzgt().zzjg().zzg("Failed to insert/update conditional user property (got -1)", zzaq.zzby(zzmVar.packageName));
            }
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Error storing conditional user property", zzaq.zzby(zzmVar.packageName), e);
        }
        return true;
    }

    @WorkerThread
    public final zzm zzj(String str, String str2) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            try {
                cursorQuery = getWritableDatabase().query("conditional_properties", new String[]{FirebaseAnalytics.Param.ORIGIN, FirebaseAnalytics.Param.VALUE, "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            String string = cursorQuery.getString(0);
            try {
                Object objZza = zza(cursorQuery, 1);
                boolean z = cursorQuery.getInt(2) != 0;
                zzm zzmVar = new zzm(str, string, new zzfr(str2, cursorQuery.getLong(8), objZza, string), cursorQuery.getLong(6), z, cursorQuery.getString(3), (zzae) zzjr().zza(cursorQuery.getBlob(5), zzae.CREATOR), cursorQuery.getLong(4), (zzae) zzjr().zza(cursorQuery.getBlob(7), zzae.CREATOR), cursorQuery.getLong(9), (zzae) zzjr().zza(cursorQuery.getBlob(10), zzae.CREATOR));
                if (cursorQuery.moveToNext()) {
                    zzgt().zzjg().zze("Got multiple records for conditional property, expected one", zzaq.zzby(str), zzgq().zzbx(str2));
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzmVar;
            } catch (SQLiteException e2) {
                e = e2;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        zzgt().zzjg().zzd("Error querying conditional property", zzaq.zzby(str), zzgq().zzbx(str2), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    @WorkerThread
    public final int zzk(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzgt().zzjg().zzd("Error deleting conditional property", zzaq.zzby(str), zzgq().zzbx(str2), e);
            return 0;
        }
    }

    @WorkerThread
    public final List<zzm> zzc(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return zzb(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0097, code lost:
    
        zzgt().zzjg().zzg("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzm> zzb(java.lang.String r40, java.lang.String[] r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzb(java.lang.String, java.lang.String[]):java.util.List");
    }

    @WorkerThread
    public final zzg zzbo(String str) {
        Cursor cursorQuery;
        boolean z;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            try {
                z = false;
                cursorQuery = getWritableDatabase().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "ssaid_reporting_enabled", "admob_app_id"}, "app_id=?", new String[]{str}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToFirst()) {
                try {
                    zzg zzgVar = new zzg(this.zzang.zzmh(), str);
                    zzgVar.zzal(cursorQuery.getString(0));
                    zzgVar.zzam(cursorQuery.getString(1));
                    zzgVar.zzao(cursorQuery.getString(2));
                    zzgVar.zzx(cursorQuery.getLong(3));
                    zzgVar.zzs(cursorQuery.getLong(4));
                    zzgVar.zzt(cursorQuery.getLong(5));
                    zzgVar.setAppVersion(cursorQuery.getString(6));
                    zzgVar.zzaq(cursorQuery.getString(7));
                    zzgVar.zzv(cursorQuery.getLong(8));
                    zzgVar.zzw(cursorQuery.getLong(9));
                    zzgVar.setMeasurementEnabled(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                    zzgVar.zzaa(cursorQuery.getLong(11));
                    zzgVar.zzab(cursorQuery.getLong(12));
                    zzgVar.zzac(cursorQuery.getLong(13));
                    zzgVar.zzad(cursorQuery.getLong(14));
                    zzgVar.zzy(cursorQuery.getLong(15));
                    zzgVar.zzz(cursorQuery.getLong(16));
                    zzgVar.zzu(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                    zzgVar.zzap(cursorQuery.getString(18));
                    zzgVar.zzaf(cursorQuery.getLong(19));
                    zzgVar.zzae(cursorQuery.getLong(20));
                    zzgVar.zzar(cursorQuery.getString(21));
                    zzgVar.zzag(cursorQuery.isNull(22) ? 0L : cursorQuery.getLong(22));
                    zzgVar.zze(cursorQuery.isNull(23) || cursorQuery.getInt(23) != 0);
                    if (cursorQuery.isNull(24) || cursorQuery.getInt(24) != 0) {
                        z = true;
                    }
                    zzgVar.zzf(z);
                    zzgVar.zzan(cursorQuery.getString(25));
                    zzgVar.zzha();
                    if (cursorQuery.moveToNext()) {
                        zzgt().zzjg().zzg("Got multiple records for app, expected one. appId", zzaq.zzby(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzgVar;
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } else {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (SQLiteException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        zzgt().zzjg().zze("Error querying app. appId", zzaq.zzby(str), e);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    @WorkerThread
    public final void zza(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzaf();
        zzcl();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzal());
        contentValues.put("app_instance_id", zzgVar.getAppInstanceId());
        contentValues.put("gmp_app_id", zzgVar.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzgVar.zzhc());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzhj()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzhd()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzhe()));
        contentValues.put("app_version", zzgVar.zzak());
        contentValues.put("app_store", zzgVar.zzhg());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzhh()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzhi()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.isMeasurementEnabled()));
        contentValues.put("day", Long.valueOf(zzgVar.zzhn()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzho()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzhp()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzhq()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzhk()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzhl()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzhf()));
        contentValues.put("firebase_instance_id", zzgVar.getFirebaseInstanceId());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zzhs()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzhr()));
        contentValues.put("health_monitor_sample", zzgVar.zzht());
        contentValues.put("android_id", Long.valueOf(zzgVar.zzhv()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzhw()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzgVar.zzhx()));
        contentValues.put("admob_app_id", zzgVar.zzhb());
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzgVar.zzal()}) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzgt().zzjg().zzg("Failed to insert/update app (got -1). appId", zzaq.zzby(zzgVar.zzal()));
            }
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Error storing app. appId", zzaq.zzby(zzgVar.zzal()), e);
        }
    }

    public final long zzbp(String str) {
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            return getWritableDatabase().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzgv().zzb(str, zzag.zzajv))))});
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Error deleting over the limit events. appId", zzaq.zzby(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x013d  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzs zza(long r20, java.lang.String r22, boolean r23, boolean r24, boolean r25, boolean r26, boolean r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zza(long, java.lang.String, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzs");
    }

    @WorkerThread
    public final byte[] zzbq(String str) {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzaf();
        zzcl();
        try {
            cursorQuery = getWritableDatabase().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    if (cursorQuery.moveToNext()) {
                        zzgt().zzjg().zzg("Got multiple records for app config, expected one. appId", zzaq.zzby(str));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return blob;
                } catch (SQLiteException e) {
                    e = e;
                    zzgt().zzjg().zze("Error querying remote config. appId", zzaq.zzby(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
            th = th;
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    @WorkerThread
    public final boolean zza(zzgl zzglVar, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzglVar);
        Preconditions.checkNotEmpty(zzglVar.zztt);
        Preconditions.checkNotNull(zzglVar.zzaxy);
        zzij();
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        if (zzglVar.zzaxy.longValue() < jCurrentTimeMillis - zzo.zzib() || zzglVar.zzaxy.longValue() > zzo.zzib() + jCurrentTimeMillis) {
            zzgt().zzjj().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzaq.zzby(zzglVar.zztt), Long.valueOf(jCurrentTimeMillis), zzglVar.zzaxy);
        }
        try {
            byte[] bArr = new byte[zzglVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzglVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            byte[] bArrZzb = zzjr().zzb(bArr);
            zzgt().zzjo().zzg("Saving bundle, size", Integer.valueOf(bArrZzb.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzglVar.zztt);
            contentValues.put("bundle_end_timestamp", zzglVar.zzaxy);
            contentValues.put(Parameters.DATA, bArrZzb);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzglVar.zzayv != null) {
                contentValues.put("retry_count", zzglVar.zzayv);
            }
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) == -1) {
                    zzgt().zzjg().zzg("Failed to insert bundle (got -1). appId", zzaq.zzby(zzglVar.zztt));
                    return false;
                }
                return true;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing bundle. appId", zzaq.zzby(zzglVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zze("Data loss. Failed to serialize bundle. appId", zzaq.zzby(zzglVar.zztt), e2);
            return false;
        }
    }

    @WorkerThread
    public final String zzih() throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = getWritableDatabase().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (cursorRawQuery.moveToFirst()) {
                        String string = cursorRawQuery.getString(0);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return string;
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                } catch (SQLiteException e) {
                    e = e;
                    zzgt().zzjg().zzg("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            th = th2;
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    public final boolean zzii() {
        return zza("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    @WorkerThread
    public final List<Pair<zzgl, Long>> zzb(String str, int i, int i2) throws Throwable {
        Cursor cursorQuery;
        byte[] bArrZza;
        zzaf();
        zzcl();
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                cursorQuery = getWritableDatabase().query("queue", new String[]{"rowid", Parameters.DATA, "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
            } catch (Throwable th) {
                th = th;
                cursorQuery = cursor;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            if (!cursorQuery.moveToFirst()) {
                List<Pair<zzgl, Long>> listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
            ArrayList arrayList = new ArrayList();
            int length = 0;
            do {
                long j = cursorQuery.getLong(0);
                try {
                    bArrZza = zzjr().zza(cursorQuery.getBlob(1));
                } catch (IOException e2) {
                    zzgt().zzjg().zze("Failed to unzip queued bundle. appId", zzaq.zzby(str), e2);
                }
                if (!arrayList.isEmpty() && bArrZza.length + length > i2) {
                    break;
                }
                zzzi zzziVarZzj = zzzi.zzj(bArrZza, 0, bArrZza.length);
                zzgl zzglVar = new zzgl();
                try {
                    zzglVar.zza(zzziVarZzj);
                    if (!cursorQuery.isNull(2)) {
                        zzglVar.zzayv = Integer.valueOf(cursorQuery.getInt(2));
                    }
                    length += bArrZza.length;
                    arrayList.add(Pair.create(zzglVar, Long.valueOf(j)));
                } catch (IOException e3) {
                    zzgt().zzjg().zze("Failed to merge queued bundle. appId", zzaq.zzby(str), e3);
                }
                if (!cursorQuery.moveToNext()) {
                    break;
                }
            } while (length <= i2);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (SQLiteException e4) {
            e = e4;
            cursor = cursorQuery;
            zzgt().zzjg().zze("Error querying bundles. appId", zzaq.zzby(str), e);
            List<Pair<zzgl, Long>> listEmptyList2 = Collections.emptyList();
            if (cursor != null) {
                cursor.close();
            }
            return listEmptyList2;
        } catch (Throwable th2) {
            th = th2;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    @WorkerThread
    final void zzij() {
        int iDelete;
        zzaf();
        zzcl();
        if (!zzip()) {
            return;
        }
        long j = zzgu().zzano.get();
        long jElapsedRealtime = zzbx().elapsedRealtime();
        if (Math.abs(jElapsedRealtime - j) > zzag.zzake.get().longValue()) {
            zzgu().zzano.set(jElapsedRealtime);
            zzaf();
            zzcl();
            if (zzip() && (iDelete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzbx().currentTimeMillis()), String.valueOf(zzo.zzib())})) > 0) {
                zzgt().zzjo().zzg("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    @WorkerThread
    @VisibleForTesting
    final void zzc(List<Long> list) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (!zzip()) {
            return;
        }
        String strJoin = TextUtils.join(",", list);
        StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
        sb.append("(");
        sb.append(strJoin);
        sb.append(")");
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 80);
        sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
        sb2.append(string);
        sb2.append(" AND retry_count =  2147483647 LIMIT 1");
        if (zza(sb2.toString(), (String[]) null) > 0) {
            zzgt().zzjj().zzca("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 127);
            sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb3.append(string);
            sb3.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
            writableDatabase.execSQL(sb3.toString());
        } catch (SQLiteException e) {
            zzgt().zzjg().zzg("Error incrementing retry count. error", e);
        }
    }

    @WorkerThread
    final void zza(String str, zzfx[] zzfxVarArr) {
        boolean z;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfxVarArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzcl();
            zzaf();
            Preconditions.checkNotEmpty(str);
            SQLiteDatabase writableDatabase2 = getWritableDatabase();
            writableDatabase2.delete("property_filters", "app_id=?", new String[]{str});
            writableDatabase2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzfx zzfxVar : zzfxVarArr) {
                zzcl();
                zzaf();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzfxVar);
                Preconditions.checkNotNull(zzfxVar.zzavt);
                Preconditions.checkNotNull(zzfxVar.zzavs);
                if (zzfxVar.zzavr == null) {
                    zzgt().zzjj().zzg("Audience with no ID. appId", zzaq.zzby(str));
                } else {
                    int iIntValue = zzfxVar.zzavr.intValue();
                    zzfy[] zzfyVarArr = zzfxVar.zzavt;
                    int length = zzfyVarArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            if (zzfyVarArr[i].zzavx == null) {
                                zzgt().zzjj().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", zzaq.zzby(str), zzfxVar.zzavr);
                                break;
                            }
                            i++;
                        } else {
                            zzgb[] zzgbVarArr = zzfxVar.zzavs;
                            int length2 = zzgbVarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 < length2) {
                                    if (zzgbVarArr[i2].zzavx == null) {
                                        zzgt().zzjj().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", zzaq.zzby(str), zzfxVar.zzavr);
                                        break;
                                    }
                                    i2++;
                                } else {
                                    zzfy[] zzfyVarArr2 = zzfxVar.zzavt;
                                    int length3 = zzfyVarArr2.length;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 < length3) {
                                            if (zza(str, iIntValue, zzfyVarArr2[i3])) {
                                                i3++;
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    if (z) {
                                        zzgb[] zzgbVarArr2 = zzfxVar.zzavs;
                                        int length4 = zzgbVarArr2.length;
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 >= length4) {
                                                break;
                                            }
                                            if (zza(str, iIntValue, zzgbVarArr2[i4])) {
                                                i4++;
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z) {
                                        zzcl();
                                        zzaf();
                                        Preconditions.checkNotEmpty(str);
                                        SQLiteDatabase writableDatabase3 = getWritableDatabase();
                                        writableDatabase3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                        writableDatabase3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iIntValue)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzfx zzfxVar2 : zzfxVarArr) {
                arrayList.add(zzfxVar2.zzavr);
            }
            zza(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzfy zzfyVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzfyVar);
        if (TextUtils.isEmpty(zzfyVar.zzavy)) {
            zzgt().zzjj().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzaq.zzby(str), Integer.valueOf(i), String.valueOf(zzfyVar.zzavx));
            return false;
        }
        try {
            byte[] bArr = new byte[zzfyVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzfyVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzfyVar.zzavx);
            contentValues.put("event_name", zzfyVar.zzavy);
            contentValues.put(Parameters.DATA, bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    zzgt().zzjg().zzg("Failed to insert event filter (got -1). appId", zzaq.zzby(str));
                    return true;
                }
                return true;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing event filter. appId", zzaq.zzby(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zze("Configuration loss. Failed to serialize event filter. appId", zzaq.zzby(str), e2);
            return false;
        }
    }

    @WorkerThread
    private final boolean zza(String str, int i, zzgb zzgbVar) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzgbVar);
        if (TextUtils.isEmpty(zzgbVar.zzawn)) {
            zzgt().zzjj().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzaq.zzby(str), Integer.valueOf(i), String.valueOf(zzgbVar.zzavx));
            return false;
        }
        try {
            byte[] bArr = new byte[zzgbVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzgbVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzgbVar.zzavx);
            contentValues.put("property_name", zzgbVar.zzawn);
            contentValues.put(Parameters.DATA, bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) == -1) {
                    zzgt().zzjg().zzg("Failed to insert property filter (got -1). appId", zzaq.zzby(str));
                    return false;
                }
                return true;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing property filter. appId", zzaq.zzby(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zze("Configuration loss. Failed to serialize property filter. appId", zzaq.zzby(str), e2);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzfy>> zzl(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.zzcl()
            r12.zzaf()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            android.support.v4.util.ArrayMap r0 = new android.support.v4.util.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.getWritableDatabase()
            r9 = 0
            java.lang.String r2 = "event_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "app_id=? AND event_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r10] = r13     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r11] = r14     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L49
            java.util.Map r0 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r14 == 0) goto L48
            r14.close()
        L48:
            return r0
        L49:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r2 = r1.length     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzzi r1 = com.google.android.gms.internal.measurement.zzzi.zzj(r1, r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzfy r2 = new com.google.android.gms.internal.measurement.zzfy     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zza(r1)     // Catch: java.io.IOException -> L7d android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r1 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r3 != 0) goto L79
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r0.put(r1, r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L79:
            r3.add(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            goto L90
        L7d:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzaq r2 = r12.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r2 = r2.zzjg()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.String r3 = "Failed to merge filter. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzaq.zzby(r13)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zze(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L90:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L49
            if (r14 == 0) goto L9b
            r14.close()
        L9b:
            return r0
        L9c:
            r0 = move-exception
            goto La3
        L9e:
            r13 = move-exception
            r14 = r9
            goto Lbb
        La1:
            r0 = move-exception
            r14 = r9
        La3:
            com.google.android.gms.measurement.internal.zzaq r1 = r12.zzgt()     // Catch: java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r1 = r1.zzjg()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzaq.zzby(r13)     // Catch: java.lang.Throwable -> Lba
            r1.zze(r2, r13, r0)     // Catch: java.lang.Throwable -> Lba
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            return r9
        Lba:
            r13 = move-exception
        Lbb:
            if (r14 == 0) goto Lc0
            r14.close()
        Lc0:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzl(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzgb>> zzm(java.lang.String r13, java.lang.String r14) {
        /*
            r12 = this;
            r12.zzcl()
            r12.zzaf()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            android.support.v4.util.ArrayMap r0 = new android.support.v4.util.ArrayMap
            r0.<init>()
            android.database.sqlite.SQLiteDatabase r1 = r12.getWritableDatabase()
            r9 = 0
            java.lang.String r2 = "property_filters"
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "audience_id"
            r10 = 0
            r4[r10] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "data"
            r11 = 1
            r4[r11] = r5     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            java.lang.String r5 = "app_id=? AND property_name=?"
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r10] = r13     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r6[r11] = r14     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            r14 = 0
            r7 = 0
            r8 = 0
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r14
            android.database.Cursor r14 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9e android.database.sqlite.SQLiteException -> La1
            boolean r1 = r14.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L49
            java.util.Map r0 = java.util.Collections.emptyMap()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r14 == 0) goto L48
            r14.close()
        L48:
            return r0
        L49:
            byte[] r1 = r14.getBlob(r11)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r2 = r1.length     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzzi r1 = com.google.android.gms.internal.measurement.zzzi.zzj(r1, r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.internal.measurement.zzgb r2 = new com.google.android.gms.internal.measurement.zzgb     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zza(r1)     // Catch: java.io.IOException -> L7d android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            int r1 = r14.getInt(r10)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Object r3 = r0.get(r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.util.List r3 = (java.util.List) r3     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r3 != 0) goto L79
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r3.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r0.put(r1, r3)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L79:
            r3.add(r2)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            goto L90
        L7d:
            r1 = move-exception
            com.google.android.gms.measurement.internal.zzaq r2 = r12.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r2 = r2.zzjg()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            java.lang.String r3 = "Failed to merge filter"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzaq.zzby(r13)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            r2.zze(r3, r4, r1)     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
        L90:
            boolean r1 = r14.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9c java.lang.Throwable -> Lba
            if (r1 != 0) goto L49
            if (r14 == 0) goto L9b
            r14.close()
        L9b:
            return r0
        L9c:
            r0 = move-exception
            goto La3
        L9e:
            r13 = move-exception
            r14 = r9
            goto Lbb
        La1:
            r0 = move-exception
            r14 = r9
        La3:
            com.google.android.gms.measurement.internal.zzaq r1 = r12.zzgt()     // Catch: java.lang.Throwable -> Lba
            com.google.android.gms.measurement.internal.zzas r1 = r1.zzjg()     // Catch: java.lang.Throwable -> Lba
            java.lang.String r2 = "Database error querying filters. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzaq.zzby(r13)     // Catch: java.lang.Throwable -> Lba
            r1.zze(r2, r13, r0)     // Catch: java.lang.Throwable -> Lba
            if (r14 == 0) goto Lb9
            r14.close()
        Lb9:
            return r9
        Lba:
            r13 = move-exception
        Lbb:
            if (r14 == 0) goto Lc0
            r14.close()
        Lc0:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzm(java.lang.String, java.lang.String):java.util.Map");
    }

    private final boolean zza(String str, List<Integer> list) throws Throwable {
        Preconditions.checkNotEmpty(str);
        zzcl();
        zzaf();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            long jZza = zza("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zzgv().zzb(str, zzag.zzakl)));
            if (jZza <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String strJoin = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append("(");
            sb.append(strJoin);
            sb.append(")");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 140);
            sb2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb2.append(string);
            sb2.append(" order by rowid desc limit -1 offset ?)");
            return writableDatabase.delete("audience_filter_values", sb2.toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e) {
            zzgt().zzjg().zze("Database error querying filters. appId", zzaq.zzby(str), e);
            return false;
        }
    }

    final Map<Integer, zzgm> zzbr(String str) {
        Cursor cursorQuery;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        try {
            cursorQuery = getWritableDatabase().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    ArrayMap arrayMap = new ArrayMap();
                    do {
                        int i = cursorQuery.getInt(0);
                        byte[] blob = cursorQuery.getBlob(1);
                        zzzi zzziVarZzj = zzzi.zzj(blob, 0, blob.length);
                        zzgm zzgmVar = new zzgm();
                        try {
                            zzgmVar.zza(zzziVarZzj);
                            arrayMap.put(Integer.valueOf(i), zzgmVar);
                        } catch (IOException e) {
                            zzgt().zzjg().zzd("Failed to merge filter results. appId, audienceId, error", zzaq.zzby(str), Integer.valueOf(i), e);
                        }
                    } while (cursorQuery.moveToNext());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return arrayMap;
                } catch (SQLiteException e2) {
                    e = e2;
                    zzgt().zzjg().zze("Database error querying filter results. appId", zzaq.zzby(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
            }
            th = th;
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    @WorkerThread
    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        switch (type) {
            case 0:
                zzgt().zzjg().zzca("Loaded invalid null value from database");
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                zzgt().zzjg().zzca("Loaded invalid blob type value, ignoring it");
                break;
            default:
                zzgt().zzjg().zzg("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                break;
        }
        return null;
    }

    @WorkerThread
    public final long zzik() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:29|3|(5:5|(3:7|8|9)(1:10)|24|25|26)|31|11|(3:13|14|15)(3:16|17|26)) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c6, code lost:
    
        r3 = e;
     */
    @android.support.annotation.WorkerThread
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final long zzn(java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzn(java.lang.String, java.lang.String):long");
    }

    @WorkerThread
    public final long zzil() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final long zza(zzgl zzglVar) throws IOException {
        long jZzc;
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzglVar);
        Preconditions.checkNotEmpty(zzglVar.zztt);
        try {
            byte[] bArr = new byte[zzglVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzglVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            zzfq zzfqVarZzjr = zzjr();
            Preconditions.checkNotNull(bArr);
            zzfqVarZzjr.zzgr().zzaf();
            MessageDigest messageDigest = zzfu.getMessageDigest();
            if (messageDigest == null) {
                zzfqVarZzjr.zzgt().zzjg().zzca("Failed to get MD5");
                jZzc = 0;
            } else {
                jZzc = zzfu.zzc(messageDigest.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzglVar.zztt);
            contentValues.put("metadata_fingerprint", Long.valueOf(jZzc));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return jZzc;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing raw event metadata. appId", zzaq.zzby(zzglVar.zztt), e);
                throw e;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zze("Data loss. Failed to serialize event metadata. appId", zzaq.zzby(zzglVar.zztt), e2);
            throw e2;
        }
    }

    public final boolean zzim() {
        return zza("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzin() {
        return zza("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final long zzbs(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String zzah(long r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.zzaf()
            r4.zzcl()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.getWritableDatabase()     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L41 android.database.sqlite.SQLiteException -> L44
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3f java.lang.Throwable -> L59
            if (r1 != 0) goto L35
            com.google.android.gms.measurement.internal.zzaq r6 = r4.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L3f java.lang.Throwable -> L59
            com.google.android.gms.measurement.internal.zzas r6 = r6.zzjo()     // Catch: android.database.sqlite.SQLiteException -> L3f java.lang.Throwable -> L59
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.zzca(r1)     // Catch: android.database.sqlite.SQLiteException -> L3f java.lang.Throwable -> L59
            if (r5 == 0) goto L34
            r5.close()
        L34:
            return r0
        L35:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3f java.lang.Throwable -> L59
            if (r5 == 0) goto L3e
            r5.close()
        L3e:
            return r6
        L3f:
            r6 = move-exception
            goto L46
        L41:
            r6 = move-exception
            r5 = r0
            goto L5a
        L44:
            r6 = move-exception
            r5 = r0
        L46:
            com.google.android.gms.measurement.internal.zzaq r1 = r4.zzgt()     // Catch: java.lang.Throwable -> L59
            com.google.android.gms.measurement.internal.zzas r1 = r1.zzjg()     // Catch: java.lang.Throwable -> L59
            java.lang.String r2 = "Error selecting expired configs"
            r1.zzg(r2, r6)     // Catch: java.lang.Throwable -> L59
            if (r5 == 0) goto L58
            r5.close()
        L58:
            return r0
        L59:
            r6 = move-exception
        L5a:
            if (r5 == 0) goto L5f
            r5.close()
        L5f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zzah(long):java.lang.String");
    }

    public final long zzio() throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor = null;
        try {
            try {
                cursorRawQuery = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!cursorRawQuery.moveToFirst()) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
            long j = cursorRawQuery.getLong(0);
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return j;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = cursorRawQuery;
            zzgt().zzjg().zzg("Error querying raw events", e);
            if (cursor != null) {
                cursor.close();
            }
            return -1L;
        } catch (Throwable th2) {
            th = th2;
            cursor = cursorRawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzgi, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) {
        /*
            r7 = this;
            r7.zzaf()
            r7.zzcl()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.getWritableDatabase()     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteException -> L7b
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            if (r2 != 0) goto L38
            com.google.android.gms.measurement.internal.zzaq r8 = r7.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzas r8 = r8.zzjo()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            java.lang.String r9 = "Main event not found"
            r8.zzca(r9)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            if (r1 == 0) goto L37
            r1.close()
        L37:
            return r0
        L38:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            long r5 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            int r5 = r2.length     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzzi r2 = com.google.android.gms.internal.measurement.zzzi.zzj(r2, r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzgi r4 = new com.google.android.gms.internal.measurement.zzgi     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            r4.<init>()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            r4.zza(r2)     // Catch: java.io.IOException -> L5e android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            android.util.Pair r8 = android.util.Pair.create(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            if (r1 == 0) goto L5d
            r1.close()
        L5d:
            return r8
        L5e:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzaq r3 = r7.zzgt()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzas r3 = r3.zzjg()     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzaq.zzby(r8)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            r3.zzd(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L76 java.lang.Throwable -> L90
            if (r1 == 0) goto L75
            r1.close()
        L75:
            return r0
        L76:
            r8 = move-exception
            goto L7d
        L78:
            r8 = move-exception
            r1 = r0
            goto L91
        L7b:
            r8 = move-exception
            r1 = r0
        L7d:
            com.google.android.gms.measurement.internal.zzaq r9 = r7.zzgt()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzas r9 = r9.zzjg()     // Catch: java.lang.Throwable -> L90
            java.lang.String r2 = "Error selecting main event"
            r9.zzg(r2, r8)     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8f
            r1.close()
        L8f:
            return r0
        L90:
            r8 = move-exception
        L91:
            if (r1 == 0) goto L96
            r1.close()
        L96:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzr.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final boolean zza(String str, Long l, long j, zzgi zzgiVar) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        try {
            byte[] bArr = new byte[zzgiVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            zzgt().zzjo().zze("Saving complex main event, appId, data size", zzgq().zzbv(str), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("event_id", l);
            contentValues.put("children_to_process", Long.valueOf(j));
            contentValues.put("main_event", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                    zzgt().zzjg().zzg("Failed to insert complex main event (got -1). appId", zzaq.zzby(str));
                    return false;
                }
                return true;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing complex main event. appId", zzaq.zzby(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zzd("Data loss. Failed to serialize event params/data. appId, eventId", zzaq.zzby(str), l, e2);
            return false;
        }
    }

    public final boolean zza(zzz zzzVar, long j, boolean z) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(zzzVar);
        Preconditions.checkNotEmpty(zzzVar.zztt);
        zzgi zzgiVar = new zzgi();
        zzgiVar.zzaxo = Long.valueOf(zzzVar.zzaif);
        zzgiVar.zzaxm = new zzgj[zzzVar.zzaig.size()];
        int i = 0;
        for (String str : zzzVar.zzaig) {
            zzgj zzgjVar = new zzgj();
            int i2 = i + 1;
            zzgiVar.zzaxm[i] = zzgjVar;
            zzgjVar.name = str;
            zzjr().zza(zzgjVar, zzzVar.zzaig.get(str));
            i = i2;
        }
        try {
            byte[] bArr = new byte[zzgiVar.zzwe()];
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
            zzgiVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
            zzgt().zzjo().zze("Saving event, name, data size", zzgq().zzbv(zzzVar.name), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzzVar.zztt);
            contentValues.put("name", zzzVar.name);
            contentValues.put("timestamp", Long.valueOf(zzzVar.timestamp));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put(Parameters.DATA, bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) == -1) {
                    zzgt().zzjg().zzg("Failed to insert raw event (got -1). appId", zzaq.zzby(zzzVar.zztt));
                    return false;
                }
                return true;
            } catch (SQLiteException e) {
                zzgt().zzjg().zze("Error storing raw event. appId", zzaq.zzby(zzzVar.zztt), e);
                return false;
            }
        } catch (IOException e2) {
            zzgt().zzjg().zze("Data loss. Failed to serialize event params/data. appId", zzaq.zzby(zzzVar.zztt), e2);
            return false;
        }
    }

    private final boolean zzip() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }
}

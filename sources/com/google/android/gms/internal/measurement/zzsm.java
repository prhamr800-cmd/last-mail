package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.support.annotation.GuardedBy;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsm implements zzsq {

    @GuardedBy("ConfigurationContentLoader.class")
    static final Map<Uri, zzsm> zzbrm = new ArrayMap();
    private static final String[] zzbrr = {"key", FirebaseAnalytics.Param.VALUE};
    private final Uri uri;
    private final ContentResolver zzbrn;
    private volatile Map<String, String> zzbrp;
    private final Object zzbro = new Object();

    @GuardedBy("this")
    private final List<zzsp> zzbrq = new ArrayList();

    private zzsm(ContentResolver contentResolver, Uri uri) {
        this.zzbrn = contentResolver;
        this.uri = uri;
        this.zzbrn.registerContentObserver(uri, false, new zzso(this, null));
    }

    public static zzsm zza(ContentResolver contentResolver, Uri uri) {
        zzsm zzsmVar;
        synchronized (zzsm.class) {
            zzsmVar = zzbrm.get(uri);
            if (zzsmVar == null) {
                try {
                    zzsm zzsmVar2 = new zzsm(contentResolver, uri);
                    try {
                        zzbrm.put(uri, zzsmVar2);
                        zzsmVar = zzsmVar2;
                    } catch (SecurityException e) {
                        zzsmVar = zzsmVar2;
                    }
                } catch (SecurityException e2) {
                }
            }
        }
        return zzsmVar;
    }

    public final Map<String, String> zztk() {
        Map<String, String> mapZztm = this.zzbrp;
        if (mapZztm == null) {
            synchronized (this.zzbro) {
                mapZztm = this.zzbrp;
                if (mapZztm == null) {
                    mapZztm = zztm();
                    this.zzbrp = mapZztm;
                }
            }
        }
        return mapZztm != null ? mapZztm : Collections.emptyMap();
    }

    public final void zztl() {
        synchronized (this.zzbro) {
            this.zzbrp = null;
            zzsx.zztq();
        }
        synchronized (this) {
            Iterator<zzsp> it = this.zzbrq.iterator();
            while (it.hasNext()) {
                it.next().zztp();
            }
        }
    }

    private final Map<String, String> zztm() {
        try {
            return (Map) zzsr.zza(new zzss(this) { // from class: com.google.android.gms.internal.measurement.zzsn
                private final zzsm zzbrs;

                {
                    this.zzbrs = this;
                }

                @Override // com.google.android.gms.internal.measurement.zzss
                public final Object zzto() {
                    return this.zzbrs.zztn();
                }
            });
        } catch (SQLiteException | SecurityException e) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzsq
    public final /* synthetic */ Object zzfp(String str) {
        return zztk().get(str);
    }

    final /* synthetic */ Map zztn() {
        Map map;
        Cursor cursorQuery = this.zzbrn.query(this.uri, zzbrr, null, null, null);
        if (cursorQuery == null) {
            return Collections.emptyMap();
        }
        try {
            int count = cursorQuery.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                map = new ArrayMap(count);
            } else {
                map = new HashMap(count, 1.0f);
            }
            while (cursorQuery.moveToNext()) {
                map.put(cursorQuery.getString(0), cursorQuery.getString(1));
            }
            return map;
        } finally {
            cursorQuery.close();
        }
    }
}

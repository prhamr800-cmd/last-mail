package io.realm.internal.modules;

import android.util.JsonReader;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.Util;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FilterableMediator extends RealmProxyMediator {
    private final Set<Class<? extends RealmModel>> allowedClasses;
    private final RealmProxyMediator originalMediator;

    public FilterableMediator(RealmProxyMediator originalMediator, Collection<Class<? extends RealmModel>> allowedClasses) {
        this.originalMediator = originalMediator;
        Set<Class<? extends RealmModel>> tempAllowedClasses = new HashSet<>();
        if (originalMediator != null) {
            Set<Class<? extends RealmModel>> originalClasses = originalMediator.getModelClasses();
            for (Class<? extends RealmModel> clazz : allowedClasses) {
                if (originalClasses.contains(clazz)) {
                    tempAllowedClasses.add(clazz);
                }
            }
        }
        Set<Class<? extends RealmModel>> originalClasses2 = Collections.unmodifiableSet(tempAllowedClasses);
        this.allowedClasses = originalClasses2;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>();
        for (Map.Entry<Class<? extends RealmModel>, OsObjectSchemaInfo> entry : this.originalMediator.getExpectedObjectSchemaInfoMap().entrySet()) {
            if (this.allowedClasses.contains(entry.getKey())) {
                infoMap.put(entry.getKey(), entry.getValue());
            }
        }
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo osSchemaInfo) {
        checkSchemaHasClass(clazz);
        return this.originalMediator.createColumnInfo(clazz, osSchemaInfo);
    }

    @Override // io.realm.internal.RealmProxyMediator
    protected String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        checkSchemaHasClass(clazz);
        return this.originalMediator.getSimpleClassName(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        checkSchemaHasClass(cls);
        return (E) this.originalMediator.newInstance(cls, obj, row, columnInfo, z, list);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return this.allowedClasses;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        checkSchemaHasClass(Util.getOriginalModelClass(e.getClass()));
        return (E) this.originalMediator.copyOrUpdate(realm, e, z, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        checkSchemaHasClass(Util.getOriginalModelClass(object.getClass()));
        this.originalMediator.insert(realm, object, cache);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> objects) {
        checkSchemaHasClass(Util.getOriginalModelClass(objects.iterator().next().getClass()));
        this.originalMediator.insert(realm, objects);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        checkSchemaHasClass(Util.getOriginalModelClass(object.getClass()));
        this.originalMediator.insertOrUpdate(realm, object, cache);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> objects) {
        checkSchemaHasClass(Util.getOriginalModelClass(objects.iterator().next().getClass()));
        this.originalMediator.insertOrUpdate(realm, objects);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        checkSchemaHasClass(cls);
        return (E) this.originalMediator.createOrUpdateUsingJsonObject(cls, realm, jSONObject, z);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        checkSchemaHasClass(cls);
        return (E) this.originalMediator.createUsingJsonStream(cls, realm, jsonReader);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        checkSchemaHasClass(Util.getOriginalModelClass(e.getClass()));
        return (E) this.originalMediator.createDetachedCopy(e, i, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        if (this.originalMediator == null) {
            return true;
        }
        return this.originalMediator.transformerApplied();
    }

    private void checkSchemaHasClass(Class<? extends RealmModel> clazz) {
        if (!this.allowedClasses.contains(clazz)) {
            throw new IllegalArgumentException(clazz.getSimpleName() + " is not part of the schema for this Realm");
        }
    }
}

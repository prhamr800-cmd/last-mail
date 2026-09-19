package io.realm.internal.modules;

import android.util.JsonReader;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
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
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CompositeMediator extends RealmProxyMediator {
    private final Map<String, Class<? extends RealmModel>> internalClassNames = new HashMap();
    private final Map<Class<? extends RealmModel>, RealmProxyMediator> mediators;

    public CompositeMediator(RealmProxyMediator... mediators) {
        HashMap<Class<? extends RealmModel>, RealmProxyMediator> tempMediators = new HashMap<>();
        if (mediators != null) {
            for (RealmProxyMediator mediator : mediators) {
                for (Class<? extends RealmModel> realmClass : mediator.getModelClasses()) {
                    String newInternalName = mediator.getSimpleClassName(realmClass);
                    Class<? extends RealmModel> cls = this.internalClassNames.get(newInternalName);
                    if (cls != null && !cls.equals(realmClass)) {
                        throw new IllegalStateException(String.format("It is not allowed for two different model classes to share the same internal name in Realm. The classes %s and %s are being included from the modules '%s' and '%s' and they share the same internal name '%s'.", cls, realmClass, tempMediators.get(cls), mediator, newInternalName));
                    }
                    tempMediators.put(realmClass, mediator);
                    this.internalClassNames.put(newInternalName, realmClass);
                }
            }
        }
        this.mediators = Collections.unmodifiableMap(tempMediators);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>();
        for (RealmProxyMediator mediator : this.mediators.values()) {
            infoMap.putAll(mediator.getExpectedObjectSchemaInfoMap());
        }
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo osSchemaInfo) {
        RealmProxyMediator mediator = getMediator(clazz);
        return mediator.createColumnInfo(clazz, osSchemaInfo);
    }

    @Override // io.realm.internal.RealmProxyMediator
    protected String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        RealmProxyMediator mediator = getMediator(clazz);
        return mediator.getSimpleClassName(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> cls, Object obj, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
        return (E) getMediator(cls).newInstance(cls, obj, row, columnInfo, z, list);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return this.mediators.keySet();
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        return (E) getMediator(Util.getOriginalModelClass(e.getClass())).copyOrUpdate(realm, e, z, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        RealmProxyMediator mediator = getMediator(Util.getOriginalModelClass(object.getClass()));
        mediator.insert(realm, object, cache);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> objects) {
        RealmProxyMediator mediator = getMediator(Util.getOriginalModelClass(Util.getOriginalModelClass(objects.iterator().next().getClass())));
        mediator.insert(realm, objects);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        RealmProxyMediator mediator = getMediator(Util.getOriginalModelClass(object.getClass()));
        mediator.insertOrUpdate(realm, object, cache);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> objects) {
        RealmProxyMediator mediator = getMediator(Util.getOriginalModelClass(Util.getOriginalModelClass(objects.iterator().next().getClass())));
        mediator.insertOrUpdate(realm, objects);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> cls, Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        return (E) getMediator(cls).createOrUpdateUsingJsonObject(cls, realm, jSONObject, z);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> cls, Realm realm, JsonReader jsonReader) throws IOException {
        return (E) getMediator(cls).createUsingJsonStream(cls, realm, jsonReader);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        return (E) getMediator(Util.getOriginalModelClass(e.getClass())).createDetachedCopy(e, i, map);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        for (Map.Entry<Class<? extends RealmModel>, RealmProxyMediator> entry : this.mediators.entrySet()) {
            if (!entry.getValue().transformerApplied()) {
                return false;
            }
        }
        return true;
    }

    private RealmProxyMediator getMediator(Class<? extends RealmModel> clazz) {
        RealmProxyMediator mediator = this.mediators.get(clazz);
        if (mediator == null) {
            throw new RealmException(clazz.getSimpleName() + " is not part of the schema for this Realm");
        }
        return mediator;
    }
}

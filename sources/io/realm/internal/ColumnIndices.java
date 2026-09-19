package io.realm.internal;

import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public final class ColumnIndices {
    private final RealmProxyMediator mediator;
    private final OsSchemaInfo osSchemaInfo;
    private final Map<Class<? extends RealmModel>, ColumnInfo> classToColumnInfoMap = new HashMap();
    private final Map<String, ColumnInfo> simpleClassNameToColumnInfoMap = new HashMap();

    public ColumnIndices(RealmProxyMediator mediator, OsSchemaInfo osSchemaInfo) {
        this.mediator = mediator;
        this.osSchemaInfo = osSchemaInfo;
    }

    @Nonnull
    public ColumnInfo getColumnInfo(Class<? extends RealmModel> clazz) {
        ColumnInfo columnInfo = this.classToColumnInfoMap.get(clazz);
        if (columnInfo == null) {
            ColumnInfo columnInfo2 = this.mediator.createColumnInfo(clazz, this.osSchemaInfo);
            this.classToColumnInfoMap.put(clazz, columnInfo2);
            return columnInfo2;
        }
        return columnInfo;
    }

    @Nonnull
    public ColumnInfo getColumnInfo(String simpleClassName) {
        ColumnInfo columnInfo = this.simpleClassNameToColumnInfoMap.get(simpleClassName);
        if (columnInfo == null) {
            Set<Class<? extends RealmModel>> modelClasses = this.mediator.getModelClasses();
            Iterator<Class<? extends RealmModel>> it = modelClasses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Class<? extends RealmModel> modelClass = it.next();
                if (this.mediator.getSimpleClassName(modelClass).equals(simpleClassName)) {
                    columnInfo = getColumnInfo(modelClass);
                    this.simpleClassNameToColumnInfoMap.put(simpleClassName, columnInfo);
                    break;
                }
            }
        }
        if (columnInfo == null) {
            throw new RealmException(String.format(Locale.US, "'%s' doesn't exist in current schema.", simpleClassName));
        }
        return columnInfo;
    }

    public void refresh() {
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.classToColumnInfoMap.entrySet()) {
            ColumnInfo newColumnInfo = this.mediator.createColumnInfo(entry.getKey(), this.osSchemaInfo);
            entry.getValue().copyFrom(newColumnInfo);
        }
    }

    public String toString() {
        StringBuilder buf = new StringBuilder("ColumnIndices[");
        boolean commaNeeded = false;
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.classToColumnInfoMap.entrySet()) {
            if (commaNeeded) {
                buf.append(",");
            }
            buf.append(entry.getKey().getSimpleName());
            buf.append("->");
            buf.append(entry.getValue());
            commaNeeded = true;
        }
        buf.append("]");
        return buf.toString();
    }
}

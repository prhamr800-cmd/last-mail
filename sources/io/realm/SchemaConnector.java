package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;

/* JADX INFO: loaded from: classes2.dex */
class SchemaConnector implements FieldDescriptor.SchemaProxy {
    private final RealmSchema schema;

    public SchemaConnector(RealmSchema schema) {
        this.schema = schema;
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public boolean hasCache() {
        return this.schema.haveColumnInfo();
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public ColumnInfo getColumnInfo(String tableName) {
        return this.schema.getColumnInfo(tableName);
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public long getNativeTablePtr(String targetTable) {
        return this.schema.getTable(targetTable).getNativePtr();
    }
}

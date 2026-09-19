package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class CachedFieldDescriptor extends FieldDescriptor {
    private final String className;
    private final FieldDescriptor.SchemaProxy schema;

    CachedFieldDescriptor(FieldDescriptor.SchemaProxy schema, String className, String fieldDescription, Set<RealmFieldType> validInternalColumnTypes, Set<RealmFieldType> validFinalColumnTypes) {
        super(fieldDescription, validInternalColumnTypes, validFinalColumnTypes);
        this.className = className;
        this.schema = schema;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    protected void compileFieldDescription(List<String> fields) {
        long nativeTablePtr;
        int nFields = fields.size();
        long[] columnIndices = new long[nFields];
        long[] tableNativePointers = new long[nFields];
        String currentClassName = this.className;
        String currentClassName2 = currentClassName;
        String currentColumnName = null;
        RealmFieldType currentColumnType = null;
        for (int i = 0; i < nFields; i++) {
            String currentColumnName2 = fields.get(i);
            currentColumnName = currentColumnName2;
            if (currentColumnName == null || currentColumnName.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            ColumnInfo columnInfo = this.schema.getColumnInfo(currentClassName2);
            if (columnInfo == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: class '%s' not found in this schema.", currentClassName2));
            }
            ColumnInfo.ColumnDetails details = columnInfo.getColumnDetails(currentColumnName);
            if (details == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", currentColumnName, currentClassName2));
            }
            currentColumnType = details.columnType;
            if (i < nFields - 1) {
                verifyInternalColumnType(currentClassName2, currentColumnName, currentColumnType);
                currentClassName2 = details.linkedClassName;
            }
            columnIndices[i] = details.columnIndex;
            if (currentColumnType != RealmFieldType.LINKING_OBJECTS) {
                nativeTablePtr = 0;
            } else {
                nativeTablePtr = this.schema.getNativeTablePtr(details.linkedClassName);
            }
            tableNativePointers[i] = nativeTablePtr;
        }
        setCompilationResults(currentClassName2, currentColumnName, currentColumnType, columnIndices, tableNativePointers);
    }
}

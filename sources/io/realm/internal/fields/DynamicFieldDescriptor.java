package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class DynamicFieldDescriptor extends FieldDescriptor {
    private final Table table;

    DynamicFieldDescriptor(Table table, String fieldDescription, Set<RealmFieldType> validInternalColumnTypes, Set<RealmFieldType> validFinalColumnTypes) {
        super(fieldDescription, validInternalColumnTypes, validFinalColumnTypes);
        this.table = table;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    protected void compileFieldDescription(List<String> fields) {
        int nFields = fields.size();
        long[] columnIndices = new long[nFields];
        Table currentTable = this.table;
        Table currentTable2 = currentTable;
        String currentClassName = null;
        String currentColumnName = null;
        RealmFieldType currentColumnType = null;
        for (int i = 0; i < nFields; i++) {
            String currentColumnName2 = fields.get(i);
            currentColumnName = currentColumnName2;
            if (currentColumnName == null || currentColumnName.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            currentClassName = currentTable2.getClassName();
            long columnIndex = currentTable2.getColumnIndex(currentColumnName);
            if (columnIndex < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", currentColumnName, currentClassName));
            }
            currentColumnType = currentTable2.getColumnType(columnIndex);
            if (i < nFields - 1) {
                verifyInternalColumnType(currentClassName, currentColumnName, currentColumnType);
                currentTable2 = currentTable2.getLinkTarget(columnIndex);
            }
            columnIndices[i] = columnIndex;
        }
        setCompilationResults(currentClassName, currentColumnName, currentColumnType, columnIndices, new long[nFields]);
    }
}

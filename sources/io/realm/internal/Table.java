package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import java.util.Date;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class Table implements NativeObject {
    public static final long INFINITE = -1;
    public static final int MAX_BINARY_SIZE = 16777200;
    public static final int MAX_STRING_SIZE = 16777199;
    public static final boolean NOT_NULLABLE = false;
    public static final int NO_MATCH = -1;
    public static final boolean NULLABLE = true;
    private static final int TABLE_NAME_MAX_LENGTH = 63;
    private final NativeContext context;
    private final long nativePtr;
    private final OsSharedRealm sharedRealm;
    private static final String TABLE_PREFIX = Util.getTablePrefix();
    public static final int CLASS_NAME_MAX_LENGTH = 63 - TABLE_PREFIX.length();
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();

    private native long nativeAddColumn(long j, int i, String str, boolean z);

    private native long nativeAddColumnLink(long j, int i, String str, long j2);

    private native long nativeAddPrimitiveListColumn(long j, int i, String str, boolean z);

    private native void nativeAddSearchIndex(long j, long j2);

    private native void nativeClear(long j, boolean z);

    private native void nativeConvertColumnToNotNullable(long j, long j2, boolean z);

    private native void nativeConvertColumnToNullable(long j, long j2, boolean z);

    private native long nativeCountDouble(long j, long j2, double d);

    private native long nativeCountFloat(long j, long j2, float f);

    private native long nativeCountLong(long j, long j2, long j3);

    private native long nativeCountString(long j, long j2, String str);

    private native long nativeFindFirstBool(long j, long j2, boolean z);

    private native long nativeFindFirstDouble(long j, long j2, double d);

    private native long nativeFindFirstFloat(long j, long j2, float f);

    public static native long nativeFindFirstInt(long j, long j2, long j3);

    public static native long nativeFindFirstNull(long j, long j2);

    public static native long nativeFindFirstString(long j, long j2, String str);

    private native long nativeFindFirstTimestamp(long j, long j2, long j3);

    private native boolean nativeGetBoolean(long j, long j2, long j3);

    private native byte[] nativeGetByteArray(long j, long j2, long j3);

    private native long nativeGetColumnCount(long j);

    private native long nativeGetColumnIndex(long j, String str);

    private native String nativeGetColumnName(long j, long j2);

    private native int nativeGetColumnType(long j, long j2);

    private native double nativeGetDouble(long j, long j2, long j3);

    private static native long nativeGetFinalizerPtr();

    private native float nativeGetFloat(long j, long j2, long j3);

    private native long nativeGetLink(long j, long j2, long j3);

    private native long nativeGetLinkTarget(long j, long j2);

    private native long nativeGetLong(long j, long j2, long j3);

    private native String nativeGetName(long j);

    private native String nativeGetString(long j, long j2, long j3);

    private native long nativeGetTimestamp(long j, long j2, long j3);

    private native boolean nativeHasSameSchema(long j, long j2);

    private native boolean nativeHasSearchIndex(long j, long j2);

    public static native void nativeIncrementLong(long j, long j2, long j3, long j4);

    private static native void nativeInsertColumn(long j, long j2, int i, String str);

    private native boolean nativeIsColumnNullable(long j, long j2);

    private native boolean nativeIsNull(long j, long j2, long j3);

    private native boolean nativeIsNullLink(long j, long j2, long j3);

    private native boolean nativeIsValid(long j);

    private static native void nativeMigratePrimaryKeyTableIfNeeded(long j);

    private native void nativeMoveLastOver(long j, long j2);

    public static native void nativeNullifyLink(long j, long j2, long j3);

    private native void nativeRemoveColumn(long j, long j2);

    private native void nativeRemoveSearchIndex(long j, long j2);

    private native void nativeRenameColumn(long j, long j2, String str);

    public static native void nativeSetBoolean(long j, long j2, long j3, boolean z, boolean z2);

    public static native void nativeSetByteArray(long j, long j2, long j3, byte[] bArr, boolean z);

    public static native void nativeSetDouble(long j, long j2, long j3, double d, boolean z);

    public static native void nativeSetFloat(long j, long j2, long j3, float f, boolean z);

    public static native void nativeSetLink(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLong(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetNull(long j, long j2, long j3, boolean z);

    public static native void nativeSetString(long j, long j2, long j3, String str, boolean z);

    public static native void nativeSetTimestamp(long j, long j2, long j3, long j4, boolean z);

    private native long nativeSize(long j);

    private native long nativeWhere(long j);

    native long nativeGetRowPtr(long j, long j2);

    Table(Table parent, long nativePointer) {
        this(parent.sharedRealm, nativePointer);
    }

    Table(OsSharedRealm sharedRealm, long nativePointer) {
        this.context = sharedRealm.context;
        this.sharedRealm = sharedRealm;
        this.nativePtr = nativePointer;
        this.context.addReference(this);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public Table getTable() {
        return this;
    }

    public boolean isValid() {
        return this.nativePtr != 0 && nativeIsValid(this.nativePtr);
    }

    private void verifyColumnName(String name) {
        if (name.length() > 63) {
            throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
        }
    }

    public long addColumn(RealmFieldType type, String name, boolean isNullable) {
        verifyColumnName(name);
        switch (type) {
            case INTEGER:
            case BOOLEAN:
            case STRING:
            case BINARY:
            case DATE:
            case FLOAT:
            case DOUBLE:
                return nativeAddColumn(this.nativePtr, type.getNativeValue(), name, isNullable);
            case INTEGER_LIST:
            case BOOLEAN_LIST:
            case STRING_LIST:
            case BINARY_LIST:
            case DATE_LIST:
            case FLOAT_LIST:
            case DOUBLE_LIST:
                return nativeAddPrimitiveListColumn(this.nativePtr, type.getNativeValue() - 128, name, isNullable);
            default:
                throw new IllegalArgumentException("Unsupported type: " + type);
        }
    }

    public long addColumn(RealmFieldType type, String name) {
        return addColumn(type, name, false);
    }

    public long addColumnLink(RealmFieldType type, String name, Table table) {
        verifyColumnName(name);
        return nativeAddColumnLink(this.nativePtr, type.getNativeValue(), name, table.nativePtr);
    }

    public void removeColumn(long columnIndex) {
        String className = getClassName();
        String columnName = getColumnName(columnIndex);
        String pkName = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName());
        nativeRemoveColumn(this.nativePtr, columnIndex);
        if (columnName.equals(pkName)) {
            OsObjectStore.setPrimaryKeyForObject(this.sharedRealm, className, null);
        }
    }

    public void renameColumn(long columnIndex, String newName) {
        verifyColumnName(newName);
        String oldName = nativeGetColumnName(this.nativePtr, columnIndex);
        String pkName = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName());
        nativeRenameColumn(this.nativePtr, columnIndex, newName);
        if (oldName.equals(pkName)) {
            try {
                OsObjectStore.setPrimaryKeyForObject(this.sharedRealm, getClassName(), newName);
            } catch (Exception e) {
                nativeRenameColumn(this.nativePtr, columnIndex, oldName);
                throw new RuntimeException(e);
            }
        }
    }

    public void insertColumn(long columnIndex, RealmFieldType type, String name) {
        verifyColumnName(name);
        nativeInsertColumn(this.nativePtr, columnIndex, type.getNativeValue(), name);
    }

    public boolean isColumnNullable(long columnIndex) {
        return nativeIsColumnNullable(this.nativePtr, columnIndex);
    }

    public void convertColumnToNullable(long columnIndex) {
        if (this.sharedRealm.isSyncRealm()) {
            throw new IllegalStateException("This method is only available for non-synchronized Realms");
        }
        nativeConvertColumnToNullable(this.nativePtr, columnIndex, isPrimaryKey(columnIndex));
    }

    public void convertColumnToNotNullable(long columnIndex) {
        if (this.sharedRealm.isSyncRealm()) {
            throw new IllegalStateException("This method is only available for non-synchronized Realms");
        }
        nativeConvertColumnToNotNullable(this.nativePtr, columnIndex, isPrimaryKey(columnIndex));
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public void clear(boolean partialRealm) {
        checkImmutable();
        nativeClear(this.nativePtr, partialRealm);
    }

    public long getColumnCount() {
        return nativeGetColumnCount(this.nativePtr);
    }

    public String getColumnName(long columnIndex) {
        return nativeGetColumnName(this.nativePtr, columnIndex);
    }

    public long getColumnIndex(String columnName) {
        if (columnName == null) {
            throw new IllegalArgumentException("Column name can not be null.");
        }
        return nativeGetColumnIndex(this.nativePtr, columnName);
    }

    public RealmFieldType getColumnType(long columnIndex) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, columnIndex));
    }

    public void moveLastOver(long rowIndex) {
        checkImmutable();
        nativeMoveLastOver(this.nativePtr, rowIndex);
    }

    private boolean isPrimaryKey(long columnIndex) {
        return getColumnName(columnIndex).equals(OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName()));
    }

    public static void throwDuplicatePrimaryKeyException(Object value) {
        throw new RealmPrimaryKeyConstraintException("Value already exists: " + value);
    }

    OsSharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    public long getLong(long columnIndex, long rowIndex) {
        return nativeGetLong(this.nativePtr, columnIndex, rowIndex);
    }

    public boolean getBoolean(long columnIndex, long rowIndex) {
        return nativeGetBoolean(this.nativePtr, columnIndex, rowIndex);
    }

    public float getFloat(long columnIndex, long rowIndex) {
        return nativeGetFloat(this.nativePtr, columnIndex, rowIndex);
    }

    public double getDouble(long columnIndex, long rowIndex) {
        return nativeGetDouble(this.nativePtr, columnIndex, rowIndex);
    }

    public Date getDate(long columnIndex, long rowIndex) {
        return new Date(nativeGetTimestamp(this.nativePtr, columnIndex, rowIndex));
    }

    public String getString(long columnIndex, long rowIndex) {
        return nativeGetString(this.nativePtr, columnIndex, rowIndex);
    }

    public byte[] getBinaryByteArray(long columnIndex, long rowIndex) {
        return nativeGetByteArray(this.nativePtr, columnIndex, rowIndex);
    }

    public long getLink(long columnIndex, long rowIndex) {
        return nativeGetLink(this.nativePtr, columnIndex, rowIndex);
    }

    public Table getLinkTarget(long columnIndex) {
        long nativeTablePointer = nativeGetLinkTarget(this.nativePtr, columnIndex);
        return new Table(this.sharedRealm, nativeTablePointer);
    }

    public boolean isNull(long columnIndex, long rowIndex) {
        return nativeIsNull(this.nativePtr, columnIndex, rowIndex);
    }

    public UncheckedRow getUncheckedRow(long index) {
        return UncheckedRow.getByRowIndex(this.context, this, index);
    }

    public UncheckedRow getUncheckedRowByPointer(long nativeRowPointer) {
        return UncheckedRow.getByRowPointer(this.context, this, nativeRowPointer);
    }

    public CheckedRow getCheckedRow(long index) {
        return CheckedRow.get(this.context, this, index);
    }

    public void setLong(long columnIndex, long rowIndex, long value, boolean isDefault) {
        checkImmutable();
        nativeSetLong(this.nativePtr, columnIndex, rowIndex, value, isDefault);
    }

    public void incrementLong(long columnIndex, long rowIndex, long value) {
        checkImmutable();
        nativeIncrementLong(this.nativePtr, columnIndex, rowIndex, value);
    }

    public void setBoolean(long columnIndex, long rowIndex, boolean value, boolean isDefault) {
        checkImmutable();
        nativeSetBoolean(this.nativePtr, columnIndex, rowIndex, value, isDefault);
    }

    public void setFloat(long columnIndex, long rowIndex, float value, boolean isDefault) {
        checkImmutable();
        nativeSetFloat(this.nativePtr, columnIndex, rowIndex, value, isDefault);
    }

    public void setDouble(long columnIndex, long rowIndex, double value, boolean isDefault) {
        checkImmutable();
        nativeSetDouble(this.nativePtr, columnIndex, rowIndex, value, isDefault);
    }

    public void setDate(long columnIndex, long rowIndex, Date date, boolean isDefault) {
        if (date == null) {
            throw new IllegalArgumentException("Null Date is not allowed.");
        }
        checkImmutable();
        nativeSetTimestamp(this.nativePtr, columnIndex, rowIndex, date.getTime(), isDefault);
    }

    public void setString(long columnIndex, long rowIndex, @Nullable String value, boolean isDefault) {
        checkImmutable();
        if (value == null) {
            nativeSetNull(this.nativePtr, columnIndex, rowIndex, isDefault);
        } else {
            nativeSetString(this.nativePtr, columnIndex, rowIndex, value, isDefault);
        }
    }

    public void setBinaryByteArray(long columnIndex, long rowIndex, byte[] data, boolean isDefault) {
        checkImmutable();
        nativeSetByteArray(this.nativePtr, columnIndex, rowIndex, data, isDefault);
    }

    public void setLink(long columnIndex, long rowIndex, long value, boolean isDefault) {
        checkImmutable();
        nativeSetLink(this.nativePtr, columnIndex, rowIndex, value, isDefault);
    }

    public void setNull(long columnIndex, long rowIndex, boolean isDefault) {
        checkImmutable();
        nativeSetNull(this.nativePtr, columnIndex, rowIndex, isDefault);
    }

    public void addSearchIndex(long columnIndex) {
        checkImmutable();
        nativeAddSearchIndex(this.nativePtr, columnIndex);
    }

    public void removeSearchIndex(long columnIndex) {
        checkImmutable();
        nativeRemoveSearchIndex(this.nativePtr, columnIndex);
    }

    public static void migratePrimaryKeyTableIfNeeded(OsSharedRealm sharedRealm) {
        nativeMigratePrimaryKeyTableIfNeeded(sharedRealm.getNativePtr());
    }

    public boolean hasSearchIndex(long columnIndex) {
        return nativeHasSearchIndex(this.nativePtr, columnIndex);
    }

    public boolean isNullLink(long columnIndex, long rowIndex) {
        return nativeIsNullLink(this.nativePtr, columnIndex, rowIndex);
    }

    public void nullifyLink(long columnIndex, long rowIndex) {
        nativeNullifyLink(this.nativePtr, columnIndex, rowIndex);
    }

    boolean isImmutable() {
        return (this.sharedRealm == null || this.sharedRealm.isInTransaction()) ? false : true;
    }

    void checkImmutable() {
        if (isImmutable()) {
            throwImmutable();
        }
    }

    public long count(long columnIndex, long value) {
        return nativeCountLong(this.nativePtr, columnIndex, value);
    }

    public long count(long columnIndex, float value) {
        return nativeCountFloat(this.nativePtr, columnIndex, value);
    }

    public long count(long columnIndex, double value) {
        return nativeCountDouble(this.nativePtr, columnIndex, value);
    }

    public long count(long columnIndex, String value) {
        return nativeCountString(this.nativePtr, columnIndex, value);
    }

    public TableQuery where() {
        long nativeQueryPtr = nativeWhere(this.nativePtr);
        return new TableQuery(this.context, this, nativeQueryPtr);
    }

    public long findFirstLong(long columnIndex, long value) {
        return nativeFindFirstInt(this.nativePtr, columnIndex, value);
    }

    public long findFirstBoolean(long columnIndex, boolean value) {
        return nativeFindFirstBool(this.nativePtr, columnIndex, value);
    }

    public long findFirstFloat(long columnIndex, float value) {
        return nativeFindFirstFloat(this.nativePtr, columnIndex, value);
    }

    public long findFirstDouble(long columnIndex, double value) {
        return nativeFindFirstDouble(this.nativePtr, columnIndex, value);
    }

    public long findFirstDate(long columnIndex, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("null is not supported");
        }
        return nativeFindFirstTimestamp(this.nativePtr, columnIndex, date.getTime());
    }

    public long findFirstString(long columnIndex, String value) {
        if (value == null) {
            throw new IllegalArgumentException("null is not supported");
        }
        return nativeFindFirstString(this.nativePtr, columnIndex, value);
    }

    public long findFirstNull(long columnIndex) {
        return nativeFindFirstNull(this.nativePtr, columnIndex);
    }

    @Nullable
    public String getName() {
        return nativeGetName(this.nativePtr);
    }

    @Nullable
    public String getClassName() {
        return getClassNameForTable(getName());
    }

    public String toString() {
        long columnCount = getColumnCount();
        String name = getName();
        StringBuilder stringBuilder = new StringBuilder("The Table ");
        if (name != null && !name.isEmpty()) {
            stringBuilder.append(getName());
            stringBuilder.append(" ");
        }
        stringBuilder.append("contains ");
        stringBuilder.append(columnCount);
        stringBuilder.append(" columns: ");
        for (int i = 0; i < columnCount; i++) {
            if (i != 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(getColumnName(i));
        }
        stringBuilder.append(".");
        stringBuilder.append(" And ");
        stringBuilder.append(size());
        stringBuilder.append(" rows.");
        return stringBuilder.toString();
    }

    private static void throwImmutable() {
        throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
    }

    public boolean hasSameSchema(Table table) {
        if (table == null) {
            throw new IllegalArgumentException("The argument cannot be null");
        }
        return nativeHasSameSchema(this.nativePtr, table.nativePtr);
    }

    @Nullable
    public static String getClassNameForTable(@Nullable String name) {
        if (name == null) {
            return null;
        }
        if (!name.startsWith(TABLE_PREFIX)) {
            return name;
        }
        return name.substring(TABLE_PREFIX.length());
    }

    public static String getTableNameForClass(String name) {
        if (name == null) {
            return null;
        }
        return TABLE_PREFIX + name;
    }
}

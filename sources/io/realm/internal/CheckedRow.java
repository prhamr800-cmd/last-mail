package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CheckedRow extends UncheckedRow {
    private UncheckedRow originalRow;

    @Override // io.realm.internal.UncheckedRow
    protected native boolean nativeGetBoolean(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native byte[] nativeGetByteArray(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetColumnCount(long j);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetColumnIndex(long j, String str);

    @Override // io.realm.internal.UncheckedRow
    protected native String nativeGetColumnName(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native int nativeGetColumnType(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native double nativeGetDouble(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native float nativeGetFloat(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetLong(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native String nativeGetString(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native long nativeGetTimestamp(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native boolean nativeIsNullLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeNullifyLink(long j, long j2);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetBoolean(long j, long j2, boolean z);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetByteArray(long j, long j2, byte[] bArr);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetDouble(long j, long j2, double d);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetFloat(long j, long j2, float f);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetLink(long j, long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetLong(long j, long j2, long j3);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetString(long j, long j2, String str);

    @Override // io.realm.internal.UncheckedRow
    protected native void nativeSetTimestamp(long j, long j2, long j3);

    private CheckedRow(NativeContext context, Table parent, long nativePtr) {
        super(context, parent, nativePtr);
    }

    private CheckedRow(UncheckedRow row) {
        super(row);
        this.originalRow = row;
    }

    public static CheckedRow get(NativeContext context, Table table, long index) {
        long nativeRowPointer = table.nativeGetRowPtr(table.getNativePtr(), index);
        return new CheckedRow(context, table, nativeRowPointer);
    }

    public static CheckedRow getFromRow(UncheckedRow row) {
        return new CheckedRow(row);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public boolean isNullLink(long columnIndex) {
        RealmFieldType columnType = getColumnType(columnIndex);
        if (columnType == RealmFieldType.OBJECT || columnType == RealmFieldType.LIST) {
            return super.isNullLink(columnIndex);
        }
        return false;
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public boolean isNull(long columnIndex) {
        return super.isNull(columnIndex);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public void setNull(long columnIndex) {
        RealmFieldType columnType = getColumnType(columnIndex);
        if (columnType == RealmFieldType.BINARY) {
            super.setBinaryByteArray(columnIndex, null);
        } else {
            super.setNull(columnIndex);
        }
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public OsList getModelList(long columnIndex) {
        RealmFieldType fieldType = getTable().getColumnType(columnIndex);
        if (fieldType != RealmFieldType.LIST) {
            throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' is not a 'RealmList'.", getTable().getColumnName(columnIndex)));
        }
        return super.getModelList(columnIndex);
    }

    @Override // io.realm.internal.UncheckedRow, io.realm.internal.Row
    public OsList getValueList(long columnIndex, RealmFieldType fieldType) {
        RealmFieldType actualFieldType = getTable().getColumnType(columnIndex);
        if (fieldType != actualFieldType) {
            throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", getTable().getColumnName(columnIndex), fieldType.name()));
        }
        return super.getValueList(columnIndex, fieldType);
    }
}

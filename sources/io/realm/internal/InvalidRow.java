package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public enum InvalidRow implements Row {
    INSTANCE;

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String getColumnName(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getColumnIndex(String columnName) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getIndex() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLong(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public float getFloat(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public double getDouble(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Date getDate(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String getString(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLink(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long columnIndex, RealmFieldType fieldType) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLong(long columnIndex, long value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long columnIndex, boolean value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setFloat(long columnIndex, float value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDouble(long columnIndex, double value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDate(long columnIndex, Date date) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setString(long columnIndex, String value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long columnIndex, byte[] data) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLink(long columnIndex, long value) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setNull(long columnIndex) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isAttached() {
        return false;
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String fieldName) {
        throw getStubException();
    }

    private RuntimeException getStubException() {
        return new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }
}

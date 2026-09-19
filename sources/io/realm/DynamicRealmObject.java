package io.realm;

import io.realm.internal.CheckedRow;
import io.realm.internal.OsList;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.android.JsonUtils;
import java.lang.reflect.GenericDeclaration;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicRealmObject extends RealmObject implements RealmObjectProxy {
    static final String MSG_LINK_QUERY_NOT_SUPPORTED = "Queries across relationships are not supported";
    private final ProxyState<DynamicRealmObject> proxyState = new ProxyState<>(this);

    public DynamicRealmObject(RealmModel obj) {
        if (obj == null) {
            throw new IllegalArgumentException("A non-null object must be provided.");
        }
        if (obj instanceof DynamicRealmObject) {
            throw new IllegalArgumentException("The object is already a DynamicRealmObject: " + obj);
        }
        if (!RealmObject.isManaged(obj)) {
            throw new IllegalArgumentException("An object managed by Realm must be provided. This is an unmanaged object.");
        }
        if (!RealmObject.isValid(obj)) {
            throw new IllegalArgumentException("A valid object managed by Realm must be provided. This object was deleted.");
        }
        RealmObjectProxy proxy = (RealmObjectProxy) obj;
        Row row = proxy.realmGet$proxyState().getRow$realm();
        this.proxyState.setRealm$realm(proxy.realmGet$proxyState().getRealm$realm());
        this.proxyState.setRow$realm(((UncheckedRow) row).convertToChecked());
        this.proxyState.setConstructionFinished();
    }

    DynamicRealmObject(BaseRealm realm, Row row) {
        this.proxyState.setRealm$realm(realm);
        this.proxyState.setRow$realm(row);
        this.proxyState.setConstructionFinished();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E> E get(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
        switch (columnType) {
            case BOOLEAN:
                return (E) Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnIndex));
            case INTEGER:
                return (E) Long.valueOf(this.proxyState.getRow$realm().getLong(columnIndex));
            case FLOAT:
                return (E) Float.valueOf(this.proxyState.getRow$realm().getFloat(columnIndex));
            case DOUBLE:
                return (E) Double.valueOf(this.proxyState.getRow$realm().getDouble(columnIndex));
            case STRING:
                return (E) this.proxyState.getRow$realm().getString(columnIndex);
            case BINARY:
                return (E) this.proxyState.getRow$realm().getBinaryByteArray(columnIndex);
            case DATE:
                return (E) this.proxyState.getRow$realm().getDate(columnIndex);
            case OBJECT:
                return (E) getObject(str);
            case LIST:
                return (E) getList(str);
            default:
                throw new IllegalStateException("Field type not supported: " + columnType);
        }
    }

    public boolean getBoolean(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getBoolean(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.BOOLEAN);
            throw e;
        }
    }

    public int getInt(String fieldName) {
        return (int) getLong(fieldName);
    }

    public short getShort(String fieldName) {
        return (short) getLong(fieldName);
    }

    public long getLong(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getLong(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.INTEGER);
            throw e;
        }
    }

    public byte getByte(String fieldName) {
        return (byte) getLong(fieldName);
    }

    public float getFloat(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getFloat(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.FLOAT);
            throw e;
        }
    }

    public double getDouble(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getDouble(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.DOUBLE);
            throw e;
        }
    }

    public byte[] getBlob(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getBinaryByteArray(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.BINARY);
            throw e;
        }
    }

    public String getString(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            return this.proxyState.getRow$realm().getString(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.STRING);
            throw e;
        }
    }

    public Date getDate(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        checkFieldType(fieldName, columnIndex, RealmFieldType.DATE);
        if (this.proxyState.getRow$realm().isNull(columnIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(columnIndex);
    }

    @Nullable
    public DynamicRealmObject getObject(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        checkFieldType(fieldName, columnIndex, RealmFieldType.OBJECT);
        if (this.proxyState.getRow$realm().isNullLink(columnIndex)) {
            return null;
        }
        long linkRowIndex = this.proxyState.getRow$realm().getLink(columnIndex);
        CheckedRow linkRow = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getCheckedRow(linkRowIndex);
        return new DynamicRealmObject(this.proxyState.getRealm$realm(), linkRow);
    }

    public RealmList<DynamicRealmObject> getList(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        try {
            OsList osList = this.proxyState.getRow$realm().getModelList(columnIndex);
            String className = osList.getTargetTable().getClassName();
            return new RealmList<>(className, osList, this.proxyState.getRealm$realm());
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, RealmFieldType.LIST);
            throw e;
        }
    }

    public <E> RealmList<E> getList(String fieldName, Class<E> primitiveType) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (primitiveType == null) {
            throw new IllegalArgumentException("Non-null 'primitiveType' required.");
        }
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        RealmFieldType realmType = classToRealmType(primitiveType);
        try {
            OsList osList = this.proxyState.getRow$realm().getValueList(columnIndex, realmType);
            return new RealmList<>(primitiveType, osList, this.proxyState.getRealm$realm());
        } catch (IllegalArgumentException e) {
            checkFieldType(fieldName, columnIndex, realmType);
            throw e;
        }
    }

    private <E> RealmFieldType classToRealmType(Class<E> primitiveType) {
        if (primitiveType.equals(Integer.class) || primitiveType.equals(Long.class) || primitiveType.equals(Short.class) || primitiveType.equals(Byte.class)) {
            return RealmFieldType.INTEGER_LIST;
        }
        if (primitiveType.equals(Boolean.class)) {
            return RealmFieldType.BOOLEAN_LIST;
        }
        if (primitiveType.equals(String.class)) {
            return RealmFieldType.STRING_LIST;
        }
        if (primitiveType.equals(byte[].class)) {
            return RealmFieldType.BINARY_LIST;
        }
        if (primitiveType.equals(Date.class)) {
            return RealmFieldType.DATE_LIST;
        }
        if (primitiveType.equals(Float.class)) {
            return RealmFieldType.FLOAT_LIST;
        }
        if (primitiveType.equals(Double.class)) {
            return RealmFieldType.DOUBLE_LIST;
        }
        throw new IllegalArgumentException("Unsupported element type. Only primitive types supported. Yours was: " + primitiveType);
    }

    public boolean isNull(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        RealmFieldType type = this.proxyState.getRow$realm().getColumnType(columnIndex);
        switch (type) {
            case BOOLEAN:
            case INTEGER:
            case FLOAT:
            case DOUBLE:
            case STRING:
            case BINARY:
            case DATE:
                return this.proxyState.getRow$realm().isNull(columnIndex);
            case OBJECT:
                return this.proxyState.getRow$realm().isNullLink(columnIndex);
            default:
                return false;
        }
    }

    public boolean hasField(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (fieldName == null || fieldName.isEmpty()) {
            return false;
        }
        return this.proxyState.getRow$realm().hasColumn(fieldName);
    }

    public String[] getFieldNames() {
        this.proxyState.getRealm$realm().checkIfValid();
        String[] keys = new String[(int) this.proxyState.getRow$realm().getColumnCount()];
        for (int i = 0; i < keys.length; i++) {
            keys[i] = this.proxyState.getRow$realm().getColumnName(i);
        }
        return keys;
    }

    public void set(String fieldName, Object value) {
        this.proxyState.getRealm$realm().checkIfValid();
        boolean isString = value instanceof String;
        String strValue = isString ? (String) value : null;
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        RealmFieldType type = this.proxyState.getRow$realm().getColumnType(columnIndex);
        if (isString && type != RealmFieldType.STRING) {
            int i = AnonymousClass1.$SwitchMap$io$realm$RealmFieldType[type.ordinal()];
            if (i != 7) {
                switch (i) {
                    case 1:
                        value = Boolean.valueOf(Boolean.parseBoolean(strValue));
                        break;
                    case 2:
                        value = Long.valueOf(Long.parseLong(strValue));
                        break;
                    case 3:
                        value = Float.valueOf(Float.parseFloat(strValue));
                        break;
                    case 4:
                        value = Double.valueOf(Double.parseDouble(strValue));
                        break;
                    default:
                        throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", fieldName, value));
                }
            } else {
                value = JsonUtils.stringToDate(strValue);
            }
        }
        if (value == null) {
            setNull(fieldName);
        } else {
            setValue(fieldName, value);
        }
    }

    private void setValue(String fieldName, Object value) {
        Class<?> valueClass = value.getClass();
        if (valueClass == Boolean.class) {
            setBoolean(fieldName, ((Boolean) value).booleanValue());
            return;
        }
        if (valueClass == Short.class) {
            setShort(fieldName, ((Short) value).shortValue());
            return;
        }
        if (valueClass == Integer.class) {
            setInt(fieldName, ((Integer) value).intValue());
            return;
        }
        if (valueClass == Long.class) {
            setLong(fieldName, ((Long) value).longValue());
            return;
        }
        if (valueClass == Byte.class) {
            setByte(fieldName, ((Byte) value).byteValue());
            return;
        }
        if (valueClass == Float.class) {
            setFloat(fieldName, ((Float) value).floatValue());
            return;
        }
        if (valueClass == Double.class) {
            setDouble(fieldName, ((Double) value).doubleValue());
            return;
        }
        if (valueClass == String.class) {
            setString(fieldName, (String) value);
            return;
        }
        if (value instanceof Date) {
            setDate(fieldName, (Date) value);
            return;
        }
        if (value instanceof byte[]) {
            setBlob(fieldName, (byte[]) value);
            return;
        }
        if (valueClass == DynamicRealmObject.class) {
            setObject(fieldName, (DynamicRealmObject) value);
            return;
        }
        if (valueClass == RealmList.class) {
            RealmList<?> list = (RealmList) value;
            setList(fieldName, list);
        } else {
            throw new IllegalArgumentException("Value is of an type not supported: " + value.getClass());
        }
    }

    public void setBoolean(String fieldName, boolean value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setBoolean(columnIndex, value);
    }

    public void setShort(String fieldName, short value) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(fieldName);
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setLong(columnIndex, value);
    }

    public void setInt(String fieldName, int value) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(fieldName);
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setLong(columnIndex, value);
    }

    public void setLong(String fieldName, long value) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(fieldName);
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setLong(columnIndex, value);
    }

    public void setByte(String fieldName, byte value) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(fieldName);
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setLong(columnIndex, value);
    }

    public void setFloat(String fieldName, float value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setFloat(columnIndex, value);
    }

    public void setDouble(String fieldName, double value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setDouble(columnIndex, value);
    }

    public void setString(String fieldName, @Nullable String value) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(fieldName);
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setString(columnIndex, value);
    }

    public void setBlob(String fieldName, @Nullable byte[] value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        this.proxyState.getRow$realm().setBinaryByteArray(columnIndex, value);
    }

    public void setDate(String fieldName, @Nullable Date value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        if (value == null) {
            this.proxyState.getRow$realm().setNull(columnIndex);
        } else {
            this.proxyState.getRow$realm().setDate(columnIndex, value);
        }
    }

    public void setObject(String fieldName, @Nullable DynamicRealmObject value) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        if (value == null) {
            this.proxyState.getRow$realm().nullifyLink(columnIndex);
            return;
        }
        if (value.proxyState.getRealm$realm() == null || value.proxyState.getRow$realm() == null) {
            throw new IllegalArgumentException("Cannot link to objects that are not part of the Realm.");
        }
        if (this.proxyState.getRealm$realm() != value.proxyState.getRealm$realm()) {
            throw new IllegalArgumentException("Cannot add an object from another Realm instance.");
        }
        Table table = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex);
        Table inputTable = value.proxyState.getRow$realm().getTable();
        if (!table.hasSameSchema(inputTable)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was %s, expected %s", inputTable.getName(), table.getName()));
        }
        this.proxyState.getRow$realm().setLink(columnIndex, value.proxyState.getRow$realm().getIndex());
    }

    public <E> void setList(String fieldName, RealmList<E> list) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (list == null) {
            throw new IllegalArgumentException("Non-null 'list' required");
        }
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
        switch (columnType) {
            case LIST:
                if (!list.isEmpty()) {
                    E element = list.first();
                    if (!(element instanceof DynamicRealmObject) && RealmModel.class.isAssignableFrom(element.getClass())) {
                        throw new IllegalArgumentException("RealmList must contain `DynamicRealmObject's, not Java model classes.");
                    }
                }
                setModelList(fieldName, list);
                return;
            case LINKING_OBJECTS:
            default:
                throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", fieldName, columnType));
            case INTEGER_LIST:
            case BOOLEAN_LIST:
            case STRING_LIST:
            case BINARY_LIST:
            case DATE_LIST:
            case FLOAT_LIST:
            case DOUBLE_LIST:
                setValueList(fieldName, list, columnType);
                return;
        }
    }

    private void setModelList(String fieldName, RealmList<DynamicRealmObject> list) {
        boolean typeValidated;
        DynamicRealmObject dynamicRealmObject = this;
        long columnIndex = dynamicRealmObject.proxyState.getRow$realm().getColumnIndex(fieldName);
        OsList osList = dynamicRealmObject.proxyState.getRow$realm().getModelList(columnIndex);
        Table linkTargetTable = osList.getTargetTable();
        String linkTargetTableName = linkTargetTable.getClassName();
        if (list.className == null && list.clazz == null) {
            typeValidated = false;
        } else {
            String listType = list.className != null ? list.className : dynamicRealmObject.proxyState.getRealm$realm().getSchema().getTable(list.clazz).getClassName();
            if (!linkTargetTableName.equals(listType)) {
                throw new IllegalArgumentException(String.format(Locale.US, "The elements in the list are not the proper type. Was %s expected %s.", listType, linkTargetTableName));
            }
            typeValidated = true;
        }
        int listLength = list.size();
        long[] indices = new long[listLength];
        int i = 0;
        while (i < listLength) {
            RealmObjectProxy obj = list.get(i);
            if (obj.realmGet$proxyState().getRealm$realm() != dynamicRealmObject.proxyState.getRealm$realm()) {
                throw new IllegalArgumentException("Each element in 'list' must belong to the same Realm instance.");
            }
            if (!typeValidated && !linkTargetTable.hasSameSchema(obj.realmGet$proxyState().getRow$realm().getTable())) {
                throw new IllegalArgumentException(String.format(Locale.US, "Element at index %d is not the proper type. Was '%s' expected '%s'.", Integer.valueOf(i), obj.realmGet$proxyState().getRow$realm().getTable().getClassName(), linkTargetTableName));
            }
            indices[i] = obj.realmGet$proxyState().getRow$realm().getIndex();
            i++;
            dynamicRealmObject = this;
        }
        osList.removeAll();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < listLength) {
                osList.addRow(indices[i3]);
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E> void setValueList(String fieldName, RealmList<E> list, RealmFieldType primitiveType) {
        GenericDeclaration genericDeclaration;
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        OsList osList = this.proxyState.getRow$realm().getValueList(columnIndex, primitiveType);
        switch (primitiveType) {
            case INTEGER_LIST:
                genericDeclaration = Long.class;
                break;
            case BOOLEAN_LIST:
                genericDeclaration = Boolean.class;
                break;
            case STRING_LIST:
                genericDeclaration = String.class;
                break;
            case BINARY_LIST:
                genericDeclaration = byte[].class;
                break;
            case DATE_LIST:
                genericDeclaration = Date.class;
                break;
            case FLOAT_LIST:
                genericDeclaration = Float.class;
                break;
            case DOUBLE_LIST:
                genericDeclaration = Double.class;
                break;
            default:
                throw new IllegalArgumentException("Unsupported type: " + primitiveType);
        }
        ManagedListOperator<?> operator = getOperator(this.proxyState.getRealm$realm(), osList, primitiveType, genericDeclaration);
        if (list.isManaged() && osList.size() == list.size()) {
            int size = list.size();
            Iterator<E> it = list.iterator();
            for (int i = 0; i < size; i++) {
                Object value = it.next();
                operator.set(i, value);
            }
            return;
        }
        osList.removeAll();
        for (Object value2 : list) {
            operator.append(value2);
        }
    }

    private <E> ManagedListOperator<E> getOperator(BaseRealm realm, OsList osList, RealmFieldType valueListType, Class<E> valueClass) {
        if (valueListType == RealmFieldType.STRING_LIST) {
            return new StringListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.INTEGER_LIST) {
            return new LongListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.BOOLEAN_LIST) {
            return new BooleanListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.BINARY_LIST) {
            return new BinaryListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.DOUBLE_LIST) {
            return new DoubleListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.FLOAT_LIST) {
            return new FloatListOperator(realm, osList, valueClass);
        }
        if (valueListType == RealmFieldType.DATE_LIST) {
            return new DateListOperator(realm, osList, valueClass);
        }
        throw new IllegalArgumentException("Unexpected list type: " + valueListType.name());
    }

    public void setNull(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        RealmFieldType type = this.proxyState.getRow$realm().getColumnType(columnIndex);
        if (type == RealmFieldType.OBJECT) {
            this.proxyState.getRow$realm().nullifyLink(columnIndex);
        } else {
            checkIsPrimaryKey(fieldName);
            this.proxyState.getRow$realm().setNull(columnIndex);
        }
    }

    public String getType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getTable().getClassName();
    }

    public RealmFieldType getFieldType(String fieldName) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(fieldName);
        return this.proxyState.getRow$realm().getColumnType(columnIndex);
    }

    private void checkFieldType(String fieldName, long columnIndex, RealmFieldType expectedType) {
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
        if (columnType != expectedType) {
            String expectedIndefiniteVowel = "";
            if (expectedType == RealmFieldType.INTEGER || expectedType == RealmFieldType.OBJECT) {
                expectedIndefiniteVowel = "n";
            }
            String columnTypeIndefiniteVowel = "";
            if (columnType == RealmFieldType.INTEGER || columnType == RealmFieldType.OBJECT) {
                columnTypeIndefiniteVowel = "n";
            }
            throw new IllegalArgumentException(String.format(Locale.US, "'%s' is not a%s '%s', but a%s '%s'.", fieldName, expectedIndefiniteVowel, expectedType, columnTypeIndefiniteVowel, columnType));
        }
    }

    public int hashCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        String realmName = this.proxyState.getRealm$realm().getPath();
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        long rowIndex = this.proxyState.getRow$realm().getIndex();
        int result = (17 * 31) + (realmName != null ? realmName.hashCode() : 0);
        return (((result * 31) + (tableName != null ? tableName.hashCode() : 0)) * 31) + ((int) ((rowIndex >>> 32) ^ rowIndex));
    }

    public boolean equals(Object o) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        DynamicRealmObject other = (DynamicRealmObject) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = other.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = other.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName == null : tableName.equals(otherTableName)) {
            return this.proxyState.getRow$realm().getIndex() == other.proxyState.getRow$realm().getIndex();
        }
        return false;
    }

    public String toString() {
        String className;
        this.proxyState.getRealm$realm().checkIfValid();
        if (!this.proxyState.getRow$realm().isAttached()) {
            return "Invalid object";
        }
        String className2 = this.proxyState.getRow$realm().getTable().getClassName();
        StringBuilder sb = new StringBuilder(className2 + " = dynamic[");
        String[] fields = getFieldNames();
        int length = fields.length;
        char c = 0;
        int i = 0;
        while (i < length) {
            String field = fields[i];
            long columnIndex = this.proxyState.getRow$realm().getColumnIndex(field);
            RealmFieldType type = this.proxyState.getRow$realm().getColumnType(columnIndex);
            sb.append("{");
            sb.append(field);
            sb.append(":");
            switch (type) {
                case BOOLEAN:
                    sb.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnIndex)));
                    break;
                case INTEGER:
                    sb.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Long.valueOf(this.proxyState.getRow$realm().getLong(columnIndex)));
                    break;
                case FLOAT:
                    sb.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Float.valueOf(this.proxyState.getRow$realm().getFloat(columnIndex)));
                    break;
                case DOUBLE:
                    sb.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : Double.valueOf(this.proxyState.getRow$realm().getDouble(columnIndex)));
                    break;
                case STRING:
                    sb.append(this.proxyState.getRow$realm().getString(columnIndex));
                    break;
                case BINARY:
                    sb.append(Arrays.toString(this.proxyState.getRow$realm().getBinaryByteArray(columnIndex)));
                    break;
                case DATE:
                    sb.append(this.proxyState.getRow$realm().isNull(columnIndex) ? "null" : this.proxyState.getRow$realm().getDate(columnIndex));
                    break;
                case OBJECT:
                    if (this.proxyState.getRow$realm().isNullLink(columnIndex)) {
                        className = "null";
                    } else {
                        className = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName();
                    }
                    sb.append(className);
                    break;
                case LIST:
                    String targetClassName = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName();
                    Locale locale = Locale.US;
                    Object[] objArr = new Object[2];
                    objArr[c] = targetClassName;
                    objArr[1] = Long.valueOf(this.proxyState.getRow$realm().getModelList(columnIndex).size());
                    sb.append(String.format(locale, "RealmList<%s>[%s]", objArr));
                    break;
                case LINKING_OBJECTS:
                default:
                    sb.append("?");
                    break;
                case INTEGER_LIST:
                    Locale locale2 = Locale.US;
                    Object[] objArr2 = new Object[1];
                    objArr2[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale2, "RealmList<Long>[%s]", objArr2));
                    break;
                case BOOLEAN_LIST:
                    Locale locale3 = Locale.US;
                    Object[] objArr3 = new Object[1];
                    objArr3[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale3, "RealmList<Boolean>[%s]", objArr3));
                    break;
                case STRING_LIST:
                    Locale locale4 = Locale.US;
                    Object[] objArr4 = new Object[1];
                    objArr4[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale4, "RealmList<String>[%s]", objArr4));
                    break;
                case BINARY_LIST:
                    Locale locale5 = Locale.US;
                    Object[] objArr5 = new Object[1];
                    objArr5[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale5, "RealmList<byte[]>[%s]", objArr5));
                    break;
                case DATE_LIST:
                    Locale locale6 = Locale.US;
                    Object[] objArr6 = new Object[1];
                    objArr6[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale6, "RealmList<Date>[%s]", objArr6));
                    break;
                case FLOAT_LIST:
                    Locale locale7 = Locale.US;
                    Object[] objArr7 = new Object[1];
                    objArr7[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale7, "RealmList<Float>[%s]", objArr7));
                    break;
                case DOUBLE_LIST:
                    Locale locale8 = Locale.US;
                    Object[] objArr8 = new Object[1];
                    objArr8[c] = Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, type).size());
                    sb.append(String.format(locale8, "RealmList<Double>[%s]", objArr8));
                    break;
            }
            sb.append("},");
            i++;
            c = 0;
        }
        sb.replace(sb.length() - 1, sb.length(), "");
        sb.append("]");
        return sb.toString();
    }

    public RealmResults<DynamicRealmObject> linkingObjects(String srcClassName, String srcFieldName) {
        DynamicRealm realm = (DynamicRealm) this.proxyState.getRealm$realm();
        realm.checkIfValid();
        this.proxyState.getRow$realm().checkIfAttached();
        RealmSchema schema = realm.getSchema();
        RealmObjectSchema realmObjectSchema = schema.get(srcClassName);
        if (realmObjectSchema == null) {
            throw new IllegalArgumentException("Class not found: " + srcClassName);
        }
        if (srcFieldName == null) {
            throw new IllegalArgumentException("Non-null 'srcFieldName' required.");
        }
        if (srcFieldName.contains(".")) {
            throw new IllegalArgumentException(MSG_LINK_QUERY_NOT_SUPPORTED);
        }
        RealmFieldType fieldType = realmObjectSchema.getFieldType(srcFieldName);
        if (fieldType != RealmFieldType.OBJECT && fieldType != RealmFieldType.LIST) {
            throw new IllegalArgumentException(String.format(Locale.US, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s.", fieldType.name(), RealmFieldType.class.getSimpleName(), RealmFieldType.OBJECT.name(), RealmFieldType.LIST.name()));
        }
        return RealmResults.createDynamicBacklinkResults(realm, (CheckedRow) this.proxyState.getRow$realm(), realmObjectSchema.getTable(), srcFieldName);
    }

    public DynamicRealm getDynamicRealm() {
        BaseRealm realm = realmGet$proxyState().getRealm$realm();
        realm.checkIfValid();
        if (!isValid()) {
            throw new IllegalStateException("the object is already deleted.");
        }
        return (DynamicRealm) realm;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState realmGet$proxyState() {
        return this.proxyState;
    }

    private void checkIsPrimaryKey(String fieldName) {
        RealmObjectSchema objectSchema = this.proxyState.getRealm$realm().getSchema().getSchemaForClass(getType());
        if (objectSchema.hasPrimaryKey() && objectSchema.getPrimaryKey().equals(fieldName)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Primary key field '%s' cannot be changed after object was created.", fieldName));
        }
    }
}

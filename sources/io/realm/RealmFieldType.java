package io.realm;

import io.realm.internal.Keep;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public enum RealmFieldType {
    INTEGER(0),
    BOOLEAN(1),
    STRING(2),
    BINARY(4),
    DATE(8),
    FLOAT(9),
    DOUBLE(10),
    OBJECT(12),
    LIST(13),
    LINKING_OBJECTS(14),
    INTEGER_LIST(128),
    BOOLEAN_LIST(129),
    STRING_LIST(130),
    BINARY_LIST(132),
    DATE_LIST(136),
    FLOAT_LIST(137),
    DOUBLE_LIST(138);

    private static final RealmFieldType[] basicTypes = new RealmFieldType[15];
    private static final RealmFieldType[] listTypes = new RealmFieldType[15];
    private final int nativeValue;

    static {
        for (RealmFieldType columnType : values()) {
            int nativeValue = columnType.nativeValue;
            if (nativeValue < 128) {
                basicTypes[nativeValue] = columnType;
            } else {
                listTypes[nativeValue - 128] = columnType;
            }
        }
    }

    RealmFieldType(int nativeValue) {
        this.nativeValue = nativeValue;
    }

    public int getNativeValue() {
        return this.nativeValue;
    }

    public boolean isValid(Object obj) {
        int i = this.nativeValue;
        if (i == 4) {
            return (obj instanceof byte[]) || (obj instanceof ByteBuffer);
        }
        if (i == 132) {
            return false;
        }
        switch (i) {
            case 0:
                return (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte);
            case 1:
                return obj instanceof Boolean;
            case 2:
                return obj instanceof String;
            default:
                switch (i) {
                    case 8:
                        return obj instanceof Date;
                    case 9:
                        return obj instanceof Float;
                    case 10:
                        return obj instanceof Double;
                    default:
                        switch (i) {
                            case 12:
                                return false;
                            case 13:
                                return false;
                            case 14:
                                return false;
                            default:
                                switch (i) {
                                    case 128:
                                        return false;
                                    case 129:
                                        return false;
                                    case 130:
                                        return false;
                                    default:
                                        switch (i) {
                                            case 136:
                                                return false;
                                            case 137:
                                                return false;
                                            case 138:
                                                return false;
                                            default:
                                                throw new RuntimeException("Unsupported Realm type:  " + this);
                                        }
                                }
                        }
                }
        }
    }

    public static RealmFieldType fromNativeValue(int value) {
        int elementValue;
        RealmFieldType e;
        RealmFieldType e2;
        if (value >= 0 && value < basicTypes.length && (e2 = basicTypes[value]) != null) {
            return e2;
        }
        if (128 <= value && value - 128 < listTypes.length && (e = listTypes[elementValue]) != null) {
            return e;
        }
        throw new IllegalArgumentException("Invalid native Realm type: " + value);
    }
}

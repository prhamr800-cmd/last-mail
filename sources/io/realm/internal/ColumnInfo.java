package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ColumnInfo {
    private final Map<String, ColumnDetails> indicesFromColumnNames;
    private final Map<String, ColumnDetails> indicesFromJavaFieldNames;
    private final boolean mutable;

    protected abstract ColumnInfo copy(boolean z);

    protected abstract void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    public static final class ColumnDetails {
        public final long columnIndex;
        public final RealmFieldType columnType;
        public final String linkedClassName;

        private ColumnDetails(long columnIndex, RealmFieldType columnType, @Nullable String linkedClassName) {
            this.columnIndex = columnIndex;
            this.columnType = columnType;
            this.linkedClassName = linkedClassName;
        }

        ColumnDetails(Property property) {
            this(property.getColumnIndex(), property.getType(), property.getLinkedObjectName());
        }

        public String toString() {
            return "ColumnDetails[" + this.columnIndex + ", " + this.columnType + ", " + this.linkedClassName + "]";
        }
    }

    protected ColumnInfo(int mapSize) {
        this(mapSize, true);
    }

    protected ColumnInfo(@Nullable ColumnInfo src, boolean mutable) {
        this(src == null ? 0 : src.indicesFromJavaFieldNames.size(), mutable);
        if (src != null) {
            this.indicesFromJavaFieldNames.putAll(src.indicesFromJavaFieldNames);
        }
    }

    private ColumnInfo(int mapSize, boolean mutable) {
        this.indicesFromJavaFieldNames = new HashMap(mapSize);
        this.indicesFromColumnNames = new HashMap(mapSize);
        this.mutable = mutable;
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public long getColumnIndex(String javaFieldName) {
        ColumnDetails details = this.indicesFromJavaFieldNames.get(javaFieldName);
        if (details == null) {
            return -1L;
        }
        return details.columnIndex;
    }

    @Nullable
    public ColumnDetails getColumnDetails(String javaFieldName) {
        return this.indicesFromJavaFieldNames.get(javaFieldName);
    }

    public void copyFrom(ColumnInfo src) {
        if (!this.mutable) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        }
        if (src == null) {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        }
        this.indicesFromJavaFieldNames.clear();
        this.indicesFromJavaFieldNames.putAll(src.indicesFromJavaFieldNames);
        this.indicesFromColumnNames.clear();
        this.indicesFromColumnNames.putAll(src.indicesFromColumnNames);
        copy(src, this);
    }

    public String toString() {
        StringBuilder buf = new StringBuilder("ColumnInfo[");
        buf.append("mutable=" + this.mutable);
        buf.append(",");
        if (this.indicesFromJavaFieldNames != null) {
            buf.append("JavaFieldNames=[");
            boolean commaNeeded = false;
            for (Map.Entry<String, ColumnDetails> entry : this.indicesFromJavaFieldNames.entrySet()) {
                if (commaNeeded) {
                    buf.append(",");
                }
                buf.append(entry.getKey());
                buf.append("->");
                buf.append(entry.getValue());
                commaNeeded = true;
            }
            buf.append("]");
        }
        if (this.indicesFromColumnNames != null) {
            buf.append(", InternalFieldNames=[");
            boolean commaNeeded2 = false;
            for (Map.Entry<String, ColumnDetails> entry2 : this.indicesFromColumnNames.entrySet()) {
                if (commaNeeded2) {
                    buf.append(",");
                }
                buf.append(entry2.getKey());
                buf.append("->");
                buf.append(entry2.getValue());
                commaNeeded2 = true;
            }
            buf.append("]");
        }
        buf.append("]");
        return buf.toString();
    }

    protected final long addColumnDetails(String javaFieldName, String internalColumnName, OsObjectSchemaInfo objectSchemaInfo) {
        Property property = objectSchemaInfo.getProperty(internalColumnName);
        ColumnDetails cd = new ColumnDetails(property);
        this.indicesFromJavaFieldNames.put(javaFieldName, cd);
        this.indicesFromColumnNames.put(internalColumnName, cd);
        return property.getColumnIndex();
    }

    protected final void addBacklinkDetails(OsSchemaInfo schemaInfo, String javaFieldName, String sourceTableName, String sourceJavaFieldName) {
        long columnIndex = schemaInfo.getObjectSchemaInfo(sourceTableName).getProperty(sourceJavaFieldName).getColumnIndex();
        this.indicesFromJavaFieldNames.put(javaFieldName, new ColumnDetails(columnIndex, RealmFieldType.LINKING_OBJECTS, sourceTableName));
    }

    public Map<String, ColumnDetails> getIndicesMap() {
        return this.indicesFromJavaFieldNames;
    }
}

package io.realm.internal;

import io.realm.RealmFieldType;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsObjectSchemaInfo implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private long nativePtr;

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAddProperties(long j, long[] jArr, long[] jArr2);

    private static native long nativeCreateRealmObjectSchema(String str);

    private static native String nativeGetClassName(long j);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetPrimaryKeyProperty(long j);

    private static native long nativeGetProperty(long j, String str);

    public static class Builder {
        private final String className;
        private final long[] computedPropertyPtrArray;
        private final long[] persistedPropertyPtrArray;
        private int persistedPropertyPtrCurPos = 0;
        private int computedPropertyPtrCurPos = 0;

        public Builder(String className, int persistedPropertyCapacity, int computedPropertyCapacity) {
            this.className = className;
            this.persistedPropertyPtrArray = new long[persistedPropertyCapacity];
            this.computedPropertyPtrArray = new long[computedPropertyCapacity];
        }

        public Builder addPersistedProperty(String name, RealmFieldType type, boolean isPrimaryKey, boolean isIndexed, boolean isRequired) {
            long propertyPtr = Property.nativeCreatePersistedProperty(name, Property.convertFromRealmFieldType(type, isRequired), isPrimaryKey, isIndexed);
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = propertyPtr;
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public Builder addPersistedValueListProperty(String name, RealmFieldType type, boolean isRequired) {
            long propertyPtr = Property.nativeCreatePersistedProperty(name, Property.convertFromRealmFieldType(type, isRequired), false, false);
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = propertyPtr;
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public Builder addPersistedLinkProperty(String name, RealmFieldType type, String linkedClassName) {
            long propertyPtr = Property.nativeCreatePersistedLinkProperty(name, Property.convertFromRealmFieldType(type, false), linkedClassName);
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = propertyPtr;
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public Builder addComputedLinkProperty(String name, String sourceClass, String sourceClassName) {
            long propertyPtr = Property.nativeCreateComputedLinkProperty(name, sourceClass, sourceClassName);
            this.computedPropertyPtrArray[this.computedPropertyPtrCurPos] = propertyPtr;
            this.computedPropertyPtrCurPos++;
            return this;
        }

        public OsObjectSchemaInfo build() {
            if (this.persistedPropertyPtrCurPos == -1 || this.computedPropertyPtrCurPos == -1) {
                throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
            }
            OsObjectSchemaInfo info = new OsObjectSchemaInfo(this.className);
            OsObjectSchemaInfo.nativeAddProperties(info.nativePtr, this.persistedPropertyPtrArray, this.computedPropertyPtrArray);
            this.persistedPropertyPtrCurPos = -1;
            this.computedPropertyPtrCurPos = -1;
            return info;
        }
    }

    private OsObjectSchemaInfo(String className) {
        this(nativeCreateRealmObjectSchema(className));
    }

    OsObjectSchemaInfo(long nativePtr) {
        this.nativePtr = nativePtr;
        NativeContext.dummyContext.addReference(this);
    }

    public String getClassName() {
        return nativeGetClassName(this.nativePtr);
    }

    public Property getProperty(String propertyName) {
        return new Property(nativeGetProperty(this.nativePtr, propertyName));
    }

    @Nullable
    public Property getPrimaryKeyProperty() {
        long propertyPtr = nativeGetPrimaryKeyProperty(this.nativePtr);
        if (propertyPtr == 0) {
            return null;
        }
        return new Property(nativeGetPrimaryKeyProperty(this.nativePtr));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }
}

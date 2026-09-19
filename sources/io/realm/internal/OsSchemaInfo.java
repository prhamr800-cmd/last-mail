package io.realm.internal;

import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class OsSchemaInfo implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private long nativePtr;
    private final OsSharedRealm sharedRealm;

    private static native long nativeCreateFromList(long[] jArr);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetObjectSchemaInfo(long j, String str);

    public OsSchemaInfo(Collection<OsObjectSchemaInfo> objectSchemaInfoList) {
        this.nativePtr = nativeCreateFromList(convertObjectSchemaInfoListToNativePointerArray(objectSchemaInfoList));
        NativeContext.dummyContext.addReference(this);
        this.sharedRealm = null;
    }

    OsSchemaInfo(long nativePtr, OsSharedRealm sharedRealm) {
        this.nativePtr = nativePtr;
        this.sharedRealm = sharedRealm;
    }

    private static long[] convertObjectSchemaInfoListToNativePointerArray(Collection<OsObjectSchemaInfo> objectSchemaInfoList) {
        long[] schemaNativePointers = new long[objectSchemaInfoList.size()];
        int i = 0;
        for (OsObjectSchemaInfo info : objectSchemaInfoList) {
            schemaNativePointers[i] = info.getNativePtr();
            i++;
        }
        return schemaNativePointers;
    }

    public OsObjectSchemaInfo getObjectSchemaInfo(String className) {
        return new OsObjectSchemaInfo(nativeGetObjectSchemaInfo(this.nativePtr, className));
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

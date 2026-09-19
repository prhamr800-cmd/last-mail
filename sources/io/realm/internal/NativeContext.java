package io.realm.internal;

import java.lang.ref.ReferenceQueue;

/* JADX INFO: loaded from: classes2.dex */
public class NativeContext {
    private static final ReferenceQueue<NativeObject> referenceQueue = new ReferenceQueue<>();
    private static final Thread finalizingThread = new Thread(new FinalizerRunnable(referenceQueue));
    static final NativeContext dummyContext = new NativeContext();

    static {
        finalizingThread.setName("RealmFinalizingDaemon");
        finalizingThread.start();
    }

    void addReference(NativeObject referent) {
        new NativeObjectReference(this, referent, referenceQueue);
    }
}

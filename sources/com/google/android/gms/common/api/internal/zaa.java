package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.support.annotation.MainThread;
import android.support.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zaa extends ActivityLifecycleObserver {
    private final WeakReference<C0018zaa> zack;

    public zaa(Activity activity) {
        this(C0018zaa.zaa(activity));
    }

    @VisibleForTesting(otherwise = 2)
    private zaa(C0018zaa c0018zaa) {
        this.zack = new WeakReference<>(c0018zaa);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C0018zaa c0018zaa = this.zack.get();
        if (c0018zaa == null) {
            throw new IllegalStateException("The target activity has already been GC'd");
        }
        c0018zaa.zaa(runnable);
        return this;
    }

    /* JADX INFO: renamed from: com.google.android.gms.common.api.internal.zaa$zaa, reason: collision with other inner class name */
    @VisibleForTesting(otherwise = 2)
    static class C0018zaa extends LifecycleCallback {
        private List<Runnable> zacl;

        /* JADX INFO: Access modifiers changed from: private */
        public static C0018zaa zaa(Activity activity) {
            C0018zaa c0018zaa;
            synchronized (activity) {
                LifecycleFragment fragment = getFragment(activity);
                c0018zaa = (C0018zaa) fragment.getCallbackOrNull("LifecycleObserverOnStop", C0018zaa.class);
                if (c0018zaa == null) {
                    c0018zaa = new C0018zaa(fragment);
                }
            }
            return c0018zaa;
        }

        private C0018zaa(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.zacl = new ArrayList();
            this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized void zaa(Runnable runnable) {
            this.zacl.add(runnable);
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.zacl;
                this.zacl = new ArrayList();
            }
            Iterator<Runnable> it = list.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }
    }
}

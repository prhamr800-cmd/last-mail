package com.huxq17.download.android;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.huxq17.download.core.DownloadListener;
import com.huxq17.download.utils.LogUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ViewLifecycleHandler {
    public static void handleLifecycle(Lifecycle lifecycle, DownloadListener downloadListener) {
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.INITIALIZED)) {
            LogUtil.w(lifecycle + " is " + lifecycle.getCurrentState() + ", so disable " + downloadListener);
            downloadListener.disable();
            return;
        }
        lifecycle.addObserver(new DownloadListenerObserver(downloadListener, (AnonymousClass1) null));
    }

    public static void handleLifecycleForFragment(Fragment fragment, Lifecycle lifecycle, DownloadListener downloadListener) {
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.INITIALIZED)) {
            LogUtil.w(lifecycle + " is " + lifecycle.getCurrentState() + ", so disable " + downloadListener);
            downloadListener.disable();
            return;
        }
        AnonymousClass1 anonymousClass1 = null;
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            fragment.getViewLifecycleOwner().getLifecycle().addObserver(new DownloadListenerObserver(downloadListener, anonymousClass1));
        } else {
            lifecycle.addObserver(new DownloadListenerObserver(downloadListener, fragment, anonymousClass1));
        }
    }

    private static class DownloadListenerObserver implements LifecycleEventObserver {
        private DownloadListener downloadListener;
        private Fragment fragment;

        /* synthetic */ DownloadListenerObserver(DownloadListener x0, Fragment x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        /* synthetic */ DownloadListenerObserver(DownloadListener x0, AnonymousClass1 x1) {
            this(x0);
        }

        private DownloadListenerObserver(DownloadListener downloadListener) {
            this.downloadListener = downloadListener;
        }

        private DownloadListenerObserver(DownloadListener downloadListener, Fragment fragment) {
            this.downloadListener = downloadListener;
            this.fragment = fragment;
        }

        private void onStart() {
            if (this.fragment != null) {
                this.fragment.getLifecycle().removeObserver(this);
                this.fragment.getViewLifecycleOwner().getLifecycle().addObserver(this);
                this.fragment = null;
            }
        }

        private void onDestroy() {
            this.downloadListener.disable();
        }

        public void onStateChanged(@NonNull LifecycleOwner source, @NonNull Lifecycle.Event event) {
            switch (AnonymousClass1.$SwitchMap$androidx$lifecycle$Lifecycle$Event[event.ordinal()]) {
                case 1:
                    onStart();
                    break;
                case 2:
                    onDestroy();
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: com.huxq17.download.android.ViewLifecycleHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$Event = new int[Lifecycle.Event.values().length];

        static {
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$Event[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$Event[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }
}

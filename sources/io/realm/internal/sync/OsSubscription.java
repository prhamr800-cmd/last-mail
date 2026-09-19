package io.realm.internal.sync;

import io.realm.RealmChangeListener;
import io.realm.internal.KeepMember;
import io.realm.internal.NativeObject;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsResults;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsSubscription implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    protected final ObserverPairList<SubscriptionObserverPair> observerPairs = new ObserverPairList<>();

    private static native long nativeCreate(long j, String str);

    private static native Object nativeGetError(long j);

    private static native long nativeGetFinalizerPtr();

    private static native int nativeGetState(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    public enum SubscriptionState {
        ERROR(-1),
        CREATING(2),
        PENDING(0),
        COMPLETE(1),
        INVALIDATED(3);

        private final int val;

        SubscriptionState(int val) {
            this.val = val;
        }

        public static SubscriptionState fromInternalValue(int val) {
            for (SubscriptionState subscriptionState : values()) {
                if (subscriptionState.val == val) {
                    return subscriptionState;
                }
            }
            throw new IllegalArgumentException("Unknown value: " + val);
        }
    }

    private static class SubscriptionObserverPair extends ObserverPairList.ObserverPair<OsSubscription, RealmChangeListener<OsSubscription>> {
        public SubscriptionObserverPair(OsSubscription observer, RealmChangeListener<OsSubscription> listener) {
            super(observer, listener);
        }

        public void onChange(OsSubscription observer) {
            ((RealmChangeListener) this.listener).onChange(observer);
        }
    }

    private static class Callback implements ObserverPairList.Callback<SubscriptionObserverPair> {
        private Callback() {
        }

        @Override // io.realm.internal.ObserverPairList.Callback
        public void onCalled(SubscriptionObserverPair pair, Object observer) {
            pair.onChange((OsSubscription) observer);
        }
    }

    public OsSubscription(OsResults results, String subscriptionName) {
        this.nativePtr = nativeCreate(results.getNativePtr(), subscriptionName);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public SubscriptionState getState() {
        return SubscriptionState.fromInternalValue(nativeGetState(this.nativePtr));
    }

    @Nullable
    public Throwable getError() {
        return (Throwable) nativeGetError(this.nativePtr);
    }

    public void addChangeListener(RealmChangeListener<OsSubscription> listener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new SubscriptionObserverPair(this, listener));
    }

    public void removeChangeListener(RealmChangeListener<OsSubscription> listener) {
        this.observerPairs.remove(this, listener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    @KeepMember
    private void notifyChangeListeners() {
        this.observerPairs.foreach(new Callback());
    }
}

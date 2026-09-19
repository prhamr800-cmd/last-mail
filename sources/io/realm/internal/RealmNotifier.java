package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObserverPairList;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public abstract class RealmNotifier implements Closeable {
    private OsSharedRealm sharedRealm;
    private ObserverPairList<RealmObserverPair> realmObserverPairs = new ObserverPairList<>();
    private final ObserverPairList.Callback<RealmObserverPair> onChangeCallBack = new ObserverPairList.Callback<RealmObserverPair>() { // from class: io.realm.internal.RealmNotifier.1
        @Override // io.realm.internal.ObserverPairList.Callback
        public void onCalled(RealmObserverPair pair, Object observer) {
            if (RealmNotifier.this.sharedRealm != null && !RealmNotifier.this.sharedRealm.isClosed()) {
                pair.onChange(observer);
            }
        }
    };
    private List<Runnable> transactionCallbacks = new ArrayList();
    private List<Runnable> startSendingNotificationsCallbacks = new ArrayList();
    private List<Runnable> finishedSendingNotificationsCallbacks = new ArrayList();

    public abstract boolean post(Runnable runnable);

    private static class RealmObserverPair<T> extends ObserverPairList.ObserverPair<T, RealmChangeListener<T>> {
        public RealmObserverPair(T observer, RealmChangeListener<T> listener) {
            super(observer, listener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onChange(T observer) {
            if (observer != null) {
                ((RealmChangeListener) this.listener).onChange(observer);
            }
        }
    }

    protected RealmNotifier(@Nullable OsSharedRealm sharedRealm) {
        this.sharedRealm = sharedRealm;
    }

    void didChange() {
        this.realmObserverPairs.foreach(this.onChangeCallBack);
        if (!this.transactionCallbacks.isEmpty()) {
            List<Runnable> callbacks = this.transactionCallbacks;
            this.transactionCallbacks = new ArrayList();
            for (Runnable runnable : callbacks) {
                runnable.run();
            }
        }
    }

    void beforeNotify() {
        this.sharedRealm.invalidateIterators();
    }

    void willSendNotifications() {
        for (int i = 0; i < this.startSendingNotificationsCallbacks.size(); i++) {
            this.startSendingNotificationsCallbacks.get(i).run();
        }
    }

    void didSendNotifications() {
        for (int i = 0; i < this.startSendingNotificationsCallbacks.size(); i++) {
            this.finishedSendingNotificationsCallbacks.get(i).run();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        removeAllChangeListeners();
        this.startSendingNotificationsCallbacks.clear();
        this.finishedSendingNotificationsCallbacks.clear();
    }

    public <T> void addChangeListener(T observer, RealmChangeListener<T> realmChangeListener) {
        RealmObserverPair observerPair = new RealmObserverPair(observer, realmChangeListener);
        this.realmObserverPairs.add(observerPair);
    }

    public <E> void removeChangeListener(E observer, RealmChangeListener<E> realmChangeListener) {
        this.realmObserverPairs.remove(observer, realmChangeListener);
    }

    public <E> void removeChangeListeners(E observer) {
        this.realmObserverPairs.removeByObserver(observer);
    }

    private void removeAllChangeListeners() {
        this.realmObserverPairs.clear();
    }

    public void addTransactionCallback(Runnable runnable) {
        this.transactionCallbacks.add(runnable);
    }

    public int getListenersListSize() {
        return this.realmObserverPairs.size();
    }

    public void addBeginSendingNotificationsCallback(Runnable runnable) {
        this.startSendingNotificationsCallbacks.add(runnable);
    }

    public void addFinishedSendingNotificationsCallback(Runnable runnable) {
        this.finishedSendingNotificationsCallbacks.add(runnable);
    }
}

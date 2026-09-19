package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
interface ObservableCollection {
    void notifyChangeListeners(long j);

    public static class CollectionObserverPair<T> extends ObserverPairList.ObserverPair<T, Object> {
        public CollectionObserverPair(T observer, Object listener) {
            super(observer, listener);
        }

        public void onChange(T observer, OsCollectionChangeSet changes) {
            if (this.listener instanceof OrderedRealmCollectionChangeListener) {
                ((OrderedRealmCollectionChangeListener) this.listener).onChange(observer, new StatefulCollectionChangeSet(changes));
            } else {
                if (this.listener instanceof RealmChangeListener) {
                    ((RealmChangeListener) this.listener).onChange(observer);
                    return;
                }
                throw new RuntimeException("Unsupported listener type: " + this.listener);
            }
        }
    }

    public static class RealmChangeListenerWrapper<T> implements OrderedRealmCollectionChangeListener<T> {
        private final RealmChangeListener<T> listener;

        RealmChangeListenerWrapper(RealmChangeListener<T> listener) {
            this.listener = listener;
        }

        @Override // io.realm.OrderedRealmCollectionChangeListener
        public void onChange(T collection, @Nullable OrderedCollectionChangeSet changes) {
            this.listener.onChange(collection);
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.listener == ((RealmChangeListenerWrapper) obj).listener;
        }

        public int hashCode() {
            return this.listener.hashCode();
        }
    }

    public static class Callback implements ObserverPairList.Callback<CollectionObserverPair> {
        private final OsCollectionChangeSet changeSet;

        Callback(OsCollectionChangeSet changeSet) {
            this.changeSet = changeSet;
        }

        @Override // io.realm.internal.ObserverPairList.Callback
        public void onCalled(CollectionObserverPair pair, Object observer) {
            pair.onChange(observer, this.changeSet);
        }
    }
}

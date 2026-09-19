package io.realm.internal;

import io.realm.internal.ObserverPairList.ObserverPair;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ObserverPairList<T extends ObserverPair> {
    private List<T> pairs = new CopyOnWriteArrayList();
    private boolean cleared = false;

    public interface Callback<T extends ObserverPair> {
        void onCalled(T t, Object obj);
    }

    public static abstract class ObserverPair<T, S> {
        protected final S listener;
        final WeakReference<T> observerRef;
        boolean removed = false;

        public ObserverPair(T observer, S listener) {
            this.listener = listener;
            this.observerRef = new WeakReference<>(observer);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ObserverPair)) {
                return false;
            }
            ObserverPair anotherPair = (ObserverPair) obj;
            if (this.listener.equals(anotherPair.listener) && this.observerRef.get() == anotherPair.observerRef.get()) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            T observer = this.observerRef.get();
            int result = (17 * 31) + (observer != null ? observer.hashCode() : 0);
            return (result * 31) + (this.listener != null ? this.listener.hashCode() : 0);
        }
    }

    public void foreach(Callback<T> callback) {
        for (T pair : this.pairs) {
            if (!this.cleared) {
                Object observer = pair.observerRef.get();
                if (observer == null) {
                    this.pairs.remove(pair);
                } else if (!pair.removed) {
                    callback.onCalled(pair, observer);
                }
            } else {
                return;
            }
        }
    }

    public boolean isEmpty() {
        return this.pairs.isEmpty();
    }

    public void clear() {
        this.cleared = true;
        this.pairs.clear();
    }

    public void add(T pair) {
        if (!this.pairs.contains(pair)) {
            this.pairs.add(pair);
            pair.removed = false;
        }
        if (this.cleared) {
            this.cleared = false;
        }
    }

    public <S, U> void remove(S observer, U listener) {
        for (T pair : this.pairs) {
            if (observer == pair.observerRef.get() && listener.equals(pair.listener)) {
                pair.removed = true;
                this.pairs.remove(pair);
                return;
            }
        }
    }

    void removeByObserver(Object observer) {
        for (T pair : this.pairs) {
            Object object = pair.observerRef.get();
            if (object == null || object == observer) {
                pair.removed = true;
                this.pairs.remove(pair);
            }
        }
    }

    public int size() {
        return this.pairs.size();
    }
}

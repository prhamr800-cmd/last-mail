package rx.internal.operators;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Observable;
import rx.Subscriber;
import rx.subjects.ReplaySubject;
import rx.subjects.Subject;

/* JADX INFO: loaded from: classes3.dex */
public final class OnSubscribeCache<T> implements Observable.OnSubscribe<T> {
    static final AtomicIntegerFieldUpdater<OnSubscribeCache> SRC_SUBSCRIBED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(OnSubscribeCache.class, "sourceSubscribed");
    protected final Subject<? super T, ? extends T> cache;
    protected final Observable<? extends T> source;
    volatile int sourceSubscribed;

    public OnSubscribeCache(Observable<? extends T> source) {
        this(source, ReplaySubject.create());
    }

    public OnSubscribeCache(Observable<? extends T> source, int capacity) {
        this(source, ReplaySubject.create(capacity));
    }

    OnSubscribeCache(Observable<? extends T> source, Subject<? super T, ? extends T> cache) {
        this.source = source;
        this.cache = cache;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super T> s) {
        if (SRC_SUBSCRIBED_UPDATER.compareAndSet(this, 0, 1)) {
            this.source.subscribe(this.cache);
        }
        this.cache.unsafeSubscribe(s);
    }
}

package rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;

/* JADX INFO: loaded from: classes3.dex */
public final class OnSubscribeFromIterable<T> implements Observable.OnSubscribe<T> {
    final Iterable<? extends T> is;

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable == null) {
            throw new NullPointerException("iterable must not be null");
        }
        this.is = iterable;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super T> o) throws Throwable {
        Iterator<? extends T> it = this.is.iterator();
        if (!it.hasNext() && !o.isUnsubscribed()) {
            o.onCompleted();
        } else {
            o.setProducer(new IterableProducer(o, it));
        }
    }

    private static final class IterableProducer<T> implements Producer {
        private static final AtomicLongFieldUpdater<IterableProducer> REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(IterableProducer.class, "requested");
        private final Iterator<? extends T> it;
        private final Subscriber<? super T> o;
        private volatile long requested;

        private IterableProducer(Subscriber<? super T> o, Iterator<? extends T> it) {
            this.requested = 0L;
            this.o = o;
            this.it = it;
        }

        @Override // rx.Producer
        public void request(long j) {
            long j2;
            if (this.requested == LongCompanionObject.MAX_VALUE) {
                return;
            }
            if (j == LongCompanionObject.MAX_VALUE && REQUESTED_UPDATER.compareAndSet(this, 0L, LongCompanionObject.MAX_VALUE)) {
                while (!this.o.isUnsubscribed()) {
                    if (this.it.hasNext()) {
                        this.o.onNext(this.it.next());
                    } else {
                        if (!this.o.isUnsubscribed()) {
                            this.o.onCompleted();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (j > 0 && BackpressureUtils.getAndAddRequest(REQUESTED_UPDATER, this, j) == 0) {
                do {
                    j2 = this.requested;
                    long j3 = j2;
                    while (!this.o.isUnsubscribed()) {
                        if (this.it.hasNext()) {
                            long j4 = j3 - 1;
                            j3 = j4;
                            if (j4 >= 0) {
                                this.o.onNext(this.it.next());
                            }
                        } else {
                            if (!this.o.isUnsubscribed()) {
                                this.o.onCompleted();
                                return;
                            }
                            return;
                        }
                    }
                    return;
                } while (REQUESTED_UPDATER.addAndGet(this, -j2) != 0);
            }
        }
    }
}

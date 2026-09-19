package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorTake<T> implements Observable.Operator<T, T> {
    final int limit;

    public OperatorTake(int limit) {
        this.limit = limit;
    }

    /* JADX INFO: renamed from: rx.internal.operators.OperatorTake$1, reason: invalid class name */
    class AnonymousClass1 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;
        int count = 0;
        boolean completed = false;

        AnonymousClass1(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (!this.completed) {
                this.val$child.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            if (!this.completed) {
                this.val$child.onError(e);
            }
        }

        @Override // rx.Observer
        public void onNext(T i) {
            if (!isUnsubscribed()) {
                int i2 = this.count + 1;
                this.count = i2;
                if (i2 >= OperatorTake.this.limit) {
                    this.completed = true;
                }
                this.val$child.onNext(i);
                if (this.completed) {
                    this.val$child.onCompleted();
                    unsubscribe();
                }
            }
        }

        @Override // rx.Subscriber
        public void setProducer(final Producer producer) throws Throwable {
            this.val$child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorTake.1.1
                final AtomicLong requested = new AtomicLong(0);

                @Override // rx.Producer
                public void request(long n) {
                    long r;
                    long c;
                    if (n > 0 && !AnonymousClass1.this.completed) {
                        do {
                            r = this.requested.get();
                            c = Math.min(n, ((long) OperatorTake.this.limit) - r);
                            if (c == 0) {
                                return;
                            }
                        } while (!this.requested.compareAndSet(r, r + c));
                        producer.request(c);
                    }
                }
            });
        }
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> child) throws Throwable {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(child);
        if (this.limit == 0) {
            child.onCompleted();
            anonymousClass1.unsubscribe();
        }
        child.add(anonymousClass1);
        return anonymousClass1;
    }
}

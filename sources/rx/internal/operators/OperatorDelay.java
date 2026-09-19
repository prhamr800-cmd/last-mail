package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorDelay<T> implements Observable.Operator<T, T> {
    final long delay;
    final Scheduler scheduler;
    final Observable<? extends T> source;
    final TimeUnit unit;

    public OperatorDelay(Observable<? extends T> source, long delay, TimeUnit unit, Scheduler scheduler) {
        this.source = source;
        this.delay = delay;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Scheduler.Worker workerCreateWorker = this.scheduler.createWorker();
        subscriber.add(workerCreateWorker);
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorDelay.1
            @Override // rx.Observer
            public void onCompleted() {
                workerCreateWorker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.1
                    @Override // rx.functions.Action0
                    public void call() {
                        subscriber.onCompleted();
                    }
                }, OperatorDelay.this.delay, OperatorDelay.this.unit);
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }

            @Override // rx.Observer
            public void onNext(final T t) {
                workerCreateWorker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // rx.functions.Action0
                    public void call() {
                        subscriber.onNext(t);
                    }
                }, OperatorDelay.this.delay, OperatorDelay.this.unit);
            }
        };
    }
}

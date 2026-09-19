package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func0;
import rx.functions.Func2;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorScan<R, T> implements Observable.Operator<R, T> {
    private static final Object NO_INITIAL_VALUE = new Object();
    private final Func2<R, ? super T, R> accumulator;
    private final Func0<R> initialValueFactory;

    public OperatorScan(final R initialValue, Func2<R, ? super T, R> accumulator) {
        this((Func0) new Func0<R>() { // from class: rx.internal.operators.OperatorScan.1
            @Override // rx.functions.Func0, java.util.concurrent.Callable
            public R call() {
                return (R) initialValue;
            }
        }, (Func2) accumulator);
    }

    public OperatorScan(Func0<R> initialValueFactory, Func2<R, ? super T, R> accumulator) {
        this.initialValueFactory = initialValueFactory;
        this.accumulator = accumulator;
    }

    public OperatorScan(Func2<R, ? super T, R> accumulator) {
        this(NO_INITIAL_VALUE, accumulator);
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(final Subscriber<? super R> subscriber) {
        return new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorScan.2
            private final R initialValue;
            boolean initialized = false;
            private R value;

            {
                this.initialValue = (R) OperatorScan.this.initialValueFactory.call();
                this.value = this.initialValue;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // rx.Observer
            public void onNext(T t) {
                emitInitialValueIfNeeded(subscriber);
                if (this.value != OperatorScan.NO_INITIAL_VALUE) {
                    try {
                        this.value = (R) OperatorScan.this.accumulator.call(this.value, t);
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        subscriber.onError(OnErrorThrowable.addValueAsLastCause(th, t));
                        return;
                    }
                } else {
                    this.value = t;
                }
                subscriber.onNext(this.value);
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }

            @Override // rx.Observer
            public void onCompleted() {
                emitInitialValueIfNeeded(subscriber);
                subscriber.onCompleted();
            }

            private void emitInitialValueIfNeeded(Subscriber<? super R> subscriber2) {
                if (!this.initialized) {
                    this.initialized = true;
                    if (this.initialValue != OperatorScan.NO_INITIAL_VALUE) {
                        subscriber2.onNext(this.initialValue);
                    }
                }
            }

            @Override // rx.Subscriber
            public void setProducer(final Producer producer) throws Throwable {
                subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OperatorScan.2.1
                    final AtomicBoolean once = new AtomicBoolean();
                    final AtomicBoolean excessive = new AtomicBoolean();

                    @Override // rx.Producer
                    public void request(long n) {
                        if (!this.once.compareAndSet(false, true)) {
                            if (n > 1 && this.excessive.compareAndSet(true, false) && n != LongCompanionObject.MAX_VALUE) {
                                producer.request(n - 1);
                                return;
                            } else {
                                producer.request(n);
                                return;
                            }
                        }
                        if (AnonymousClass2.this.initialValue == OperatorScan.NO_INITIAL_VALUE || n == LongCompanionObject.MAX_VALUE) {
                            producer.request(n);
                        } else if (n == 1) {
                            this.excessive.set(true);
                            producer.request(1L);
                        } else {
                            producer.request(n - 1);
                        }
                    }
                });
            }
        };
    }
}

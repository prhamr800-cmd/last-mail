package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.functions.Functions;
import rx.internal.util.RxRingBuffer;
import rx.subscriptions.CompositeSubscription;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorZip<R> implements Observable.Operator<R, Observable<?>[]> {
    final FuncN<? extends R> zipFunction;

    public OperatorZip(FuncN<? extends R> f) {
        this.zipFunction = f;
    }

    public OperatorZip(Func2 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func3 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func4 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func5 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func6 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func7 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func8 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    public OperatorZip(Func9 f) {
        this.zipFunction = Functions.fromFunc(f);
    }

    @Override // rx.functions.Func1
    public Subscriber<? super Observable[]> call(Subscriber<? super R> child) throws Throwable {
        Zip<R> zipper = new Zip<>(child, this.zipFunction);
        ZipProducer<R> producer = new ZipProducer<>(zipper);
        child.setProducer(producer);
        OperatorZip<R>.ZipSubscriber subscriber = new ZipSubscriber(child, zipper, producer);
        return subscriber;
    }

    private final class ZipSubscriber extends Subscriber<Observable[]> {
        final Subscriber<? super R> child;
        final ZipProducer<R> producer;
        boolean started;
        final Zip<R> zipper;

        public ZipSubscriber(Subscriber<? super R> child, Zip<R> zipper, ZipProducer<R> producer) {
            super(child);
            this.started = false;
            this.child = child;
            this.zipper = zipper;
            this.producer = producer;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (!this.started) {
                this.child.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        @Override // rx.Observer
        public void onNext(Observable[] observables) {
            if (observables == null || observables.length == 0) {
                this.child.onCompleted();
            } else {
                this.started = true;
                this.zipper.start(observables, this.producer);
            }
        }
    }

    private static final class ZipProducer<R> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1216676403723546796L;
        private Zip<R> zipper;

        public ZipProducer(Zip<R> zipper) {
            this.zipper = zipper;
        }

        @Override // rx.Producer
        public void request(long n) throws Throwable {
            BackpressureUtils.getAndAddRequest(this, n);
            this.zipper.tick();
        }
    }

    private static final class Zip<R> {
        static final AtomicLongFieldUpdater<Zip> COUNTER_UPDATER = AtomicLongFieldUpdater.newUpdater(Zip.class, "counter");
        static final int THRESHOLD;
        private final Observer<? super R> child;
        volatile long counter;
        private Object[] observers;
        private AtomicLong requested;
        private final FuncN<? extends R> zipFunction;
        private final CompositeSubscription childSubscription = new CompositeSubscription();
        int emitted = 0;

        static {
            double d = RxRingBuffer.SIZE;
            Double.isNaN(d);
            THRESHOLD = (int) (d * 0.7d);
        }

        public Zip(Subscriber<? super R> child, FuncN<? extends R> zipFunction) {
            this.child = child;
            this.zipFunction = zipFunction;
            child.add(this.childSubscription);
        }

        public void start(Observable[] os, AtomicLong requested) {
            this.observers = new Object[os.length];
            this.requested = requested;
            for (int i = 0; i < os.length; i++) {
                Zip<R>.InnerSubscriber io2 = new InnerSubscriber();
                this.observers[i] = io2;
                this.childSubscription.add(io2);
            }
            for (int i2 = 0; i2 < os.length; i2++) {
                os[i2].unsafeSubscribe((InnerSubscriber) this.observers[i2]);
            }
        }

        void tick() throws Throwable {
            long j;
            Object[] objArr = this.observers;
            if (objArr == null) {
                return;
            }
            long j2 = 0;
            if (COUNTER_UPDATER.getAndIncrement(this) == 0) {
                int length = objArr.length;
                Observer<? super R> observer = this.child;
                AtomicLong atomicLong = this.requested;
                while (true) {
                    AtomicLong atomicLong2 = atomicLong;
                    Object[] objArr2 = new Object[length];
                    boolean z = true;
                    for (int i = 0; i < length; i++) {
                        RxRingBuffer rxRingBuffer = ((InnerSubscriber) objArr[i]).items;
                        Object objPeek = rxRingBuffer.peek();
                        if (objPeek == null) {
                            z = false;
                        } else {
                            if (rxRingBuffer.isCompleted(objPeek)) {
                                observer.onCompleted();
                                this.childSubscription.unsubscribe();
                                return;
                            }
                            objArr2[i] = rxRingBuffer.getValue(objPeek);
                        }
                    }
                    if (atomicLong2.get() <= j2 || !z) {
                        j = 0;
                        if (COUNTER_UPDATER.decrementAndGet(this) <= 0) {
                            return;
                        }
                    } else {
                        try {
                            observer.onNext(this.zipFunction.call(objArr2));
                            atomicLong2.decrementAndGet();
                            this.emitted++;
                            for (Object obj : objArr) {
                                RxRingBuffer rxRingBuffer2 = ((InnerSubscriber) obj).items;
                                rxRingBuffer2.poll();
                                if (rxRingBuffer2.isCompleted(rxRingBuffer2.peek())) {
                                    observer.onCompleted();
                                    this.childSubscription.unsubscribe();
                                    return;
                                }
                            }
                            if (this.emitted > THRESHOLD) {
                                for (Object obj2 : objArr) {
                                    ((InnerSubscriber) obj2).requestMore(this.emitted);
                                }
                                this.emitted = 0;
                            }
                            j = 0;
                        } catch (Throwable th) {
                            observer.onError(OnErrorThrowable.addValueAsLastCause(th, objArr2));
                            return;
                        }
                    }
                    atomicLong = atomicLong2;
                    j2 = j;
                }
            }
        }

        final class InnerSubscriber extends Subscriber {
            final RxRingBuffer items = RxRingBuffer.getSpmcInstance();

            InnerSubscriber() {
            }

            @Override // rx.Subscriber
            public void onStart() {
                request(RxRingBuffer.SIZE);
            }

            public void requestMore(long n) {
                request(n);
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                this.items.onCompleted();
                Zip.this.tick();
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
                Zip.this.child.onError(e);
            }

            @Override // rx.Observer
            public void onNext(Object t) throws Throwable {
                try {
                    this.items.onNext(t);
                } catch (MissingBackpressureException e) {
                    onError(e);
                }
                Zip.this.tick();
            }
        }
    }
}

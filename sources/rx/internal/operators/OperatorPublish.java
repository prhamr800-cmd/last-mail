package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.SynchronizedQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.observables.ConnectableObservable;
import rx.subscriptions.Subscriptions;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorPublish<T> extends ConnectableObservable<T> {
    final AtomicReference<PublishSubscriber<T>> current;
    final Observable<? extends T> source;

    public static <T> ConnectableObservable<T> create(Observable<? extends T> source) {
        final AtomicReference<PublishSubscriber<T>> curr = new AtomicReference<>();
        Observable.OnSubscribe<T> onSubscribe = new Observable.OnSubscribe<T>() { // from class: rx.internal.operators.OperatorPublish.1
            @Override // rx.functions.Action1
            public void call(Subscriber<? super T> child) throws Throwable {
                while (true) {
                    PublishSubscriber<T> r = (PublishSubscriber) curr.get();
                    if (r == null || r.isUnsubscribed()) {
                        PublishSubscriber<T> u = new PublishSubscriber<>(curr);
                        u.init();
                        if (curr.compareAndSet(r, u)) {
                            r = u;
                        } else {
                            continue;
                        }
                    }
                    InnerProducer<T> inner = new InnerProducer<>(r, child);
                    if (r.add((InnerProducer) inner)) {
                        child.add(inner);
                        child.setProducer(inner);
                        return;
                    }
                }
            }
        };
        return new OperatorPublish(onSubscribe, source, curr);
    }

    public static <T, R> Observable<R> create(final Observable<? extends T> source, final Func1<? super Observable<T>, ? extends Observable<R>> selector) {
        return create(new Observable.OnSubscribe<R>() { // from class: rx.internal.operators.OperatorPublish.2
            @Override // rx.functions.Action1
            public void call(final Subscriber<? super R> child) {
                ConnectableObservable<T> op = OperatorPublish.create(source);
                ((Observable) selector.call(op)).unsafeSubscribe(child);
                op.connect(new Action1<Subscription>() { // from class: rx.internal.operators.OperatorPublish.2.1
                    @Override // rx.functions.Action1
                    public void call(Subscription t1) {
                        child.add(t1);
                    }
                });
            }
        });
    }

    private OperatorPublish(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> source, AtomicReference<PublishSubscriber<T>> current) {
        super(onSubscribe);
        this.source = source;
        this.current = current;
    }

    @Override // rx.observables.ConnectableObservable
    public void connect(Action1<? super Subscription> connection) {
        PublishSubscriber<T> ps;
        boolean doConnect = false;
        while (true) {
            ps = this.current.get();
            if (ps != null && !ps.isUnsubscribed()) {
                break;
            }
            PublishSubscriber<T> u = new PublishSubscriber<>(this.current);
            u.init();
            if (this.current.compareAndSet(ps, u)) {
                ps = u;
                break;
            }
        }
        if (!ps.shouldConnect.get() && ps.shouldConnect.compareAndSet(false, true)) {
            doConnect = true;
        }
        connection.call(ps);
        if (doConnect) {
            this.source.unsafeSubscribe(ps);
        }
    }

    static final class PublishSubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY = new InnerProducer[0];
        static final InnerProducer[] TERMINATED = new InnerProducer[0];
        final AtomicReference<PublishSubscriber<T>> current;
        boolean emitting;
        boolean missed;
        final NotificationLite<T> nl;
        final AtomicReference<InnerProducer[]> producers;
        final Queue<Object> queue;
        final AtomicBoolean shouldConnect;
        volatile Object terminalEvent;

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> current) {
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue<>(RxRingBuffer.SIZE) : new SynchronizedQueue<>(RxRingBuffer.SIZE);
            this.nl = NotificationLite.instance();
            this.producers = new AtomicReference<>(EMPTY);
            this.current = current;
            this.shouldConnect = new AtomicBoolean();
        }

        void init() {
            add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorPublish.PublishSubscriber.1
                @Override // rx.functions.Action0
                public void call() {
                    PublishSubscriber.this.producers.getAndSet(PublishSubscriber.TERMINATED);
                    PublishSubscriber.this.current.compareAndSet(PublishSubscriber.this, null);
                }
            }));
        }

        @Override // rx.Subscriber
        public void onStart() {
            request(RxRingBuffer.SIZE);
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            if (!this.queue.offer(this.nl.next(t))) {
                onError(new MissingBackpressureException());
            } else {
                dispatch();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) throws Throwable {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.error(e);
                dispatch();
            }
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.completed();
                dispatch();
            }
        }

        boolean add(InnerProducer<T> producer) {
            InnerProducer[] c;
            InnerProducer[] u;
            if (producer == null) {
                throw new NullPointerException();
            }
            do {
                c = this.producers.get();
                if (c == TERMINATED) {
                    return false;
                }
                int len = c.length;
                u = new InnerProducer[len + 1];
                System.arraycopy(c, 0, u, 0, len);
                u[len] = producer;
            } while (!this.producers.compareAndSet(c, u));
            return true;
        }

        void remove(InnerProducer<T> producer) {
            InnerProducer[] c;
            InnerProducer[] u;
            do {
                c = this.producers.get();
                if (c == EMPTY || c == TERMINATED) {
                    return;
                }
                int j = -1;
                int len = c.length;
                int i = 0;
                while (true) {
                    if (i >= len) {
                        break;
                    }
                    if (!c[i].equals(producer)) {
                        i++;
                    } else {
                        j = i;
                        break;
                    }
                }
                if (j < 0) {
                    return;
                }
                if (len == 1) {
                    u = EMPTY;
                } else {
                    InnerProducer[] u2 = new InnerProducer[len - 1];
                    System.arraycopy(c, 0, u2, 0, j);
                    System.arraycopy(c, j + 1, u2, j, (len - j) - 1);
                    u = u2;
                }
            } while (!this.producers.compareAndSet(c, u));
        }

        boolean checkTerminated(Object term, boolean empty) {
            int i$ = 0;
            if (term != null) {
                if (this.nl.isCompleted(term)) {
                    if (empty) {
                        this.current.compareAndSet(this, null);
                        try {
                            InnerProducer<?>[] arr$ = this.producers.getAndSet(TERMINATED);
                            int len$ = arr$.length;
                            while (i$ < len$) {
                                InnerProducer<?> ip = arr$[i$];
                                ip.child.onCompleted();
                                i$++;
                            }
                            return true;
                        } finally {
                        }
                    }
                } else {
                    Throwable t = this.nl.getError(term);
                    this.current.compareAndSet(this, null);
                    try {
                        InnerProducer<?>[] arr$2 = this.producers.getAndSet(TERMINATED);
                        int len$2 = arr$2.length;
                        while (i$ < len$2) {
                            InnerProducer<?> ip2 = arr$2[i$];
                            ip2.child.onError(t);
                            i$++;
                        }
                        return true;
                    } finally {
                    }
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:106:0x0146, code lost:
        
            r27.emitting = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x014b, code lost:
        
            if (1 != 0) goto L118;
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x014d, code lost:
        
            monitor-enter(r27);
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x014f, code lost:
        
            r27.emitting = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0151, code lost:
        
            monitor-exit(r27);
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x0156, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x0157, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x0158, code lost:
        
            r4 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:197:?, code lost:
        
            return;
         */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0177  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void dispatch() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 388
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorPublish.PublishSubscriber.dispatch():void");
        }
    }

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long NOT_REQUESTED = -4611686018427387904L;
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        final PublishSubscriber<T> parent;

        public InnerProducer(PublishSubscriber<T> parent, Subscriber<? super T> child) {
            this.parent = parent;
            this.child = child;
            lazySet(NOT_REQUESTED);
        }

        @Override // rx.Producer
        public void request(long n) throws Throwable {
            long r;
            long u;
            if (n < 0) {
                return;
            }
            do {
                r = get();
                if (r == Long.MIN_VALUE) {
                    return;
                }
                if (r >= 0 && n == 0) {
                    return;
                }
                if (r == NOT_REQUESTED) {
                    u = n;
                } else {
                    u = r + n;
                    if (u < 0) {
                        u = LongCompanionObject.MAX_VALUE;
                    }
                }
            } while (!compareAndSet(r, u));
            this.parent.dispatch();
        }

        public long produced(long n) {
            long r;
            long u;
            if (n <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                r = get();
                if (r == NOT_REQUESTED) {
                    throw new IllegalStateException("Produced without request");
                }
                if (r == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                u = r - n;
                if (u < 0) {
                    throw new IllegalStateException("More produced (" + n + ") than requested (" + r + ")");
                }
            } while (!compareAndSet(r, u));
            return u;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // rx.Subscription
        public void unsubscribe() throws Throwable {
            long r = get();
            if (r != Long.MIN_VALUE) {
                long r2 = getAndSet(Long.MIN_VALUE);
                if (r2 != Long.MIN_VALUE) {
                    this.parent.remove(this);
                    this.parent.dispatch();
                }
            }
        }
    }
}

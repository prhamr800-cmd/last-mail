package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorSwitch<T> implements Observable.Operator<T, Observable<? extends T>> {

    private static final class Holder {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>();

        private Holder() {
        }
    }

    public static <T> OperatorSwitch<T> instance() {
        return (OperatorSwitch<T>) Holder.INSTANCE;
    }

    private OperatorSwitch() {
    }

    @Override // rx.functions.Func1
    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> child) {
        SwitchSubscriber<T> sws = new SwitchSubscriber<>(child);
        child.add(sws);
        return sws;
    }

    private static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        boolean active;
        SwitchSubscriber<T>.InnerSubscriber currentSubscriber;
        boolean emitting;
        int index;
        long initialRequested;
        boolean mainDone;
        List<Object> queue;
        final SerializedSubscriber<T> s;
        final Object guard = new Object();
        final NotificationLite<?> nl = NotificationLite.instance();
        volatile boolean infinite = false;
        final SerialSubscription ssub = new SerialSubscription();

        public SwitchSubscriber(Subscriber<? super T> child) throws Throwable {
            this.s = new SerializedSubscriber<>(child);
            child.add(this.ssub);
            child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.1
                @Override // rx.Producer
                public void request(long n) {
                    SwitchSubscriber<T>.InnerSubscriber localSubscriber;
                    if (SwitchSubscriber.this.infinite) {
                        return;
                    }
                    if (n == LongCompanionObject.MAX_VALUE) {
                        SwitchSubscriber.this.infinite = true;
                    }
                    synchronized (SwitchSubscriber.this.guard) {
                        localSubscriber = SwitchSubscriber.this.currentSubscriber;
                        if (SwitchSubscriber.this.currentSubscriber == null) {
                            SwitchSubscriber.this.initialRequested = n;
                        } else {
                            InnerSubscriber.access$114(SwitchSubscriber.this.currentSubscriber, n);
                        }
                    }
                    if (localSubscriber != null) {
                        localSubscriber.requestMore(n);
                    }
                }
            });
        }

        @Override // rx.Observer
        public void onNext(Observable<? extends T> t) {
            long remainingRequest;
            synchronized (this.guard) {
                int id = this.index + 1;
                this.index = id;
                this.active = true;
                if (this.infinite) {
                    remainingRequest = LongCompanionObject.MAX_VALUE;
                } else {
                    remainingRequest = this.currentSubscriber == null ? this.initialRequested : ((InnerSubscriber) this.currentSubscriber).requested;
                }
                this.currentSubscriber = new InnerSubscriber(id, remainingRequest);
                ((InnerSubscriber) this.currentSubscriber).requested = remainingRequest;
            }
            this.ssub.set(this.currentSubscriber);
            t.unsafeSubscribe(this.currentSubscriber);
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            this.s.onError(e);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            synchronized (this.guard) {
                try {
                    this.mainDone = true;
                    if (this.active) {
                        return;
                    }
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(this.nl.completed());
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    try {
                        this.queue = null;
                        this.emitting = true;
                        drain(localQueue);
                        this.s.onCompleted();
                        unsubscribe();
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x004f, code lost:
        
            r8.emitting = false;
            r0 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void emit(T r9, int r10, rx.internal.operators.OperatorSwitch.SwitchSubscriber<T>.InnerSubscriber r11) throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = r8.guard
                monitor-enter(r0)
                r1 = 0
                int r2 = r8.index     // Catch: java.lang.Throwable -> L80
                if (r10 == r2) goto La
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L80
                return
            La:
                boolean r2 = r8.emitting     // Catch: java.lang.Throwable -> L80
                if (r2 == 0) goto L23
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L80
                if (r2 != 0) goto L19
                java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L80
                r2.<init>()     // Catch: java.lang.Throwable -> L80
                r8.queue = r2     // Catch: java.lang.Throwable -> L80
            L19:
                rx.internal.operators.OperatorSwitch.SwitchSubscriber.InnerSubscriber.access$110(r11)     // Catch: java.lang.Throwable -> L80
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L80
                r2.add(r9)     // Catch: java.lang.Throwable -> L80
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L80
                return
            L23:
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L80
                r8.queue = r1     // Catch: java.lang.Throwable -> L7b
                r3 = 1
                r8.emitting = r3     // Catch: java.lang.Throwable -> L7b
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L7b
                r0 = 1
                r3 = 0
                r4 = r0
                r0 = 0
            L2f:
                r8.drain(r2)     // Catch: java.lang.Throwable -> L6d
                if (r4 == 0) goto L45
                r4 = 0
                java.lang.Object r5 = r8.guard     // Catch: java.lang.Throwable -> L6d
                monitor-enter(r5)     // Catch: java.lang.Throwable -> L6d
                rx.internal.operators.OperatorSwitch.SwitchSubscriber.InnerSubscriber.access$110(r11)     // Catch: java.lang.Throwable -> L42
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L42
                rx.observers.SerializedSubscriber<T> r5 = r8.s     // Catch: java.lang.Throwable -> L6d
                r5.onNext(r9)     // Catch: java.lang.Throwable -> L6d
                goto L45
            L42:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L42
                throw r1     // Catch: java.lang.Throwable -> L6d
            L45:
                java.lang.Object r5 = r8.guard     // Catch: java.lang.Throwable -> L6d
                monitor-enter(r5)     // Catch: java.lang.Throwable -> L6d
                java.util.List<java.lang.Object> r6 = r8.queue     // Catch: java.lang.Throwable -> L6a
                r2 = r6
                r8.queue = r1     // Catch: java.lang.Throwable -> L6a
                if (r2 != 0) goto L54
                r8.emitting = r3     // Catch: java.lang.Throwable -> L6a
                r0 = 1
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6a
                goto L5d
            L54:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6a
                rx.observers.SerializedSubscriber<T> r5 = r8.s     // Catch: java.lang.Throwable -> L6d
                boolean r5 = r5.isUnsubscribed()     // Catch: java.lang.Throwable -> L6d
                if (r5 == 0) goto L2f
            L5d:
                if (r0 != 0) goto L69
                java.lang.Object r1 = r8.guard
                monitor-enter(r1)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L66
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L66
                goto L69
            L66:
                r3 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L66
                throw r3
            L69:
                return
            L6a:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6a
                throw r1     // Catch: java.lang.Throwable -> L6d
            L6d:
                r1 = move-exception
                if (r0 != 0) goto L7a
                java.lang.Object r5 = r8.guard
                monitor-enter(r5)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L77
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L77
                goto L7a
            L77:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L77
                throw r1
            L7a:
                throw r1
            L7b:
                r1 = move-exception
                r7 = r2
                r2 = r1
                r1 = r7
                goto L81
            L80:
                r2 = move-exception
            L81:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L80
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorSwitch.SwitchSubscriber.emit(java.lang.Object, int, rx.internal.operators.OperatorSwitch$SwitchSubscriber$InnerSubscriber):void");
        }

        void drain(List<Object> list) {
            if (list == null) {
                return;
            }
            for (Object obj : list) {
                if (this.nl.isCompleted(obj)) {
                    this.s.onCompleted();
                    return;
                } else {
                    if (this.nl.isError(obj)) {
                        this.s.onError(this.nl.getError(obj));
                        return;
                    }
                    this.s.onNext((T) obj);
                }
            }
        }

        void error(Throwable e, int id) throws Throwable {
            synchronized (this.guard) {
                try {
                    if (id != this.index) {
                        return;
                    }
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(this.nl.error(e));
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    try {
                        this.queue = null;
                        this.emitting = true;
                        drain(localQueue);
                        this.s.onError(e);
                        unsubscribe();
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        void complete(int id) throws Throwable {
            synchronized (this.guard) {
                try {
                    if (id != this.index) {
                        return;
                    }
                    this.active = false;
                    if (this.mainDone) {
                        if (this.emitting) {
                            if (this.queue == null) {
                                this.queue = new ArrayList();
                            }
                            this.queue.add(this.nl.completed());
                            return;
                        }
                        List<Object> localQueue = this.queue;
                        try {
                            this.queue = null;
                            this.emitting = true;
                            drain(localQueue);
                            this.s.onCompleted();
                            unsubscribe();
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        final class InnerSubscriber extends Subscriber<T> {
            private final int id;
            private final long initialRequested;
            private long requested = 0;

            static /* synthetic */ long access$110(InnerSubscriber x0) {
                long j = x0.requested;
                x0.requested = j - 1;
                return j;
            }

            static /* synthetic */ long access$114(InnerSubscriber x0, long x1) {
                long j = x0.requested + x1;
                x0.requested = j;
                return j;
            }

            public InnerSubscriber(int id, long initialRequested) {
                this.id = id;
                this.initialRequested = initialRequested;
            }

            @Override // rx.Subscriber
            public void onStart() {
                requestMore(this.initialRequested);
            }

            public void requestMore(long n) {
                request(n);
            }

            @Override // rx.Observer
            public void onNext(T t) throws Throwable {
                SwitchSubscriber.this.emit(t, this.id, this);
            }

            @Override // rx.Observer
            public void onError(Throwable e) throws Throwable {
                SwitchSubscriber.this.error(e, this.id);
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                SwitchSubscriber.this.complete(this.id);
            }
        }
    }
}

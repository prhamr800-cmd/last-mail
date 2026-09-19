package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Observer;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorWindowWithTime<T> implements Observable.Operator<Observable<T>, T> {
    static final Object NEXT_SUBJECT = new Object();
    static final NotificationLite<Object> nl = NotificationLite.instance();
    final Scheduler scheduler;
    final int size;
    final long timeshift;
    final long timespan;
    final TimeUnit unit;

    public OperatorWindowWithTime(long timespan, long timeshift, TimeUnit unit, int size, Scheduler scheduler) {
        this.timespan = timespan;
        this.timeshift = timeshift;
        this.unit = unit;
        this.size = size;
        this.scheduler = scheduler;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super Observable<T>> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        if (this.timespan == this.timeshift) {
            OperatorWindowWithTime<T>.ExactSubscriber s = new ExactSubscriber(child, worker);
            s.scheduleExact();
            return s;
        }
        OperatorWindowWithTime<T>.InexactSubscriber s2 = new InexactSubscriber(child, worker);
        s2.startNewChunk();
        s2.scheduleChunk();
        return s2;
    }

    static final class State<T> {
        static final State<Object> EMPTY = new State<>(null, null, 0);
        final Observer<T> consumer;
        final int count;
        final Observable<T> producer;

        public State(Observer<T> consumer, Observable<T> producer, int count) {
            this.consumer = consumer;
            this.producer = producer;
            this.count = count;
        }

        public State<T> next() {
            return new State<>(this.consumer, this.producer, this.count + 1);
        }

        public State<T> create(Observer<T> consumer, Observable<T> producer) {
            return new State<>(consumer, producer, 0);
        }

        public State<T> clear() {
            return empty();
        }

        public static <T> State<T> empty() {
            return (State<T>) EMPTY;
        }
    }

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        boolean emitting;
        final Object guard;
        List<Object> queue;
        volatile State<T> state;
        final Scheduler.Worker worker;

        public ExactSubscriber(Subscriber<? super Observable<T>> child, Scheduler.Worker worker) {
            super(child);
            this.child = new SerializedSubscriber(child);
            this.worker = worker;
            this.guard = new Object();
            this.state = State.empty();
        }

        @Override // rx.Subscriber
        public void onStart() {
            request(LongCompanionObject.MAX_VALUE);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x0066  */
        @Override // rx.Observer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onNext(T r9) throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = r8.guard
                monitor-enter(r0)
                r1 = 0
                boolean r2 = r8.emitting     // Catch: java.lang.Throwable -> L76
                if (r2 == 0) goto L1a
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L76
                if (r2 != 0) goto L13
                java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L76
                r2.<init>()     // Catch: java.lang.Throwable -> L76
                r8.queue = r2     // Catch: java.lang.Throwable -> L76
            L13:
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L76
                r2.add(r9)     // Catch: java.lang.Throwable -> L76
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L76
                return
            L1a:
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L76
                r8.queue = r1     // Catch: java.lang.Throwable -> L71
                r3 = 1
                r8.emitting = r3     // Catch: java.lang.Throwable -> L71
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L71
                r0 = 1
                r3 = 0
                r4 = r0
                r0 = 0
            L26:
                r8.drain(r2)     // Catch: java.lang.Throwable -> L63
                if (r4 == 0) goto L2f
                r4 = 0
                r8.emitValue(r9)     // Catch: java.lang.Throwable -> L63
            L2f:
                java.lang.Object r5 = r8.guard     // Catch: java.lang.Throwable -> L63
                monitor-enter(r5)     // Catch: java.lang.Throwable -> L63
                java.util.List<java.lang.Object> r6 = r8.queue     // Catch: java.lang.Throwable -> L60
                r2 = r6
                r8.queue = r1     // Catch: java.lang.Throwable -> L60
                if (r2 != 0) goto L4a
                r8.emitting = r3     // Catch: java.lang.Throwable -> L60
                r0 = 1
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L60
                if (r0 != 0) goto L49
                java.lang.Object r1 = r8.guard
                monitor-enter(r1)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L46
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
                goto L49
            L46:
                r3 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L46
                throw r3
            L49:
                return
            L4a:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L60
                rx.Subscriber<? super rx.Observable<T>> r5 = r8.child     // Catch: java.lang.Throwable -> L63
                boolean r5 = r5.isUnsubscribed()     // Catch: java.lang.Throwable -> L63
                if (r5 == 0) goto L26
                if (r0 != 0) goto L5f
                java.lang.Object r1 = r8.guard
                monitor-enter(r1)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L5c
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                goto L5f
            L5c:
                r3 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5c
                throw r3
            L5f:
                return
            L60:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L60
                throw r1     // Catch: java.lang.Throwable -> L63
            L63:
                r1 = move-exception
                if (r0 != 0) goto L70
                java.lang.Object r5 = r8.guard
                monitor-enter(r5)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L6d
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6d
                goto L70
            L6d:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6d
                throw r1
            L70:
                throw r1
            L71:
                r1 = move-exception
                r7 = r2
                r2 = r1
                r1 = r7
                goto L77
            L76:
                r2 = move-exception
            L77:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L76
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.onNext(java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void drain(List<Object> queue) {
            if (queue == null) {
                return;
            }
            for (Object o : queue) {
                if (o == OperatorWindowWithTime.NEXT_SUBJECT) {
                    replaceSubject();
                } else if (OperatorWindowWithTime.nl.isError(o)) {
                    error(OperatorWindowWithTime.nl.getError(o));
                    return;
                } else {
                    if (OperatorWindowWithTime.nl.isCompleted(o)) {
                        complete();
                        return;
                    }
                    emitValue(o);
                }
            }
        }

        void replaceSubject() {
            Observer<T> s = this.state.consumer;
            if (s != null) {
                s.onCompleted();
            }
            BufferUntilSubscriber<T> bus = BufferUntilSubscriber.create();
            this.state = this.state.create(bus, bus);
            this.child.onNext(bus);
        }

        void emitValue(T t) {
            State<T> s;
            State<T> s2 = this.state;
            if (s2.consumer == null) {
                replaceSubject();
                s2 = this.state;
            }
            s2.consumer.onNext(t);
            if (s2.count == OperatorWindowWithTime.this.size - 1) {
                s2.consumer.onCompleted();
                s = s2.clear();
            } else {
                s = s2.next();
            }
            this.state = s;
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            synchronized (this.guard) {
                if (this.emitting) {
                    this.queue = Collections.singletonList(OperatorWindowWithTime.nl.error(e));
                    return;
                }
                this.queue = null;
                this.emitting = true;
                error(e);
            }
        }

        void error(Throwable e) {
            Observer<T> s = this.state.consumer;
            this.state = this.state.clear();
            if (s != null) {
                s.onError(e);
            }
            this.child.onError(e);
            unsubscribe();
        }

        void complete() {
            Observer<T> s = this.state.consumer;
            this.state = this.state.clear();
            if (s != null) {
                s.onCompleted();
            }
            this.child.onCompleted();
            unsubscribe();
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            synchronized (this.guard) {
                try {
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(OperatorWindowWithTime.nl.completed());
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    try {
                        this.queue = null;
                        this.emitting = true;
                        try {
                            drain(localQueue);
                            complete();
                        } catch (Throwable e) {
                            error(e);
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        void scheduleExact() {
            this.worker.schedulePeriodically(new Action0() { // from class: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.1
                @Override // rx.functions.Action0
                public void call() throws Throwable {
                    ExactSubscriber.this.nextWindow();
                }
            }, 0L, OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x0068  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void nextWindow() throws java.lang.Throwable {
            /*
                r8 = this;
                java.lang.Object r0 = r8.guard
                monitor-enter(r0)
                r1 = 0
                boolean r2 = r8.emitting     // Catch: java.lang.Throwable -> L78
                if (r2 == 0) goto L1c
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L78
                if (r2 != 0) goto L13
                java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L78
                r2.<init>()     // Catch: java.lang.Throwable -> L78
                r8.queue = r2     // Catch: java.lang.Throwable -> L78
            L13:
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L78
                java.lang.Object r3 = rx.internal.operators.OperatorWindowWithTime.NEXT_SUBJECT     // Catch: java.lang.Throwable -> L78
                r2.add(r3)     // Catch: java.lang.Throwable -> L78
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
                return
            L1c:
                java.util.List<java.lang.Object> r2 = r8.queue     // Catch: java.lang.Throwable -> L78
                r8.queue = r1     // Catch: java.lang.Throwable -> L73
                r3 = 1
                r8.emitting = r3     // Catch: java.lang.Throwable -> L73
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L73
                r0 = 1
                r3 = 0
                r4 = r0
                r0 = 0
            L28:
                r8.drain(r2)     // Catch: java.lang.Throwable -> L65
                if (r4 == 0) goto L31
                r4 = 0
                r8.replaceSubject()     // Catch: java.lang.Throwable -> L65
            L31:
                java.lang.Object r5 = r8.guard     // Catch: java.lang.Throwable -> L65
                monitor-enter(r5)     // Catch: java.lang.Throwable -> L65
                java.util.List<java.lang.Object> r6 = r8.queue     // Catch: java.lang.Throwable -> L62
                r2 = r6
                r8.queue = r1     // Catch: java.lang.Throwable -> L62
                if (r2 != 0) goto L4c
                r8.emitting = r3     // Catch: java.lang.Throwable -> L62
                r0 = 1
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L62
                if (r0 != 0) goto L4b
                java.lang.Object r1 = r8.guard
                monitor-enter(r1)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L48
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L48
                goto L4b
            L48:
                r3 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L48
                throw r3
            L4b:
                return
            L4c:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L62
                rx.Subscriber<? super rx.Observable<T>> r5 = r8.child     // Catch: java.lang.Throwable -> L65
                boolean r5 = r5.isUnsubscribed()     // Catch: java.lang.Throwable -> L65
                if (r5 == 0) goto L28
                if (r0 != 0) goto L61
                java.lang.Object r1 = r8.guard
                monitor-enter(r1)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L5e
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5e
                goto L61
            L5e:
                r3 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5e
                throw r3
            L61:
                return
            L62:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L62
                throw r1     // Catch: java.lang.Throwable -> L65
            L65:
                r1 = move-exception
                if (r0 != 0) goto L72
                java.lang.Object r5 = r8.guard
                monitor-enter(r5)
                r8.emitting = r3     // Catch: java.lang.Throwable -> L6f
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6f
                goto L72
            L6f:
                r1 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L6f
                throw r1
            L72:
                throw r1
            L73:
                r1 = move-exception
                r7 = r2
                r2 = r1
                r1 = r7
                goto L79
            L78:
                r2 = move-exception
            L79:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.nextWindow():void");
        }
    }

    static final class CountedSerializedSubject<T> {
        final Observer<T> consumer;
        int count;
        final Observable<T> producer;

        public CountedSerializedSubject(Observer<T> consumer, Observable<T> producer) {
            this.consumer = new SerializedObserver(consumer);
            this.producer = producer;
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<CountedSerializedSubject<T>> chunks;
        boolean done;
        final Object guard;
        final Scheduler.Worker worker;

        public InexactSubscriber(Subscriber<? super Observable<T>> child, Scheduler.Worker worker) {
            super(child);
            this.child = child;
            this.worker = worker;
            this.guard = new Object();
            this.chunks = new LinkedList();
        }

        @Override // rx.Subscriber
        public void onStart() {
            request(LongCompanionObject.MAX_VALUE);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                List<CountedSerializedSubject<T>> list = new ArrayList<>(this.chunks);
                Iterator<CountedSerializedSubject<T>> it = this.chunks.iterator();
                while (it.hasNext()) {
                    CountedSerializedSubject<T> cs = it.next();
                    int i = cs.count + 1;
                    cs.count = i;
                    if (i == OperatorWindowWithTime.this.size) {
                        it.remove();
                    }
                }
                for (CountedSerializedSubject<T> cs2 : list) {
                    cs2.consumer.onNext(t);
                    if (cs2.count == OperatorWindowWithTime.this.size) {
                        cs2.consumer.onCompleted();
                    }
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.done = true;
                List<CountedSerializedSubject<T>> list = new ArrayList<>(this.chunks);
                this.chunks.clear();
                for (CountedSerializedSubject<T> cs : list) {
                    cs.consumer.onError(e);
                }
                this.child.onError(e);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.done = true;
                List<CountedSerializedSubject<T>> list = new ArrayList<>(this.chunks);
                this.chunks.clear();
                for (CountedSerializedSubject<T> cs : list) {
                    cs.consumer.onCompleted();
                }
                this.child.onCompleted();
            }
        }

        void scheduleChunk() {
            this.worker.schedulePeriodically(new Action0() { // from class: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.1
                @Override // rx.functions.Action0
                public void call() {
                    InexactSubscriber.this.startNewChunk();
                }
            }, OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.unit);
        }

        void startNewChunk() {
            final CountedSerializedSubject<T> chunk = createCountedSerializedSubject();
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.chunks.add(chunk);
                try {
                    this.child.onNext(chunk.producer);
                    this.worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.2
                        @Override // rx.functions.Action0
                        public void call() {
                            InexactSubscriber.this.terminateChunk(chunk);
                        }
                    }, OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
                } catch (Throwable e) {
                    onError(e);
                }
            }
        }

        void terminateChunk(CountedSerializedSubject<T> chunk) {
            boolean terminate = false;
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                Iterator<CountedSerializedSubject<T>> it = this.chunks.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    CountedSerializedSubject<T> cs = it.next();
                    if (cs == chunk) {
                        terminate = true;
                        it.remove();
                        break;
                    }
                }
                if (terminate) {
                    chunk.consumer.onCompleted();
                }
            }
        }

        CountedSerializedSubject<T> createCountedSerializedSubject() {
            BufferUntilSubscriber<T> bus = BufferUntilSubscriber.create();
            return new CountedSerializedSubject<>(bus, bus);
        }
    }
}

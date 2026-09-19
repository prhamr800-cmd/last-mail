package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;
import rx.internal.util.RxRingBuffer;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;

/* JADX INFO: loaded from: classes3.dex */
public final class OperatorMergeMaxConcurrent<T> implements Observable.Operator<T, Observable<? extends T>> {
    final int maxConcurrency;

    public OperatorMergeMaxConcurrent(int maxConcurrency) {
        this.maxConcurrency = maxConcurrency;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> child) throws Throwable {
        SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        CompositeSubscription csub = new CompositeSubscription();
        child.add(csub);
        SourceSubscriber<T> ssub = new SourceSubscriber<>(this.maxConcurrency, s, csub);
        child.setProducer(new MergeMaxConcurrentProducer(ssub));
        return ssub;
    }

    static final class MergeMaxConcurrentProducer<T> implements Producer {
        final SourceSubscriber<T> ssub;

        public MergeMaxConcurrentProducer(SourceSubscriber<T> ssub) {
            this.ssub = ssub;
        }

        @Override // rx.Producer
        public void request(long n) throws Throwable {
            this.ssub.downstreamRequest(n);
        }
    }

    static final class SourceSubscriber<T> extends Subscriber<Observable<? extends T>> {
        int active;
        final CompositeSubscription csub;
        boolean emitting;
        final Object guard;
        int lastIndex;
        final int maxConcurrency;
        int missedEmitting;
        final NotificationLite<T> nl;
        final Queue<Observable<? extends T>> queue;
        volatile long requested;
        final Subscriber<T> s;
        volatile int sourceIndex;
        final List<SourceSubscriber<T>.MergeItemSubscriber> subscribers;
        volatile int wip;
        static final AtomicIntegerFieldUpdater<SourceSubscriber> WIP = AtomicIntegerFieldUpdater.newUpdater(SourceSubscriber.class, "wip");
        static final AtomicIntegerFieldUpdater<SourceSubscriber> SOURCE_INDEX = AtomicIntegerFieldUpdater.newUpdater(SourceSubscriber.class, "sourceIndex");
        static final AtomicLongFieldUpdater<SourceSubscriber> REQUESTED = AtomicLongFieldUpdater.newUpdater(SourceSubscriber.class, "requested");

        public SourceSubscriber(int maxConcurrency, Subscriber<T> s, CompositeSubscription csub) {
            super(s);
            this.nl = NotificationLite.instance();
            this.maxConcurrency = maxConcurrency;
            this.s = s;
            this.csub = csub;
            this.guard = new Object();
            this.queue = new ArrayDeque(maxConcurrency);
            this.subscribers = Collections.synchronizedList(new ArrayList());
            this.wip = 1;
        }

        @Override // rx.Subscriber
        public void onStart() {
            request(this.maxConcurrency);
        }

        @Override // rx.Observer
        public void onNext(Observable<? extends T> t) {
            synchronized (this.guard) {
                this.queue.add(t);
            }
            subscribeNext();
        }

        void subscribeNext() {
            synchronized (this.guard) {
                Observable<? extends T> t = this.queue.peek();
                if (t != null && this.active < this.maxConcurrency) {
                    this.active++;
                    this.queue.poll();
                    SourceSubscriber<T>.MergeItemSubscriber itemSub = new MergeItemSubscriber(SOURCE_INDEX.getAndIncrement(this));
                    this.subscribers.add(itemSub);
                    this.csub.add(itemSub);
                    WIP.incrementAndGet(this);
                    t.unsafeSubscribe(itemSub);
                    request(1L);
                }
            }
        }

        @Override // rx.Observer
        public void onError(Throwable e) {
            Object[] active;
            synchronized (this.subscribers) {
                active = this.subscribers.toArray();
                this.subscribers.clear();
            }
            int i$ = 0;
            try {
                this.s.onError(e);
                unsubscribe();
            } finally {
                int len$ = active.length;
                while (i$ < len$) {
                    Object o = active[i$];
                    SourceSubscriber<T>.MergeItemSubscriber a = (MergeItemSubscriber) o;
                    a.release();
                    i$++;
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            WIP.decrementAndGet(this);
            drain();
        }

        protected void downstreamRequest(long n) throws Throwable {
            long r;
            long u;
            do {
                r = this.requested;
                long j = ((r == LongCompanionObject.MAX_VALUE || n != LongCompanionObject.MAX_VALUE) && r + n >= 0) ? r + n : LongCompanionObject.MAX_VALUE;
                u = j;
            } while (!REQUESTED.compareAndSet(this, r, u));
            drain();
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x0081, code lost:
        
            r3.remove(r12);
            r14 = r24.guard;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
        
            monitor-enter(r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0087, code lost:
        
            r24.active -= r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x008c, code lost:
        
            monitor-exit(r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x008d, code lost:
        
            r24.csub.remove(r12);
            r12.release();
            subscribeNext();
            rx.internal.operators.OperatorMergeMaxConcurrent.SourceSubscriber.WIP.decrementAndGet(r24);
            r23 = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00f4, code lost:
        
            if (r8 == 0) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
        
            r5 = r23;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        protected void drain() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 304
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMergeMaxConcurrent.SourceSubscriber.drain():void");
        }

        final class MergeItemSubscriber extends Subscriber<T> {
            final int index;
            volatile boolean once = true;
            final RxRingBuffer buffer = RxRingBuffer.getSpmcInstance();

            public MergeItemSubscriber(int index) {
                this.index = index;
            }

            @Override // rx.Subscriber
            public void onStart() {
                request(RxRingBuffer.SIZE);
            }

            @Override // rx.Observer
            public void onNext(T t) throws Throwable {
                try {
                    this.buffer.onNext(t);
                    SourceSubscriber.this.drain();
                } catch (MissingBackpressureException ex) {
                    onError(ex);
                }
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
                SourceSubscriber.this.onError(e);
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                if (this.once) {
                    this.once = false;
                    SourceSubscriber.this.drain();
                }
            }

            void requestMore(long n) {
                request(n);
            }

            void release() {
                this.buffer.release();
            }
        }
    }
}

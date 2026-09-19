package rx.internal.operators;

import java.util.Deque;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Producer;
import rx.Subscriber;

/* JADX INFO: loaded from: classes3.dex */
final class TakeLastQueueProducer<T> implements Producer {
    private static final AtomicLongFieldUpdater<TakeLastQueueProducer> REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(TakeLastQueueProducer.class, "requested");
    private final Deque<Object> deque;
    private final NotificationLite<T> notification;
    private final Subscriber<? super T> subscriber;
    private volatile boolean emittingStarted = false;
    private volatile long requested = 0;

    public TakeLastQueueProducer(NotificationLite<T> n, Deque<Object> q, Subscriber<? super T> subscriber) {
        this.notification = n;
        this.deque = q;
        this.subscriber = subscriber;
    }

    void startEmitting() {
        if (!this.emittingStarted) {
            this.emittingStarted = true;
            emit(0L);
        }
    }

    @Override // rx.Producer
    public void request(long n) {
        long _c;
        if (this.requested == LongCompanionObject.MAX_VALUE) {
            return;
        }
        if (n == LongCompanionObject.MAX_VALUE) {
            _c = REQUESTED_UPDATER.getAndSet(this, LongCompanionObject.MAX_VALUE);
        } else {
            _c = BackpressureUtils.getAndAddRequest(REQUESTED_UPDATER, this, n);
        }
        if (!this.emittingStarted) {
            return;
        }
        emit(_c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        r5 = r19.requested;
        r15 = r5 - ((long) r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0086, code lost:
    
        if (r5 != kotlin.jvm.internal.LongCompanionObject.MAX_VALUE) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
    
        if (rx.internal.operators.TakeLastQueueProducer.REQUESTED_UPDATER.compareAndSet(r19, r5, r15) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0099, code lost:
    
        if (r15 != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void emit(long r20) {
        /*
            r19 = this;
            r7 = r19
            long r0 = r7.requested
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 != 0) goto L4d
            int r0 = (r20 > r10 ? 1 : (r20 == r10 ? 0 : -1))
            if (r0 != 0) goto L9e
            java.util.Deque<java.lang.Object> r0 = r7.deque     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
        L19:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            if (r1 == 0) goto L41
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            rx.Subscriber<? super T> r2 = r7.subscriber     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            boolean r2 = r2.isUnsubscribed()     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            if (r2 == 0) goto L31
            java.util.Deque<java.lang.Object> r2 = r7.deque
            r2.clear()
            return
        L31:
            rx.internal.operators.NotificationLite<T> r2 = r7.notification     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            rx.Subscriber<? super T> r3 = r7.subscriber     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            r2.accept(r3, r1)     // Catch: java.lang.Throwable -> L39 java.lang.Throwable -> L3b
            goto L19
        L39:
            r0 = move-exception
            goto L47
        L3b:
            r0 = move-exception
            rx.Subscriber<? super T> r1 = r7.subscriber     // Catch: java.lang.Throwable -> L39
            r1.onError(r0)     // Catch: java.lang.Throwable -> L39
        L41:
            java.util.Deque<java.lang.Object> r0 = r7.deque
            r0.clear()
            goto L9e
        L47:
            java.util.Deque<java.lang.Object> r1 = r7.deque
            r1.clear()
            throw r0
        L4d:
            int r0 = (r20 > r10 ? 1 : (r20 == r10 ? 0 : -1))
            if (r0 != 0) goto L9e
        L51:
            long r0 = r7.requested
            r2 = 0
        L54:
            r12 = r2
            r2 = 1
            long r2 = r0 - r2
            r13 = r2
            int r0 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r0 < 0) goto L7f
            java.util.Deque<java.lang.Object> r0 = r7.deque
            java.lang.Object r0 = r0.poll()
            r1 = r0
            if (r0 == 0) goto L7f
            rx.Subscriber<? super T> r0 = r7.subscriber
            boolean r0 = r0.isUnsubscribed()
            if (r0 == 0) goto L70
            return
        L70:
            rx.internal.operators.NotificationLite<T> r0 = r7.notification
            rx.Subscriber<? super T> r2 = r7.subscriber
            boolean r0 = r0.accept(r2, r1)
            if (r0 == 0) goto L7b
            return
        L7b:
            int r2 = r12 + 1
            r0 = r13
            goto L54
        L7f:
            long r5 = r7.requested
            long r0 = (long) r12
            long r15 = r5 - r0
            int r0 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r0 != 0) goto L89
            goto L9c
        L89:
            java.util.concurrent.atomic.AtomicLongFieldUpdater<rx.internal.operators.TakeLastQueueProducer> r1 = rx.internal.operators.TakeLastQueueProducer.REQUESTED_UPDATER
            r2 = r19
            r3 = r5
            r17 = r5
            r5 = r15
            boolean r0 = r1.compareAndSet(r2, r3, r5)
            if (r0 == 0) goto L9d
            int r0 = (r15 > r10 ? 1 : (r15 == r10 ? 0 : -1))
            if (r0 != 0) goto L9c
            return
        L9c:
            goto L51
        L9d:
            goto L7f
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.TakeLastQueueProducer.emit(long):void");
    }
}

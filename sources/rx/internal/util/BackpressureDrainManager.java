package rx.internal.util;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.LongCompanionObject;
import rx.Producer;
import rx.annotations.Experimental;

/* JADX INFO: loaded from: classes3.dex */
@Experimental
public final class BackpressureDrainManager implements Producer {
    protected static final AtomicLongFieldUpdater<BackpressureDrainManager> REQUESTED_COUNT = AtomicLongFieldUpdater.newUpdater(BackpressureDrainManager.class, "requestedCount");
    protected final BackpressureQueueCallback actual;
    protected boolean emitting;
    protected Throwable exception;
    protected volatile long requestedCount;
    protected volatile boolean terminated;

    public interface BackpressureQueueCallback {
        boolean accept(Object obj);

        void complete(Throwable th);

        Object peek();

        Object poll();
    }

    public BackpressureDrainManager(BackpressureQueueCallback actual) {
        this.actual = actual;
    }

    public final boolean isTerminated() {
        return this.terminated;
    }

    public final void terminate() {
        this.terminated = true;
    }

    public final void terminate(Throwable error) {
        if (!this.terminated) {
            this.exception = error;
            this.terminated = true;
        }
    }

    public final void terminateAndDrain() throws Throwable {
        this.terminated = true;
        drain();
    }

    public final void terminateAndDrain(Throwable error) throws Throwable {
        if (!this.terminated) {
            this.exception = error;
            this.terminated = true;
            drain();
        }
    }

    @Override // rx.Producer
    public final void request(long n) throws Throwable {
        long r;
        boolean mayDrain;
        long u;
        if (n == 0) {
            return;
        }
        do {
            r = this.requestedCount;
            mayDrain = r == 0;
            if (r == LongCompanionObject.MAX_VALUE) {
                break;
            }
            if (n == LongCompanionObject.MAX_VALUE) {
                u = n;
                mayDrain = true;
            } else {
                u = r > LongCompanionObject.MAX_VALUE - n ? LongCompanionObject.MAX_VALUE : r + n;
            }
        } while (!REQUESTED_COUNT.compareAndSet(this, r, u));
        if (mayDrain) {
            drain();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        monitor-enter(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0046, code lost:
    
        r3 = r17.terminated;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x004d, code lost:
    
        if (r7.peek() == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004f, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0051, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x005b, code lost:
    
        if (r17.requestedCount != kotlin.jvm.internal.LongCompanionObject.MAX_VALUE) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005d, code lost:
    
        if (r5 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x005f, code lost:
    
        if (r3 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0061, code lost:
    
        r17.emitting = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0064, code lost:
    
        monitor-exit(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0065, code lost:
    
        if (1 != 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0067, code lost:
    
        monitor-enter(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0068, code lost:
    
        r17.emitting = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x006a, code lost:
    
        monitor-exit(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x006f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0070, code lost:
    
        r8 = kotlin.jvm.internal.LongCompanionObject.MAX_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0076, code lost:
    
        r8 = rx.internal.util.BackpressureDrainManager.REQUESTED_COUNT.addAndGet(r17, -r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0081, code lost:
    
        if (r8 == 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0083, code lost:
    
        if (r5 != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0085, code lost:
    
        if (r3 == false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0087, code lost:
    
        if (r5 == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x008a, code lost:
    
        monitor-exit(r17);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003e A[Catch: all -> 0x00a0, TRY_ENTER, TryCatch #1 {all -> 0x00a0, blocks: (B:35:0x0045, B:77:0x009f, B:18:0x0021, B:20:0x0027, B:33:0x003e, B:80:0x00a2, B:36:0x0046, B:40:0x0052, B:44:0x0061, B:45:0x0064, B:62:0x008a, B:56:0x0076, B:64:0x008e, B:65:0x0091), top: B:111:0x0045, inners: #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drain() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.BackpressureDrainManager.drain():void");
    }
}

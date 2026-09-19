package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable;
import rx.Producer;
import rx.Subscriber;

/* JADX INFO: loaded from: classes3.dex */
public final class OnSubscribeRange implements Observable.OnSubscribe<Integer> {
    private final int end;
    private final int start;

    public OnSubscribeRange(int start, int end) {
        this.start = start;
        this.end = end;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super Integer> o) throws Throwable {
        o.setProducer(new RangeProducer(o, this.start, this.end));
    }

    private static final class RangeProducer implements Producer {
        private static final AtomicLongFieldUpdater<RangeProducer> REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(RangeProducer.class, "requested");
        private final int end;
        private long index;
        private final Subscriber<? super Integer> o;
        private volatile long requested;

        private RangeProducer(Subscriber<? super Integer> o, int start, int end) {
            this.o = o;
            this.index = start;
            this.end = end;
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00a8, code lost:
        
            r26.index = r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00ae, code lost:
        
            if (r16 == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
        
            r26.o.onCompleted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00c1, code lost:
        
            if (rx.internal.operators.OnSubscribeRange.RangeProducer.REQUESTED_UPDATER.addAndGet(r26, -r0) != 0) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00c3, code lost:
        
            return;
         */
        @Override // rx.Producer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void request(long r27) {
            /*
                Method dump skipped, instruction units count: 204
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OnSubscribeRange.RangeProducer.request(long):void");
        }
    }
}

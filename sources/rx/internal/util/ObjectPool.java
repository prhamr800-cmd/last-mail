package rx.internal.util;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import rx.Scheduler;
import rx.functions.Action0;
import rx.internal.util.unsafe.MpmcArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.schedulers.Schedulers;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ObjectPool<T> {
    private final int maxSize;
    private Queue<T> pool;
    private Scheduler.Worker schedulerWorker;

    protected abstract T createObject();

    public ObjectPool() {
        this(0, 0, 67L);
    }

    private ObjectPool(final int min, final int max, long validationInterval) {
        this.maxSize = max;
        initialize(min);
        this.schedulerWorker = Schedulers.computation().createWorker();
        this.schedulerWorker.schedulePeriodically(new Action0() { // from class: rx.internal.util.ObjectPool.1
            @Override // rx.functions.Action0
            public void call() {
                int size = ObjectPool.this.pool.size();
                int i = 0;
                if (size < min) {
                    int sizeToBeAdded = max - size;
                    while (i < sizeToBeAdded) {
                        ObjectPool.this.pool.add(ObjectPool.this.createObject());
                        i++;
                    }
                    return;
                }
                if (size > max) {
                    int sizeToBeRemoved = size - max;
                    while (i < sizeToBeRemoved) {
                        ObjectPool.this.pool.poll();
                        i++;
                    }
                }
            }
        }, validationInterval, validationInterval, TimeUnit.SECONDS);
    }

    public T borrowObject() {
        T object = this.pool.poll();
        return object == null ? createObject() : object;
    }

    public void returnObject(T object) {
        if (object == null) {
            return;
        }
        this.pool.offer(object);
    }

    public void shutdown() {
        this.schedulerWorker.unsubscribe();
    }

    private void initialize(int min) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, 1024));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i = 0; i < min; i++) {
            this.pool.add(createObject());
        }
    }
}

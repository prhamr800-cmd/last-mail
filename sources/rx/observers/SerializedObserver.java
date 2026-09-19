package rx.observers;

import rx.Observer;
import rx.exceptions.Exceptions;

/* JADX INFO: loaded from: classes3.dex */
public class SerializedObserver<T> implements Observer<T> {
    private static final int MAX_DRAIN_ITERATION = Integer.MAX_VALUE;
    private final Observer<? super T> actual;
    private FastList queue;
    private static final Object NULL_SENTINEL = new Object();
    private static final Object COMPLETE_SENTINEL = new Object();
    private boolean emitting = false;
    private boolean terminated = false;

    static final class FastList {
        Object[] array;
        int size;

        FastList() {
        }

        public void add(Object o) {
            int s = this.size;
            Object[] a = this.array;
            if (a == null) {
                a = new Object[16];
                this.array = a;
            } else if (s == a.length) {
                Object[] array2 = new Object[(s >> 2) + s];
                System.arraycopy(a, 0, array2, 0, s);
                a = array2;
                this.array = a;
            }
            a[s] = o;
            this.size = s + 1;
        }
    }

    private static final class ErrorSentinel {
        final Throwable e;

        ErrorSentinel(Throwable e) {
            this.e = e;
        }
    }

    public SerializedObserver(Observer<? super T> s) {
        this.actual = s;
    }

    @Override // rx.Observer
    public void onCompleted() throws Throwable {
        synchronized (this) {
            try {
                if (this.terminated) {
                    return;
                }
                this.terminated = true;
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new FastList();
                    }
                    this.queue.add(COMPLETE_SENTINEL);
                    return;
                }
                this.emitting = true;
                FastList list = this.queue;
                try {
                    this.queue = null;
                    drainQueue(list);
                    this.actual.onCompleted();
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // rx.Observer
    public void onError(Throwable e) throws Throwable {
        Exceptions.throwIfFatal(e);
        synchronized (this) {
            try {
                if (this.terminated) {
                    return;
                }
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new FastList();
                    }
                    this.queue.add(new ErrorSentinel(e));
                    return;
                }
                this.emitting = true;
                FastList list = this.queue;
                try {
                    this.queue = null;
                    drainQueue(list);
                    this.actual.onError(e);
                    synchronized (this) {
                        this.emitting = false;
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

    @Override // rx.Observer
    public void onNext(T t) throws Throwable {
        synchronized (this) {
            try {
                if (this.terminated) {
                    return;
                }
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new FastList();
                    }
                    this.queue.add(t != null ? t : NULL_SENTINEL);
                    return;
                }
                this.emitting = true;
                FastList list = this.queue;
                try {
                    this.queue = null;
                    boolean skipFinal = false;
                    FastList list2 = list;
                    int iter = Integer.MAX_VALUE;
                    do {
                        try {
                            drainQueue(list2);
                            if (iter == Integer.MAX_VALUE) {
                                this.actual.onNext(t);
                            }
                            iter--;
                            if (iter > 0) {
                                synchronized (this) {
                                    list2 = this.queue;
                                    this.queue = null;
                                    if (list2 == null) {
                                        this.emitting = false;
                                        skipFinal = true;
                                        if (1 == 0) {
                                            synchronized (this) {
                                                if (this.terminated) {
                                                    FastList fastList = this.queue;
                                                    this.queue = null;
                                                } else {
                                                    this.emitting = false;
                                                }
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            if (!skipFinal) {
                                synchronized (this) {
                                    if (this.terminated) {
                                        FastList fastList2 = this.queue;
                                        this.queue = null;
                                    } else {
                                        this.emitting = false;
                                    }
                                }
                            }
                            throw th;
                        }
                    } while (iter > 0);
                    if (0 == 0) {
                        synchronized (this) {
                            if (this.terminated) {
                                list2 = this.queue;
                                this.queue = null;
                            } else {
                                this.emitting = false;
                                list2 = null;
                            }
                        }
                    }
                    drainQueue(list2);
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    void drainQueue(FastList list) {
        if (list == null || list.size == 0) {
            return;
        }
        Object[] arr$ = list.array;
        for (Object v : arr$) {
            if (v != null) {
                if (v == NULL_SENTINEL) {
                    this.actual.onNext(null);
                } else if (v == COMPLETE_SENTINEL) {
                    this.actual.onCompleted();
                } else if (v.getClass() == ErrorSentinel.class) {
                    this.actual.onError(((ErrorSentinel) v).e);
                } else {
                    this.actual.onNext(v);
                }
            } else {
                return;
            }
        }
    }
}

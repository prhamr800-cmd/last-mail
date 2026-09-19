package rx.android.lifecycle;

import kotlin.jvm.internal.LongCompanionObject;
import rx.Observable;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;

/* JADX INFO: loaded from: classes3.dex */
final class OperatorSubscribeUntil<T, R> implements Observable.Operator<T, T> {
    private final Observable<? extends R> other;

    public OperatorSubscribeUntil(Observable<? extends R> other) {
        this.other = other;
    }

    @Override // rx.functions.Func1
    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        final SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber, true);
        final Subscriber<T> subscriber2 = new Subscriber<T>(serializedSubscriber, false) { // from class: rx.android.lifecycle.OperatorSubscribeUntil.1
            @Override // rx.Observer
            public void onNext(T t) {
                serializedSubscriber.onNext(t);
            }

            @Override // rx.Observer
            public void onError(Throwable e) throws Throwable {
                try {
                    serializedSubscriber.onError(e);
                } finally {
                    serializedSubscriber.unsubscribe();
                }
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                try {
                    serializedSubscriber.onCompleted();
                } finally {
                    serializedSubscriber.unsubscribe();
                }
            }
        };
        Subscriber<R> subscriber3 = new Subscriber<R>() { // from class: rx.android.lifecycle.OperatorSubscribeUntil.2
            @Override // rx.Subscriber
            public void onStart() {
                request(LongCompanionObject.MAX_VALUE);
            }

            @Override // rx.Observer
            public void onCompleted() throws Throwable {
                serializedSubscriber.unsubscribe();
            }

            @Override // rx.Observer
            public void onError(Throwable e) {
                subscriber2.onError(e);
            }

            @Override // rx.Observer
            public void onNext(R t) throws Throwable {
                onCompleted();
            }
        };
        serializedSubscriber.add(subscriber2);
        serializedSubscriber.add(subscriber3);
        subscriber.add(serializedSubscriber);
        this.other.unsafeSubscribe(subscriber3);
        return subscriber2;
    }
}

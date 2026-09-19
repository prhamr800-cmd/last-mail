package rx.android.content;

import android.database.Cursor;
import rx.Observable;
import rx.Subscriber;

/* JADX INFO: loaded from: classes3.dex */
final class OnSubscribeCursor implements Observable.OnSubscribe<Cursor> {
    private final Cursor cursor;

    OnSubscribeCursor(Cursor cursor) {
        this.cursor = cursor;
    }

    @Override // rx.functions.Action1
    public void call(Subscriber<? super Cursor> subscriber) {
        while (!subscriber.isUnsubscribed() && this.cursor.moveToNext()) {
            try {
                try {
                    subscriber.onNext(this.cursor);
                } catch (Throwable e) {
                    if (!subscriber.isUnsubscribed()) {
                        subscriber.onError(e);
                    }
                    if (this.cursor.isClosed()) {
                        return;
                    }
                }
            } catch (Throwable th) {
                if (!this.cursor.isClosed()) {
                    this.cursor.close();
                }
                throw th;
            }
        }
        if (!subscriber.isUnsubscribed()) {
            subscriber.onCompleted();
        }
        if (this.cursor.isClosed()) {
            return;
        }
        this.cursor.close();
    }
}

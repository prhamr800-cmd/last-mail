package rx.android.app;

import android.app.Activity;
import android.app.Fragment;
import rx.Observable;
import rx.android.internal.Assertions;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Func1;

/* JADX INFO: loaded from: classes3.dex */
public final class AppObservable {
    private static final Func1<Activity, Boolean> ACTIVITY_VALIDATOR = new Func1<Activity, Boolean>() { // from class: rx.android.app.AppObservable.1
        @Override // rx.functions.Func1
        public Boolean call(Activity activity) {
            return Boolean.valueOf(!activity.isFinishing());
        }
    };
    private static final Func1<Fragment, Boolean> FRAGMENT_VALIDATOR = new Func1<Fragment, Boolean>() { // from class: rx.android.app.AppObservable.2
        @Override // rx.functions.Func1
        public Boolean call(Fragment fragment) {
            return Boolean.valueOf(fragment.isAdded() && !fragment.getActivity().isFinishing());
        }
    };
    private static final Func1<android.support.v4.app.Fragment, Boolean> FRAGMENTV4_VALIDATOR = new Func1<android.support.v4.app.Fragment, Boolean>() { // from class: rx.android.app.AppObservable.3
        @Override // rx.functions.Func1
        public Boolean call(android.support.v4.app.Fragment fragment) {
            return Boolean.valueOf(fragment.isAdded() && !fragment.getActivity().isFinishing());
        }
    };

    private AppObservable() {
        throw new AssertionError("No instances");
    }

    public static <T> Observable<T> bindActivity(Activity activity, Observable<T> observable) {
        Assertions.assertUiThread();
        return (Observable<T>) observable.observeOn(AndroidSchedulers.mainThread()).lift(new OperatorConditionalBinding(activity, ACTIVITY_VALIDATOR));
    }

    public static <T> Observable<T> bindFragment(Fragment fragment, Observable<T> observable) {
        Assertions.assertUiThread();
        return (Observable<T>) observable.observeOn(AndroidSchedulers.mainThread()).lift(new OperatorConditionalBinding(fragment, FRAGMENT_VALIDATOR));
    }

    public static <T> Observable<T> bindSupportFragment(android.support.v4.app.Fragment fragment, Observable<T> observable) {
        Assertions.assertUiThread();
        return (Observable<T>) observable.observeOn(AndroidSchedulers.mainThread()).lift(new OperatorConditionalBinding(fragment, FRAGMENTV4_VALIDATOR));
    }
}

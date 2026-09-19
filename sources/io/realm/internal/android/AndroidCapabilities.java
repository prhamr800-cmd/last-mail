package io.realm.internal.android;

import android.os.Looper;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.internal.Capabilities;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidCapabilities implements Capabilities {

    @SuppressFBWarnings({"MS_SHOULD_BE_FINAL"})
    public static boolean EMULATE_MAIN_THREAD = false;
    private final Looper looper = Looper.myLooper();
    private final boolean isIntentServiceThread = isIntentServiceThread();

    @Override // io.realm.internal.Capabilities
    public boolean canDeliverNotification() {
        return hasLooper() && !this.isIntentServiceThread;
    }

    @Override // io.realm.internal.Capabilities
    public void checkCanDeliverNotification(@Nullable String exceptionMessage) {
        String str;
        String str2;
        if (!hasLooper()) {
            if (exceptionMessage == null) {
                str2 = "";
            } else {
                str2 = exceptionMessage + " Realm cannot be automatically updated on a thread without a looper.";
            }
            throw new IllegalStateException(str2);
        }
        if (this.isIntentServiceThread) {
            if (exceptionMessage == null) {
                str = "";
            } else {
                str = exceptionMessage + " Realm cannot be automatically updated on an IntentService thread.";
            }
            throw new IllegalStateException(str);
        }
    }

    @Override // io.realm.internal.Capabilities
    public boolean isMainThread() {
        return this.looper != null && (EMULATE_MAIN_THREAD || this.looper == Looper.getMainLooper());
    }

    private boolean hasLooper() {
        return this.looper != null;
    }

    private static boolean isIntentServiceThread() {
        String threadName = Thread.currentThread().getName();
        return threadName != null && threadName.startsWith("IntentService[");
    }
}

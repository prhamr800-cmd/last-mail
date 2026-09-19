package io.realm.internal.network;

import io.realm.ErrorCode;
import io.realm.internal.network.AuthServerResponse;
import io.realm.log.RealmLog;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExponentialBackoffTask<T extends AuthServerResponse> implements Runnable {
    private final int maxRetries;

    protected abstract T execute();

    protected abstract void onError(T t);

    protected abstract void onSuccess(T t);

    public ExponentialBackoffTask(int maxRetries) {
        this.maxRetries = maxRetries;
    }

    public ExponentialBackoffTask() {
        this(2147483646);
    }

    protected boolean isSuccess(T result) {
        return result != null && result.isValid();
    }

    protected boolean shouldAbortTask(T response) {
        if (Thread.interrupted()) {
            return true;
        }
        return (response.isValid() || response.getError().getErrorCode() == ErrorCode.IO_EXCEPTION) ? false : true;
    }

    @Override // java.lang.Runnable
    public void run() {
        int attempt = 0;
        while (!Thread.interrupted()) {
            attempt++;
            long sleep = calculateExponentialDelay(attempt - 1, TimeUnit.MINUTES.toMillis(5L));
            if (sleep > 0) {
                try {
                    Thread.sleep(sleep);
                } catch (InterruptedException e) {
                    RealmLog.debug("Incremental backoff was interrupted.", new Object[0]);
                    return;
                }
            }
            AuthServerResponse authServerResponseExecute = execute();
            if (isSuccess(authServerResponseExecute)) {
                onSuccess(authServerResponseExecute);
                return;
            } else if (shouldAbortTask(authServerResponseExecute) || attempt == this.maxRetries + 1) {
                onError(authServerResponseExecute);
                return;
            }
        }
    }

    private static long calculateExponentialDelay(int failedAttempts, long maxDelayInMs) {
        double delayInMs = ((Math.pow(2.0d, failedAttempts) - 1.0d) / 2.0d) * 1000.0d * 1.0d;
        return ((double) maxDelayInMs) < delayInMs ? maxDelayInMs : (long) delayInMs;
    }
}

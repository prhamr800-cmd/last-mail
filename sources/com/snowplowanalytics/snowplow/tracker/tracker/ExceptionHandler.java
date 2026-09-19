package com.snowplowanalytics.snowplow.tracker.tracker;

import com.snowplowanalytics.snowplow.tracker.Tracker;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.SelfDescribing;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.lang.Thread;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int MAX_CLASS_NAME_LENGTH = 1024;
    private static final int MAX_EXCEPTION_NAME_LENGTH = 1024;
    private static final int MAX_MESSAGE_LENGTH = 2048;
    private static final int MAX_STACK_LENGTH = 8096;
    private static final int MAX_THREAD_NAME_LENGTH = 1024;
    private static final String TAG = ExceptionHandler.class.getSimpleName();
    private final Thread.UncaughtExceptionHandler defaultHandler = Thread.getDefaultUncaughtExceptionHandler();

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread t, Throwable e) {
        Logger.d(TAG, "Uncaught exception being tracked...", new Object[0]);
        String message = truncateString(e.getMessage(), 2048);
        if (message == null || message.isEmpty()) {
            message = "Android Exception. Null or empty message found";
        }
        String stack = truncateString(Util.stackTraceToString(e), MAX_STACK_LENGTH);
        String threadName = truncateString(t.getName(), 1024);
        Integer lineNumber = null;
        String className = null;
        if (e.getStackTrace().length > 0) {
            StackTraceElement stackElement = e.getStackTrace()[0];
            lineNumber = Integer.valueOf(stackElement.getLineNumber());
            if (lineNumber.intValue() < 0) {
                lineNumber = null;
            }
            className = truncateString(stackElement.getClassName(), 1024);
        }
        String exceptionName = truncateString(e.getClass().getName(), 1024);
        Map<String, Object> data = new HashMap<>();
        Util.addToMap("message", message, data);
        Util.addToMap(Parameters.APP_ERROR_STACK, stack, data);
        Util.addToMap(Parameters.APP_ERROR_THREAD_NAME, threadName, data);
        Util.addToMap(Parameters.APP_ERROR_THREAD_ID, Long.valueOf(t.getId()), data);
        Util.addToMap(Parameters.APP_ERROR_LANG, "JAVA", data);
        Util.addToMap(Parameters.APP_ERROR_LINE, lineNumber, data);
        Util.addToMap(Parameters.APP_ERROR_CLASS_NAME, className, data);
        Util.addToMap(Parameters.APP_ERROR_EXCEPTION_NAME, exceptionName, data);
        Util.addToMap(Parameters.APP_ERROR_FATAL, true, data);
        Tracker.instance().track(SelfDescribing.builder().eventData(new SelfDescribingJson(TrackerConstants.APPLICATION_ERROR_SCHEMA, data)).build());
        this.defaultHandler.uncaughtException(t, e);
    }

    private String truncateString(String str, int maxLength) {
        if (str == null) {
            return null;
        }
        return str.substring(0, Math.min(str.length(), maxLength));
    }
}

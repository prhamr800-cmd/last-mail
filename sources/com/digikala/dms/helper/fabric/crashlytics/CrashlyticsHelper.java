package com.digikala.dms.helper.fabric.crashlytics;

import android.content.Context;
import com.crashlytics.android.Crashlytics;
import io.fabric.sdk.android.Fabric;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsHelper {
    public static void init(Context context) {
        Fabric.with(context, new Crashlytics());
    }

    public static void logUser(String id, String name) {
        Crashlytics.setUserIdentifier(id);
        Crashlytics.setUserName(name);
    }
}

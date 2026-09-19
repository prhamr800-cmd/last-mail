package com.digikala.dms.helper;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPreferencesHelper {
    private static final String NAME_SHARED_PREFERENCES_DELIVERY = "PREF_DELIVERY";
    private static final String NAME_SHARED_PREFERENCES_QUESTION = "PREF_QUESTION";

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static SharedPreferences getDeliverySharedPreferences(Context context) {
        return context.getSharedPreferences(NAME_SHARED_PREFERENCES_DELIVERY, 0);
    }

    public static SharedPreferences getQuestionSharedPreferences(Context context) {
        return context.getSharedPreferences(NAME_SHARED_PREFERENCES_QUESTION, 0);
    }
}

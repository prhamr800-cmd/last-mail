package com.digikala.dms.core;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.support.multidex.MultiDexApplication;
import com.digikala.dms.helper.fabric.appsee.AppseeHelper;
import com.digikala.dms.helper.fabric.crashlytics.CrashlyticsHelper;
import com.digikala.dms.helper.webservice.VolleyHelper;
import com.digikala.dms.util.Util;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class App extends MultiDexApplication {
    private static FirebaseAnalytics firebaseAnalytics;
    private static Application mInstance;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mInstance = this;
        firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        CrashlyticsHelper.init(this);
        AppseeHelper.init(this);
        VolleyHelper.init(this);
        SnowplowHelper.init(this);
        setPreferenceLocale();
        Realm.init(this);
        RealmConfiguration realmConfiguration = new RealmConfiguration.Builder().deleteRealmIfMigrationNeeded().schemaVersion(4L).migration(new DMSRealmMigration()).build();
        Realm.setDefaultConfiguration(realmConfiguration);
    }

    public static synchronized Context getApplication() {
        return mInstance;
    }

    private void setLocale(String language) {
        Locale locale = new Locale(language);
        Locale.setDefault(locale);
        Configuration config = new Configuration();
        config.locale = locale;
        getResources().updateConfiguration(config, null);
    }

    private void setPreferenceLocale() {
        String appLanguage = Util.getLanguageFromSharedPreference(this);
        setLocale(appLanguage);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setPreferenceLocale();
    }

    public static FirebaseAnalytics getfirebaseAnalytics() {
        return firebaseAnalytics;
    }
}

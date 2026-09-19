package com.snowplowanalytics.snowplow.tracker;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* JADX INFO: loaded from: classes2.dex */
public enum DevicePlatforms {
    Web("web"),
    Mobile("mob"),
    Desktop("pc"),
    ServerSideApp("srv"),
    General(SettingsJsonConstants.APP_KEY),
    ConnectedTV(Parameters.TRACKER_VERSION),
    GameConsole("cnsl"),
    InternetOfThings("iot");

    private final String value;

    DevicePlatforms(String value) {
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }
}

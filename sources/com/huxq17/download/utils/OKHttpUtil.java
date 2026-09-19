package com.huxq17.download.utils;

import android.content.Context;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes2.dex */
public class OKHttpUtil {
    private static OkHttpClient OK_HTTP_CLIENT;

    private OKHttpUtil() {
    }

    public static void init(Context context) {
        OK_HTTP_CLIENT = new OkHttpClient().newBuilder().followRedirects(true).retryOnConnectionFailure(true).protocols(Collections.singletonList(Protocol.HTTP_1_1)).writeTimeout(20L, TimeUnit.SECONDS).readTimeout(20L, TimeUnit.SECONDS).connectTimeout(15L, TimeUnit.SECONDS).build();
    }

    public static OkHttpClient get() {
        return OK_HTTP_CLIENT;
    }
}

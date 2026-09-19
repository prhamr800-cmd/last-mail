package com.snowplowanalytics.snowplow.tracker.payload;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface Payload {
    void add(String str, Object obj);

    void add(String str, String str2);

    void addMap(Map<String, Object> map);

    void addMap(Map map, Boolean bool, String str, String str2);

    long getByteSize();

    Map getMap();

    String toString();
}

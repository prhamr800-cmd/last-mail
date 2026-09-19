package com.huxq17.download;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class PumpFactory {
    private static Map<Class<?>, Object> serviceMap = new ConcurrentHashMap();

    public static <T> T getService(Class<T> cls) {
        return (T) serviceMap.get(cls);
    }

    public static <T> void addService(Class<T> serviceClass, T service) {
        serviceMap.put(serviceClass, service);
    }

    public static int getServiceCount() {
        return serviceMap.size();
    }
}

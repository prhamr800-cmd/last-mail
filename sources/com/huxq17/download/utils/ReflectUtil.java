package com.huxq17.download.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class ReflectUtil {
    public static <T> T newInstance(Class<T> cls) {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            T instance = declaredConstructor.newInstance(new Object[0]);
            return instance;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            throw new RuntimeException("Do not do strange operation in the constructor.");
        }
    }

    public static Object invokeMethod(Object targetObject, String methodName, Object[] params, Class[] paramTypes) throws NoSuchMethodException {
        if (targetObject == null || methodName == null || methodName.isEmpty()) {
            return null;
        }
        Method method = null;
        Class<?> superclass = targetObject.getClass();
        while (true) {
            if (superclass == Object.class) {
                break;
            }
            try {
                method = superclass.getDeclaredMethod(methodName, paramTypes);
                break;
            } catch (Exception e) {
                superclass = superclass.getSuperclass();
            }
        }
        if (method == null) {
            return null;
        }
        method.setAccessible(true);
        try {
            Object returnObj = method.invoke(targetObject, params);
            return returnObj;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}

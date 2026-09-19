package com.huxq17.download.utils;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class MD5Util {
    private MD5Util() {
    }

    public static String getMD5(File file) {
        MessageDigest MD5;
        byte[] buffer;
        FileInputStream fileInputStream = null;
        try {
            MD5 = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
            fileInputStream = new FileInputStream(file);
            buffer = new byte[8192];
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        } finally {
            Util.closeQuietly(fileInputStream);
        }
        while (true) {
            int length = fileInputStream.read(buffer);
            if (length == -1) {
                return bytesToHexString(MD5.digest());
            }
            MD5.update(buffer, 0, length);
            Util.closeQuietly(fileInputStream);
        }
    }

    public static String getMD5ByStr(String src) {
        try {
            MessageDigest MD5 = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
            byte[] buffer = src.getBytes();
            MD5.update(buffer);
            return bytesToHexString(MD5.digest());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String bytesToHexString(byte[] src) {
        StringBuilder stringBuilder = new StringBuilder();
        if (src == null || src.length <= 0) {
            return "";
        }
        for (byte b : src) {
            int v = b & 255;
            String hv = Integer.toHexString(v);
            if (hv.length() < 2) {
                stringBuilder.append(0);
            }
            stringBuilder.append(hv);
        }
        return stringBuilder.toString();
    }
}

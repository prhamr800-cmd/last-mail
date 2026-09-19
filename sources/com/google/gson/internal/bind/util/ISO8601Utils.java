package com.google.gson.internal.bind.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis) {
        return format(date, millis, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean millis, TimeZone tz) {
        Calendar calendar = new GregorianCalendar(tz, Locale.US);
        calendar.setTime(date);
        int capacity = "yyyy-MM-ddThh:mm:ss".length();
        StringBuilder formatted = new StringBuilder(capacity + (millis ? ".sss".length() : 0) + (tz.getRawOffset() == 0 ? "Z" : "+hh:mm").length());
        padInt(formatted, calendar.get(1), "yyyy".length());
        formatted.append('-');
        padInt(formatted, calendar.get(2) + 1, "MM".length());
        formatted.append('-');
        padInt(formatted, calendar.get(5), "dd".length());
        formatted.append('T');
        padInt(formatted, calendar.get(11), "hh".length());
        formatted.append(':');
        padInt(formatted, calendar.get(12), "mm".length());
        formatted.append(':');
        padInt(formatted, calendar.get(13), "ss".length());
        if (millis) {
            formatted.append('.');
            padInt(formatted, calendar.get(14), "sss".length());
        }
        int offset = tz.getOffset(calendar.getTimeInMillis());
        if (offset != 0) {
            int hours = Math.abs((offset / 60000) / 60);
            int minutes = Math.abs((offset / 60000) % 60);
            formatted.append(offset >= 0 ? '+' : '-');
            padInt(formatted, hours, "hh".length());
            formatted.append(':');
            padInt(formatted, minutes, "mm".length());
        } else {
            formatted.append('Z');
        }
        return formatted.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0064 A[Catch: IllegalArgumentException -> 0x004f, NumberFormatException -> 0x0054, IndexOutOfBoundsException -> 0x0059, TryCatch #5 {IllegalArgumentException -> 0x004f, IndexOutOfBoundsException -> 0x0059, NumberFormatException -> 0x0054, blocks: (B:11:0x003a, B:13:0x0040, B:23:0x0064, B:25:0x0075, B:26:0x0077, B:28:0x0084, B:29:0x0086, B:31:0x008d, B:36:0x0099, B:41:0x00a9, B:43:0x00b2, B:56:0x00e2, B:62:0x00f7, B:63:0x0114), top: B:119:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00da A[Catch: IllegalArgumentException -> 0x0204, NumberFormatException -> 0x0208, IndexOutOfBoundsException -> 0x020d, TRY_LEAVE, TryCatch #6 {NumberFormatException -> 0x0208, IllegalArgumentException -> 0x0204, IndexOutOfBoundsException -> 0x020d, blocks: (B:3:0x0006, B:5:0x0018, B:6:0x001a, B:8:0x0026, B:9:0x0028, B:51:0x00d4, B:53:0x00da, B:65:0x0117, B:69:0x0135, B:71:0x0143, B:74:0x0153, B:68:0x0124), top: B:117:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f4 A[Catch: IllegalArgumentException -> 0x01fe, NumberFormatException -> 0x0200, IndexOutOfBoundsException -> 0x0202, TryCatch #4 {NumberFormatException -> 0x0200, IllegalArgumentException -> 0x01fe, IndexOutOfBoundsException -> 0x0202, blocks: (B:87:0x01c1, B:85:0x01be, B:77:0x017a, B:80:0x018b, B:81:0x01b1, B:89:0x01f4, B:90:0x01fd), top: B:120:0x00d8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date parse(java.lang.String r26, java.text.ParsePosition r27) throws java.text.ParseException {
        /*
            Method dump skipped, instruction units count: 650
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean checkOffset(String value, int offset, char expected) {
        return offset < value.length() && value.charAt(offset) == expected;
    }

    private static int parseInt(String value, int beginIndex, int endIndex) throws NumberFormatException {
        if (beginIndex < 0 || endIndex > value.length() || beginIndex > endIndex) {
            throw new NumberFormatException(value);
        }
        int i = beginIndex;
        int result = 0;
        if (i < endIndex) {
            int i2 = i + 1;
            int digit = Character.digit(value.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = -digit;
            i = i2;
        }
        while (i < endIndex) {
            int i3 = i + 1;
            int digit2 = Character.digit(value.charAt(i), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + value.substring(beginIndex, endIndex));
            }
            result = (result * 10) - digit2;
            i = i3;
        }
        return -result;
    }

    private static void padInt(StringBuilder buffer, int value, int length) {
        String strValue = Integer.toString(value);
        for (int i = length - strValue.length(); i > 0; i--) {
            buffer.append('0');
        }
        buffer.append(strValue);
    }

    private static int indexOfNonDigit(String string, int offset) {
        for (int i = offset; i < string.length(); i++) {
            char c = string.charAt(i);
            if (c < '0' || c > '9') {
                return i;
            }
        }
        int i2 = string.length();
        return i2;
    }
}

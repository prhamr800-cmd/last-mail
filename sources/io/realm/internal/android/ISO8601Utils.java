package io.realm.internal.android;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);
    private static final TimeZone TIMEZONE_Z = TIMEZONE_UTC;

    public static Date parse(String date, ParsePosition pos) throws ParseException {
        String input;
        int offset;
        TimeZone timezone;
        int offset2;
        char c;
        try {
            int offset3 = pos.getIndex();
            int offset4 = offset3 + 4;
            int offset5 = parseInt(date, offset3, offset4);
            if (checkOffset(date, offset4, '-')) {
                offset4++;
            }
            int offset6 = offset4 + 2;
            int offset7 = parseInt(date, offset4, offset6);
            if (checkOffset(date, offset6, '-')) {
                offset6++;
            }
            int endOffset = offset6 + 2;
            int offset8 = parseInt(date, offset6, endOffset);
            int hour = 0;
            int minutes = 0;
            int seconds = 0;
            int milliseconds = 0;
            boolean hasT = checkOffset(date, endOffset, 'T');
            if (!hasT && date.length() <= endOffset) {
                Calendar calendar = new GregorianCalendar(offset5, offset7 - 1, offset8);
                pos.setIndex(endOffset);
                return calendar.getTime();
            }
            if (hasT) {
                int offset9 = endOffset + 1;
                int offset10 = offset9 + 2;
                hour = parseInt(date, offset9, offset10);
                if (checkOffset(date, offset10, ':')) {
                    offset10++;
                }
                int offset11 = offset10 + 2;
                minutes = parseInt(date, offset10, offset11);
                if (checkOffset(date, offset11, ':')) {
                    offset11++;
                }
                endOffset = offset11;
                if (date.length() > endOffset && (c = date.charAt(endOffset)) != 'Z' && c != '+' && c != '-') {
                    int offset12 = endOffset + 2;
                    int seconds2 = parseInt(date, endOffset, offset12);
                    if (seconds2 > 59 && seconds2 < 63) {
                        seconds2 = 59;
                    }
                    seconds = seconds2;
                    if (checkOffset(date, offset12, '.')) {
                        int offset13 = offset12 + 1;
                        endOffset = indexOfNonDigit(date, offset13 + 1);
                        int parseEndOffset = Math.min(endOffset, offset13 + 3);
                        int fraction = parseInt(date, offset13, parseEndOffset);
                        switch (parseEndOffset - offset13) {
                            case 1:
                                milliseconds = fraction * 100;
                                break;
                            case 2:
                                milliseconds = fraction * 10;
                                break;
                            default:
                                milliseconds = fraction;
                                break;
                        }
                    } else {
                        endOffset = offset12;
                    }
                }
            }
            if (date.length() <= endOffset) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char timezoneIndicator = date.charAt(endOffset);
            if (timezoneIndicator == 'Z') {
                timezone = TIMEZONE_Z;
                offset2 = endOffset + 1;
            } else {
                if (timezoneIndicator != '+' && timezoneIndicator != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + timezoneIndicator + "'");
                }
                String timezoneOffset = date.substring(endOffset);
                int offset14 = endOffset + timezoneOffset.length();
                if (timezoneOffset.length() == 3) {
                    timezoneOffset = timezoneOffset + "00";
                }
                if (!"+0000".equals(timezoneOffset) && !"+00:00".equals(timezoneOffset)) {
                    String timezoneId = "GMT" + timezoneOffset;
                    TimeZone timezone2 = TimeZone.getTimeZone(timezoneId);
                    String act = timezone2.getID();
                    if (act.equals(timezoneId)) {
                        offset = offset14;
                    } else {
                        offset = offset14;
                        String cleaned = act.replace(":", "");
                        if (!cleaned.equals(timezoneId)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + timezoneId + " given, resolves to " + timezone2.getID());
                        }
                    }
                    timezone = timezone2;
                    offset2 = offset;
                } else {
                    offset = offset14;
                    timezone = TIMEZONE_Z;
                    offset2 = offset;
                }
            }
            Calendar calendar2 = new GregorianCalendar(timezone);
            calendar2.setLenient(false);
            calendar2.set(1, offset5);
            calendar2.set(2, offset7 - 1);
            calendar2.set(5, offset8);
            calendar2.set(11, hour);
            calendar2.set(12, minutes);
            calendar2.set(13, seconds);
            calendar2.set(14, milliseconds);
            pos.setIndex(offset2);
            return calendar2.getTime();
        } catch (IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException fail) {
            if (date == null) {
                input = null;
            } else {
                input = Typography.quote + date + "'";
            }
            String msg = fail.getMessage();
            if (msg == null || msg.isEmpty()) {
                msg = "(" + fail.getClass().getName() + ")";
            }
            ParseException ex = new ParseException("Failed to parse date [" + input + "]: " + msg, pos.getIndex());
            ex.initCause(fail);
            throw ex;
        }
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

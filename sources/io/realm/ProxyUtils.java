package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.internal.OsList;
import io.realm.internal.android.JsonUtils;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class ProxyUtils {
    ProxyUtils() {
    }

    static <E> void setRealmListWithJsonObject(RealmList<E> realmList, JSONObject jsonObject, String fieldName) throws JSONException {
        if (!jsonObject.has(fieldName)) {
            return;
        }
        OsList osList = realmList.getOsList();
        if (jsonObject.isNull(fieldName)) {
            osList.removeAll();
            return;
        }
        JSONArray jsonArray = jsonObject.getJSONArray(fieldName);
        osList.removeAll();
        int arraySize = jsonArray.length();
        int i = 0;
        if (realmList.clazz == Boolean.class) {
            while (true) {
                int i2 = i;
                if (i2 < arraySize) {
                    if (jsonArray.isNull(i2)) {
                        osList.addNull();
                    } else {
                        osList.addBoolean(jsonArray.getBoolean(i2));
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        } else if (realmList.clazz == Float.class) {
            while (true) {
                int i3 = i;
                if (i3 < arraySize) {
                    if (jsonArray.isNull(i3)) {
                        osList.addNull();
                    } else {
                        osList.addFloat((float) jsonArray.getDouble(i3));
                    }
                    i = i3 + 1;
                } else {
                    return;
                }
            }
        } else if (realmList.clazz == Double.class) {
            while (true) {
                int i4 = i;
                if (i4 < arraySize) {
                    if (jsonArray.isNull(i4)) {
                        osList.addNull();
                    } else {
                        osList.addDouble(jsonArray.getDouble(i4));
                    }
                    i = i4 + 1;
                } else {
                    return;
                }
            }
        } else if (realmList.clazz == String.class) {
            while (true) {
                int i5 = i;
                if (i5 < arraySize) {
                    if (jsonArray.isNull(i5)) {
                        osList.addNull();
                    } else {
                        osList.addString(jsonArray.getString(i5));
                    }
                    i = i5 + 1;
                } else {
                    return;
                }
            }
        } else if (realmList.clazz == byte[].class) {
            while (true) {
                int i6 = i;
                if (i6 < arraySize) {
                    if (jsonArray.isNull(i6)) {
                        osList.addNull();
                    } else {
                        osList.addBinary(JsonUtils.stringToBytes(jsonArray.getString(i6)));
                    }
                    i = i6 + 1;
                } else {
                    return;
                }
            }
        } else if (realmList.clazz == Date.class) {
            while (true) {
                int i7 = i;
                if (i7 < arraySize) {
                    if (jsonArray.isNull(i7)) {
                        osList.addNull();
                    } else {
                        Object timestamp = jsonArray.get(i7);
                        if (timestamp instanceof String) {
                            osList.addDate(JsonUtils.stringToDate((String) timestamp));
                        } else {
                            osList.addDate(new Date(jsonArray.getLong(i7)));
                        }
                    }
                    i = i7 + 1;
                } else {
                    return;
                }
            }
        } else {
            if (realmList.clazz != Long.class && realmList.clazz != Integer.class && realmList.clazz != Short.class && realmList.clazz != Byte.class) {
                throwWrongElementType(realmList.clazz);
                return;
            }
            while (true) {
                int i8 = i;
                if (i8 < arraySize) {
                    if (jsonArray.isNull(i8)) {
                        osList.addNull();
                    } else {
                        osList.addLong(jsonArray.getLong(i8));
                    }
                    i = i8 + 1;
                } else {
                    return;
                }
            }
        }
    }

    @TargetApi(11)
    static <E> RealmList<E> createRealmListWithJsonStream(Class<E> elementClass, JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == null) {
            jsonReader.skipValue();
            return null;
        }
        jsonReader.beginArray();
        RealmList realmList = new RealmList();
        if (elementClass == Boolean.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Boolean.valueOf(jsonReader.nextBoolean()));
                }
            }
        } else if (elementClass == Float.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Float.valueOf((float) jsonReader.nextDouble()));
                }
            }
        } else if (elementClass == Double.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Double.valueOf(jsonReader.nextDouble()));
                }
            }
        } else if (elementClass == String.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(jsonReader.nextString());
                }
            }
        } else if (elementClass == byte[].class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(JsonUtils.stringToBytes(jsonReader.nextString()));
                }
            }
        } else if (elementClass == Date.class) {
            while (jsonReader.hasNext()) {
                JsonToken token = jsonReader.peek();
                if (token == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else if (token == JsonToken.NUMBER) {
                    realmList.add(new Date(jsonReader.nextLong()));
                } else {
                    realmList.add(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            }
        } else if (elementClass == Long.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Long.valueOf(jsonReader.nextLong()));
                }
            }
        } else if (elementClass == Integer.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Integer.valueOf((int) jsonReader.nextLong()));
                }
            }
        } else if (elementClass == Short.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Short.valueOf((short) jsonReader.nextLong()));
                }
            }
        } else if (elementClass == Byte.class) {
            while (jsonReader.hasNext()) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    realmList.add(null);
                } else {
                    realmList.add(Byte.valueOf((byte) jsonReader.nextLong()));
                }
            }
        } else {
            throwWrongElementType(elementClass);
        }
        jsonReader.endArray();
        return realmList;
    }

    private static void throwWrongElementType(@Nullable Class clazz) {
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Element type '%s' is not handled.", clazz));
    }
}

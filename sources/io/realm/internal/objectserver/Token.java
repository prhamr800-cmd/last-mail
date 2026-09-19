package io.realm.internal.objectserver;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Token {
    private static final String KEY_ACCESS = "access";
    private static final String KEY_EXPIRES = "expires";
    private static final String KEY_IDENTITY = "identity";
    private static final String KEY_IS_ADMIN = "is_admin";
    private static final String KEY_PATH = "path";
    private static final String KEY_TOKEN = "token";
    private static final String KEY_TOKEN_DATA = "token_data";
    private final long expiresSec;
    private final String identity;
    private final boolean isAdmin;
    private final String path;
    private final Permission[] permissions;
    private final String value;

    public enum Permission {
        UNKNOWN,
        UPLOAD,
        DOWNLOAD,
        REFRESH,
        MANAGE;

        public static final Permission[] ALL = {UPLOAD, DOWNLOAD, REFRESH, MANAGE};
    }

    public static Token from(JSONObject token) throws JSONException {
        Permission[] permissions;
        String value = token.getString(KEY_TOKEN);
        JSONObject tokenData = token.getJSONObject(KEY_TOKEN_DATA);
        String identity = tokenData.getString(KEY_IDENTITY);
        String path = tokenData.optString("path");
        long expiresSec = tokenData.getLong(KEY_EXPIRES);
        JSONArray access = tokenData.getJSONArray(KEY_ACCESS);
        int i = 0;
        if (access == null) {
            permissions = new Permission[0];
        } else {
            Permission[] permissions2 = new Permission[access.length()];
            while (true) {
                int i2 = i;
                int i3 = access.length();
                if (i2 >= i3) {
                    break;
                }
                try {
                    permissions2[i2] = Permission.valueOf(access.getString(i2));
                } catch (IllegalArgumentException e) {
                    permissions2[i2] = Permission.UNKNOWN;
                }
                i = i2 + 1;
            }
            permissions = permissions2;
        }
        boolean isAdmin = tokenData.optBoolean(KEY_IS_ADMIN);
        return new Token(value, identity, path, expiresSec, permissions, isAdmin);
    }

    public Token(String value, String identity, String path, long expiresSec, Permission[] permissions) {
        this(value, identity, path, expiresSec, permissions, false);
    }

    public Token(String value, String identity, String path, long expiresSec, Permission[] permissions, boolean isAdmin) {
        this.value = value;
        this.identity = identity;
        this.path = path;
        this.expiresSec = expiresSec;
        if (permissions != null) {
            this.permissions = (Permission[]) Arrays.copyOf(permissions, permissions.length);
        } else {
            this.permissions = new Permission[0];
        }
        this.isAdmin = isAdmin;
    }

    public String value() {
        return this.value;
    }

    public String identity() {
        return this.identity;
    }

    public String path() {
        return this.path;
    }

    public boolean isAdmin() {
        return this.isAdmin;
    }

    public long expiresSec() {
        return this.expiresSec;
    }

    public long expiresMs() {
        long expiresMs = this.expiresSec * 1000;
        if (expiresMs < this.expiresSec) {
            return LongCompanionObject.MAX_VALUE;
        }
        return expiresMs;
    }

    @SuppressFBWarnings({"MS_MUTABLE_ARRAY"})
    public Permission[] permissions() {
        return (Permission[]) Arrays.copyOf(this.permissions, this.permissions.length);
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_TOKEN, this.value);
            JSONObject tokenData = new JSONObject();
            tokenData.put(KEY_IDENTITY, this.identity);
            tokenData.put("path", this.path);
            tokenData.put(KEY_EXPIRES, this.expiresSec);
            JSONArray perms = new JSONArray();
            for (int i = 0; i < this.permissions.length; i++) {
                perms.put(this.permissions[i].toString().toLowerCase(Locale.US));
            }
            tokenData.put(KEY_ACCESS, perms);
            tokenData.put(KEY_IS_ADMIN, this.isAdmin);
            jSONObject.put(KEY_TOKEN_DATA, tokenData);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException("Could not convert Token to JSON.", e);
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Token token = (Token) o;
        if (this.expiresSec == token.expiresSec && this.isAdmin == token.isAdmin && this.value.equals(token.value) && Arrays.equals(this.permissions, token.permissions) && this.identity.equals(token.identity)) {
            return this.path != null ? this.path.equals(token.path) : token.path == null;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.value.hashCode() * 31) + ((int) (this.expiresSec ^ (this.expiresSec >>> 32)))) * 31) + Arrays.hashCode(this.permissions)) * 31) + this.identity.hashCode()) * 31) + (this.path != null ? this.path.hashCode() : 0)) * 31) + (this.isAdmin ? 1 : 0);
    }
}

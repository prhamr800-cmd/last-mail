package com.google.firebase.messaging;

/* JADX INFO: loaded from: classes2.dex */
public final class SendException extends Exception {
    public static final int ERROR_INVALID_PARAMETERS = 1;
    public static final int ERROR_SIZE = 2;
    public static final int ERROR_TOO_MANY_MESSAGES = 4;
    public static final int ERROR_TTL_EXCEEDED = 3;
    public static final int ERROR_UNKNOWN = 0;
    private final int errorCode;

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    SendException(java.lang.String r8) {
        /*
            r7 = this;
            r7.<init>(r8)
            r0 = 4
            r1 = 3
            r2 = 2
            r3 = 1
            r4 = 0
            if (r8 == 0) goto L5a
            java.util.Locale r5 = java.util.Locale.US
            java.lang.String r8 = r8.toLowerCase(r5)
            r5 = -1
            int r6 = r8.hashCode()
            switch(r6) {
                case -1743242157: goto L43;
                case -1290953729: goto L38;
                case -920906446: goto L2e;
                case -617027085: goto L24;
                case -95047692: goto L1a;
                default: goto L19;
            }
        L19:
            goto L4c
        L1a:
            java.lang.String r6 = "missing_to"
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L4c
            r5 = 1
            goto L4c
        L24:
            java.lang.String r6 = "messagetoobig"
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L4c
            r5 = 2
            goto L4c
        L2e:
            java.lang.String r6 = "invalid_parameters"
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L4c
            r5 = 0
            goto L4c
        L38:
            java.lang.String r6 = "toomanymessages"
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L4c
            r5 = 4
            goto L4c
        L43:
            java.lang.String r6 = "service_not_available"
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L4c
            r5 = 3
        L4c:
            switch(r5) {
                case 0: goto L57;
                case 1: goto L57;
                case 2: goto L54;
                case 3: goto L51;
                case 4: goto L50;
                default: goto L4f;
            }
        L4f:
            goto L5a
        L50:
            goto L5c
        L51:
            r0 = 3
            goto L5c
        L54:
            r0 = 2
            goto L5c
        L57:
            r0 = 1
            goto L5c
        L5a:
            r0 = 0
        L5c:
            r7.errorCode = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.SendException.<init>(java.lang.String):void");
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}

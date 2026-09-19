package com.squareup.okhttp;

/* JADX INFO: loaded from: classes2.dex */
public enum TlsVersion {
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    final String javaName;

    TlsVersion(String javaName) {
        this.javaName = javaName;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.squareup.okhttp.TlsVersion forJavaName(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            switch(r0) {
                case -503070503: goto L26;
                case -503070502: goto L1c;
                case 79201641: goto L12;
                case 79923350: goto L8;
                default: goto L7;
            }
        L7:
            goto L30
        L8:
            java.lang.String r0 = "TLSv1"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L30
            r0 = 2
            goto L31
        L12:
            java.lang.String r0 = "SSLv3"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L30
            r0 = 3
            goto L31
        L1c:
            java.lang.String r0 = "TLSv1.2"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L30
            r0 = 0
            goto L31
        L26:
            java.lang.String r0 = "TLSv1.1"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L30
            r0 = 1
            goto L31
        L30:
            r0 = -1
        L31:
            switch(r0) {
                case 0: goto L54;
                case 1: goto L51;
                case 2: goto L4e;
                case 3: goto L4b;
                default: goto L34;
            }
        L34:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unexpected TLS version: "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L4b:
            com.squareup.okhttp.TlsVersion r0 = com.squareup.okhttp.TlsVersion.SSL_3_0
            return r0
        L4e:
            com.squareup.okhttp.TlsVersion r0 = com.squareup.okhttp.TlsVersion.TLS_1_0
            return r0
        L51:
            com.squareup.okhttp.TlsVersion r0 = com.squareup.okhttp.TlsVersion.TLS_1_1
            return r0
        L54:
            com.squareup.okhttp.TlsVersion r0 = com.squareup.okhttp.TlsVersion.TLS_1_2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.TlsVersion.forJavaName(java.lang.String):com.squareup.okhttp.TlsVersion");
    }

    public String javaName() {
        return this.javaName;
    }
}

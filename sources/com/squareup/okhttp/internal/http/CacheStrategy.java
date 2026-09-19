package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheStrategy {
    public final Response cacheResponse;
    public final Request networkRequest;

    private CacheStrategy(Request networkRequest, Response cacheResponse) {
        this.networkRequest = networkRequest;
        this.cacheResponse = cacheResponse;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        if (r3.cacheControl().isPrivate() == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isCacheable(com.squareup.okhttp.Response r3, com.squareup.okhttp.Request r4) {
        /*
            int r0 = r3.code()
            r1 = 0
            switch(r0) {
                case 200: goto L31;
                case 203: goto L31;
                case 204: goto L31;
                case 300: goto L31;
                case 301: goto L31;
                case 302: goto L9;
                case 307: goto L9;
                case 308: goto L31;
                case 404: goto L31;
                case 405: goto L31;
                case 410: goto L31;
                case 414: goto L31;
                case 501: goto L31;
                default: goto L8;
            }
        L8:
            goto L49
        L9:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.header(r0)
            if (r0 != 0) goto L32
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            int r0 = r0.maxAgeSeconds()
            r2 = -1
            if (r0 != r2) goto L32
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPublic()
            if (r0 != 0) goto L32
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPrivate()
            if (r0 == 0) goto L49
            goto L32
        L31:
        L32:
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.noStore()
            if (r0 != 0) goto L48
            com.squareup.okhttp.CacheControl r0 = r4.cacheControl()
            boolean r0 = r0.noStore()
            if (r0 != 0) goto L48
            r1 = 1
        L48:
            return r1
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.CacheStrategy.isCacheable(com.squareup.okhttp.Response, com.squareup.okhttp.Request):boolean");
    }

    public static class Factory {
        private int ageSeconds;
        final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        final long nowMillis;
        private long receivedResponseMillis;
        final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long nowMillis, Request request, Response cacheResponse) {
            this.ageSeconds = -1;
            this.nowMillis = nowMillis;
            this.request = request;
            this.cacheResponse = cacheResponse;
            if (cacheResponse != null) {
                Headers headers = cacheResponse.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String fieldName = headers.name(i);
                    String value = headers.value(i);
                    if (HttpRequest.HEADER_DATE.equalsIgnoreCase(fieldName)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if (HttpRequest.HEADER_EXPIRES.equalsIgnoreCase(fieldName)) {
                        this.expires = HttpDate.parse(value);
                    } else if (HttpRequest.HEADER_LAST_MODIFIED.equalsIgnoreCase(fieldName)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if (HttpRequest.HEADER_ETAG.equalsIgnoreCase(fieldName)) {
                        this.etag = value;
                    } else if ("Age".equalsIgnoreCase(fieldName)) {
                        this.ageSeconds = HeaderParser.parseSeconds(value, -1);
                    } else if (OkHeaders.SENT_MILLIS.equalsIgnoreCase(fieldName)) {
                        this.sentRequestMillis = Long.parseLong(value);
                    } else if (OkHeaders.RECEIVED_MILLIS.equalsIgnoreCase(fieldName)) {
                        this.receivedResponseMillis = Long.parseLong(value);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            if (candidate.networkRequest != null && this.request.cacheControl().onlyIfCached()) {
                return new CacheStrategy(null, 0 == true ? 1 : 0);
            }
            return candidate;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [com.squareup.okhttp.Response, com.squareup.okhttp.internal.http.CacheStrategy$1] */
        /* JADX WARN: Type inference failed for: r14v5 */
        private CacheStrategy getCandidate() {
            Response response = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.request, response);
            }
            if (!this.request.isHttps() || this.cacheResponse.handshake() != null) {
                if (!CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                    return new CacheStrategy(this.request, objArr2 == true ? 1 : 0);
                }
                CacheControl cacheControl = this.request.cacheControl();
                if (cacheControl.noCache() || hasConditions(this.request)) {
                    ?? r14 = 0;
                    return new CacheStrategy(this.request, r14);
                }
                long jCacheResponseAge = cacheResponseAge();
                long jComputeFreshnessLifetime = computeFreshnessLifetime();
                if (cacheControl.maxAgeSeconds() != -1) {
                    jComputeFreshnessLifetime = Math.min(jComputeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                }
                long millis = 0;
                if (cacheControl.minFreshSeconds() != -1) {
                    millis = TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds());
                }
                long millis2 = 0;
                CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                    millis2 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                }
                if (cacheControl2.noCache() || jCacheResponseAge + millis >= jComputeFreshnessLifetime + millis2) {
                    Request.Builder builderNewBuilder = this.request.newBuilder();
                    if (this.etag != null) {
                        builderNewBuilder.header(HttpRequest.HEADER_IF_NONE_MATCH, this.etag);
                    } else if (this.lastModified != null) {
                        builderNewBuilder.header("If-Modified-Since", this.lastModifiedString);
                    } else if (this.servedDate != null) {
                        builderNewBuilder.header("If-Modified-Since", this.servedDateString);
                    }
                    Request requestBuild = builderNewBuilder.build();
                    if (hasConditions(requestBuild)) {
                        return new CacheStrategy(requestBuild, this.cacheResponse);
                    }
                    return new CacheStrategy(requestBuild, null);
                }
                Response.Builder builderNewBuilder2 = this.cacheResponse.newBuilder();
                if (jCacheResponseAge + millis >= jComputeFreshnessLifetime) {
                    builderNewBuilder2.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                }
                if (jCacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                    builderNewBuilder2.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                }
                return new CacheStrategy(null, builderNewBuilder2.build());
            }
            return new CacheStrategy(this.request, objArr4 == true ? 1 : 0);
        }

        private long computeFreshnessLifetime() {
            CacheControl responseCaching = this.cacheResponse.cacheControl();
            if (responseCaching.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(responseCaching.maxAgeSeconds());
            }
            if (this.expires != null) {
                long servedMillis = this.servedDate != null ? this.servedDate.getTime() : this.receivedResponseMillis;
                long delta = this.expires.getTime() - servedMillis;
                if (delta > 0) {
                    return delta;
                }
                return 0L;
            }
            if (this.lastModified == null || this.cacheResponse.request().httpUrl().query() != null) {
                return 0L;
            }
            long servedMillis2 = this.servedDate != null ? this.servedDate.getTime() : this.sentRequestMillis;
            long delta2 = servedMillis2 - this.lastModified.getTime();
            if (delta2 > 0) {
                return delta2 / 10;
            }
            return 0L;
        }

        private long cacheResponseAge() {
            long apparentReceivedAge = this.servedDate != null ? Math.max(0L, this.receivedResponseMillis - this.servedDate.getTime()) : 0L;
            long receivedAge = this.ageSeconds != -1 ? Math.max(apparentReceivedAge, TimeUnit.SECONDS.toMillis(this.ageSeconds)) : apparentReceivedAge;
            long responseDuration = this.receivedResponseMillis - this.sentRequestMillis;
            long residentDuration = this.nowMillis - this.receivedResponseMillis;
            return receivedAge + responseDuration + residentDuration;
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        private static boolean hasConditions(Request request) {
            return (request.header("If-Modified-Since") == null && request.header(HttpRequest.HEADER_IF_NONE_MATCH) == null) ? false : true;
        }
    }
}

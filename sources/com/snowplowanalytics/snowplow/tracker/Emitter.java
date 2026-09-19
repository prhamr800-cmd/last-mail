package com.snowplowanalytics.snowplow.tracker;

import android.content.Context;
import android.net.Uri;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.emitter.BufferOption;
import com.snowplowanalytics.snowplow.tracker.emitter.EmittableEvents;
import com.snowplowanalytics.snowplow.tracker.emitter.HttpMethod;
import com.snowplowanalytics.snowplow.tracker.emitter.ReadyRequest;
import com.snowplowanalytics.snowplow.tracker.emitter.RequestCallback;
import com.snowplowanalytics.snowplow.tracker.emitter.RequestResult;
import com.snowplowanalytics.snowplow.tracker.emitter.RequestSecurity;
import com.snowplowanalytics.snowplow.tracker.payload.Payload;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.storage.EventStore;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class Emitter {
    private static final int POST_STM_BYTES = 22;
    private static final int POST_WRAPPER_BYTES = 88;
    private final MediaType JSON;
    private final String TAG;
    private BufferOption bufferOption;
    private long byteLimitGet;
    private long byteLimitPost;
    private final OkHttpClient client;
    private Context context;
    private int emitterTick;
    private int emptyCount;
    private int emptyLimit;
    private EventStore eventStore;
    private HttpMethod httpMethod;
    private AtomicBoolean isRunning;
    private RequestCallback requestCallback;
    private RequestSecurity requestSecurity;
    private int sendLimit;
    private TimeUnit timeUnit;
    private String uri;
    private Uri.Builder uriBuilder;

    public static class EmitterBuilder {
        final Context context;
        final String uri;
        RequestCallback requestCallback = null;
        HttpMethod httpMethod = HttpMethod.POST;
        BufferOption bufferOption = BufferOption.DefaultGroup;
        RequestSecurity requestSecurity = RequestSecurity.HTTP;
        int emitterTick = 5;
        int sendLimit = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        int emptyLimit = 5;
        long byteLimitGet = 40000;
        long byteLimitPost = 40000;
        TimeUnit timeUnit = TimeUnit.SECONDS;

        public EmitterBuilder(String uri, Context context) {
            this.uri = uri;
            this.context = context;
        }

        public EmitterBuilder method(HttpMethod httpMethod) {
            this.httpMethod = httpMethod;
            return this;
        }

        public EmitterBuilder option(BufferOption option) {
            this.bufferOption = option;
            return this;
        }

        public EmitterBuilder security(RequestSecurity requestSecurity) {
            this.requestSecurity = requestSecurity;
            return this;
        }

        public EmitterBuilder callback(RequestCallback requestCallback) {
            this.requestCallback = requestCallback;
            return this;
        }

        public EmitterBuilder tick(int emitterTick) {
            this.emitterTick = emitterTick;
            return this;
        }

        public EmitterBuilder sendLimit(int sendLimit) {
            this.sendLimit = sendLimit;
            return this;
        }

        public EmitterBuilder emptyLimit(int emptyLimit) {
            this.emptyLimit = emptyLimit;
            return this;
        }

        public EmitterBuilder byteLimitGet(long byteLimitGet) {
            this.byteLimitGet = byteLimitGet;
            return this;
        }

        public EmitterBuilder byteLimitPost(long byteLimitPost) {
            this.byteLimitPost = byteLimitPost;
            return this;
        }

        public EmitterBuilder timeUnit(TimeUnit timeUnit) {
            this.timeUnit = timeUnit;
            return this;
        }

        public Emitter build() {
            return new Emitter(this);
        }
    }

    private Emitter(EmitterBuilder builder) {
        this.TAG = Emitter.class.getSimpleName();
        this.JSON = MediaType.parse(TrackerConstants.POST_CONTENT_TYPE);
        this.isRunning = new AtomicBoolean(false);
        this.httpMethod = builder.httpMethod;
        this.requestCallback = builder.requestCallback;
        this.context = builder.context;
        this.bufferOption = builder.bufferOption;
        this.requestSecurity = builder.requestSecurity;
        this.emitterTick = builder.emitterTick;
        this.emptyLimit = builder.emptyLimit;
        this.sendLimit = builder.sendLimit;
        this.byteLimitGet = builder.byteLimitGet;
        this.byteLimitPost = builder.byteLimitPost;
        this.uri = builder.uri;
        this.timeUnit = builder.timeUnit;
        this.eventStore = new EventStore(this.context, this.sendLimit);
        buildEmitterUri();
        this.client = new OkHttpClient.Builder().connectTimeout(15L, TimeUnit.SECONDS).readTimeout(15L, TimeUnit.SECONDS).build();
        Logger.v(this.TAG, "Emitter created successfully!", new Object[0]);
    }

    private void buildEmitterUri() {
        if (this.requestSecurity == RequestSecurity.HTTP) {
            this.uriBuilder = Uri.parse("http://" + this.uri).buildUpon();
        } else {
            this.uriBuilder = Uri.parse("https://" + this.uri).buildUpon();
        }
        if (this.httpMethod == HttpMethod.GET) {
            this.uriBuilder.appendPath("i");
        } else {
            this.uriBuilder.appendEncodedPath("com.snowplowanalytics.snowplow/tp2");
        }
    }

    public void add(final Payload payload) {
        Executor.execute(new Runnable() { // from class: com.snowplowanalytics.snowplow.tracker.Emitter.1
            @Override // java.lang.Runnable
            public void run() {
                Emitter.this.eventStore.add(payload);
                if (Emitter.this.isRunning.compareAndSet(false, true)) {
                    Emitter.this.attemptEmit();
                }
            }
        });
    }

    public void flush() {
        Executor.execute(new Runnable() { // from class: com.snowplowanalytics.snowplow.tracker.Emitter.2
            @Override // java.lang.Runnable
            public void run() {
                if (Emitter.this.isRunning.compareAndSet(false, true)) {
                    Emitter.this.attemptEmit();
                }
            }
        });
    }

    public void shutdown() {
        Logger.d(this.TAG, "Shutting down emitter.", new Object[0]);
        this.isRunning.compareAndSet(true, false);
        Executor.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attemptEmit() {
        if (!Util.isOnline(this.context)) {
            Logger.e(this.TAG, "Emitter loop stopping: emitter offline.", new Object[0]);
            this.isRunning.compareAndSet(true, false);
            return;
        }
        if (this.eventStore.getSize() > 0) {
            this.emptyCount = 0;
            EmittableEvents events = this.eventStore.getEmittableEvents();
            LinkedList<ReadyRequest> requests = buildRequests(events);
            LinkedList<RequestResult> results = performAsyncEmit(requests);
            Logger.v(this.TAG, "Processing emitter results.", new Object[0]);
            int successCount = 0;
            int failureCount = 0;
            LinkedList<Long> removableEvents = new LinkedList<>();
            for (RequestResult res : results) {
                if (res.getSuccess()) {
                    for (Long eventId : res.getEventIds()) {
                        removableEvents.add(eventId);
                    }
                    successCount += res.getEventIds().size();
                } else {
                    failureCount += res.getEventIds().size();
                    Logger.e(this.TAG, "Request sending failed but we will retry later.", new Object[0]);
                }
            }
            this.eventStore.removeEvents(removableEvents);
            Logger.d(this.TAG, "Success Count: %s", Integer.valueOf(successCount));
            Logger.d(this.TAG, "Failure Count: %s", Integer.valueOf(failureCount));
            if (this.requestCallback != null) {
                if (failureCount != 0) {
                    this.requestCallback.onFailure(successCount, failureCount);
                } else {
                    this.requestCallback.onSuccess(successCount);
                }
            }
            if (failureCount > 0 && successCount == 0) {
                if (Util.isOnline(this.context)) {
                    Logger.e(this.TAG, "Ensure collector path is valid: %s", getEmitterUri());
                }
                Logger.e(this.TAG, "Emitter loop stopping: failures.", new Object[0]);
                this.isRunning.compareAndSet(true, false);
                return;
            }
            attemptEmit();
            return;
        }
        if (this.emptyCount >= this.emptyLimit) {
            Logger.e(this.TAG, "Emitter loop stopping: empty limit reached.", new Object[0]);
            this.isRunning.compareAndSet(true, false);
            return;
        }
        this.emptyCount++;
        Logger.e(this.TAG, "Emitter database empty: " + this.emptyCount, new Object[0]);
        try {
            this.timeUnit.sleep(this.emitterTick);
        } catch (InterruptedException e) {
            Logger.e(this.TAG, "Emitter thread sleep interrupted: " + e.toString(), new Object[0]);
        }
        attemptEmit();
    }

    protected LinkedList<RequestResult> performAsyncEmit(LinkedList<ReadyRequest> requests) {
        LinkedList<RequestResult> results = new LinkedList<>();
        LinkedList<Future> futures = new LinkedList<>();
        for (ReadyRequest request : requests) {
            futures.add(Executor.futureCallable(getRequestCallable(request.getRequest())));
        }
        Logger.d(this.TAG, "Request Futures: %s", Integer.valueOf(futures.size()));
        for (int i = 0; i < futures.size(); i++) {
            int code = -1;
            try {
                code = ((Integer) futures.get(i).get(5L, TimeUnit.SECONDS)).intValue();
            } catch (InterruptedException ie) {
                Logger.e(this.TAG, "Request Future was interrupted: %s", ie.getMessage());
            } catch (ExecutionException ee) {
                Logger.e(this.TAG, "Request Future failed: %s", ee.getMessage());
            } catch (TimeoutException te) {
                Logger.e(this.TAG, "Request Future had a timeout: %s", te.getMessage());
            }
            if (requests.get(i).isOversize()) {
                results.add(new RequestResult(true, requests.get(i).getEventIds()));
            } else {
                results.add(new RequestResult(isSuccessfulSend(code), requests.get(i).getEventIds()));
            }
        }
        return results;
    }

    private Callable<Integer> getRequestCallable(final Request request) {
        return new Callable<Integer>() { // from class: com.snowplowanalytics.snowplow.tracker.Emitter.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                return Integer.valueOf(Emitter.this.requestSender(request));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int requestSender(Request request) {
        try {
            Logger.v(this.TAG, "Sending request: %s", request);
            Response resp = this.client.newCall(request).execute();
            int code = resp.code();
            resp.body().close();
            return code;
        } catch (IOException e) {
            Logger.e(this.TAG, "Request sending failed: %s", e.toString());
            return -1;
        }
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    protected LinkedList<ReadyRequest> buildRequests(EmittableEvents emittableEvents) {
        int i;
        int size = emittableEvents.getEvents().size();
        LinkedList<Long> eventIds = emittableEvents.getEventIds();
        LinkedList<ReadyRequest> linkedList = new LinkedList<>();
        long j = 22;
        boolean z = true;
        if (this.httpMethod == HttpMethod.GET) {
            for (int i2 = 0; i2 < size; i2++) {
                LinkedList linkedList2 = new LinkedList();
                linkedList2.add(eventIds.get(i2));
                Payload payload = emittableEvents.getEvents().get(i2);
                linkedList.add(new ReadyRequest(payload.getByteSize() + 22 > this.byteLimitGet, requestBuilderGet(payload), linkedList2));
            }
        } else {
            int code = 0;
            while (code < size) {
                LinkedList linkedList3 = new LinkedList();
                ArrayList<Payload> arrayList = new ArrayList<>();
                long j2 = 0;
                LinkedList linkedList4 = linkedList3;
                int i3 = code;
                ?? r8 = z;
                while (i3 < this.bufferOption.getCode() + code && i3 < size) {
                    Payload payload2 = emittableEvents.getEvents().get(i3);
                    long byteSize = payload2.getByteSize() + j;
                    if (byteSize + 88 > this.byteLimitPost) {
                        ArrayList<Payload> arrayList2 = new ArrayList<>();
                        LinkedList linkedList5 = new LinkedList();
                        arrayList2.add(payload2);
                        linkedList5.add(eventIds.get(i3));
                        i = size;
                        linkedList.add(new ReadyRequest(r8, requestBuilderPost(arrayList2), linkedList5));
                    } else {
                        i = size;
                        if (j2 + byteSize + 88 + ((long) (arrayList.size() - r8)) > this.byteLimitPost) {
                            linkedList.add(new ReadyRequest(false, requestBuilderPost(arrayList), linkedList4));
                            ArrayList<Payload> arrayList3 = new ArrayList<>();
                            LinkedList linkedList6 = new LinkedList();
                            arrayList3.add(payload2);
                            linkedList6.add(eventIds.get(i3));
                            arrayList = arrayList3;
                            linkedList4 = linkedList6;
                            j2 = byteSize;
                        } else {
                            j2 += byteSize;
                            arrayList.add(payload2);
                            linkedList4.add(eventIds.get(i3));
                        }
                    }
                    i3++;
                    size = i;
                    j = 22;
                    r8 = 1;
                }
                int i4 = size;
                if (!arrayList.isEmpty()) {
                    linkedList.add(new ReadyRequest(false, requestBuilderPost(arrayList), linkedList4));
                }
                code += this.bufferOption.getCode();
                size = i4;
                j = 22;
                z = true;
            }
        }
        return linkedList;
    }

    private Request requestBuilderGet(Payload payload) {
        addStmToEvent(payload, "");
        this.uriBuilder.clearQuery();
        HashMap hashMap = (HashMap) payload.getMap();
        for (String key : hashMap.keySet()) {
            String value = (String) hashMap.get(key);
            this.uriBuilder.appendQueryParameter(key, value);
        }
        String reqUrl = this.uriBuilder.build().toString();
        return new Request.Builder().url(reqUrl).get().build();
    }

    private Request requestBuilderPost(ArrayList<Payload> payloads) {
        ArrayList<Map> finalPayloads = new ArrayList<>();
        String stm = Util.getTimestamp();
        for (Payload payload : payloads) {
            addStmToEvent(payload, stm);
            finalPayloads.add(payload.getMap());
        }
        SelfDescribingJson postPayload = new SelfDescribingJson(TrackerConstants.SCHEMA_PAYLOAD_DATA, finalPayloads);
        String reqUrl = this.uriBuilder.build().toString();
        RequestBody reqBody = RequestBody.create(this.JSON, postPayload.toString());
        return new Request.Builder().url(reqUrl).post(reqBody).build();
    }

    private void addStmToEvent(Payload payload, String timestamp) {
        payload.add(Parameters.SENT_TIMESTAMP, timestamp.equals("") ? Util.getTimestamp() : timestamp);
    }

    public EventStore getEventStore() {
        return this.eventStore;
    }

    public boolean getEmitterStatus() {
        return this.isRunning.get();
    }

    private boolean isSuccessfulSend(int code) {
        return code >= 200 && code < 300;
    }

    public void setBufferOption(BufferOption option) {
        if (!this.isRunning.get()) {
            this.bufferOption = option;
        }
    }

    public void setHttpMethod(HttpMethod method) {
        if (!this.isRunning.get()) {
            this.httpMethod = method;
            buildEmitterUri();
        }
    }

    public void setRequestSecurity(RequestSecurity security) {
        if (!this.isRunning.get()) {
            this.requestSecurity = security;
            buildEmitterUri();
        }
    }

    public void setEmitterUri(String uri) {
        if (!this.isRunning.get()) {
            this.uri = uri;
            buildEmitterUri();
        }
    }

    public String getEmitterUri() {
        return this.uriBuilder.clearQuery().build().toString();
    }

    public RequestCallback getRequestCallback() {
        return this.requestCallback;
    }

    public HttpMethod getHttpMethod() {
        return this.httpMethod;
    }

    public BufferOption getBufferOption() {
        return this.bufferOption;
    }

    public RequestSecurity getRequestSecurity() {
        return this.requestSecurity;
    }

    public int getEmitterTick() {
        return this.emitterTick;
    }

    public int getEmptyLimit() {
        return this.emptyLimit;
    }

    public int getSendLimit() {
        return this.sendLimit;
    }

    public long getByteLimitGet() {
        return this.byteLimitGet;
    }

    public long getByteLimitPost() {
        return this.byteLimitPost;
    }
}

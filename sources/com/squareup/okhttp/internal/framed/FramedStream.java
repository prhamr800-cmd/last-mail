package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public final class FramedStream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    long bytesLeftInWriteWindow;
    private final FramedConnection connection;
    private final int id;
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramedDataSink sink;
    private final FramedDataSource source;
    long unacknowledgedBytesRead = 0;
    private final StreamTimeout readTimeout = new StreamTimeout();
    private final StreamTimeout writeTimeout = new StreamTimeout();
    private ErrorCode errorCode = null;

    FramedStream(int id, FramedConnection connection, boolean outFinished, boolean inFinished, List<Header> requestHeaders) {
        if (connection == null) {
            throw new NullPointerException("connection == null");
        }
        if (requestHeaders == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.id = id;
        this.connection = connection;
        this.bytesLeftInWriteWindow = connection.peerSettings.getInitialWindowSize(65536);
        this.source = new FramedDataSource(connection.okHttpSettings.getInitialWindowSize(65536));
        this.sink = new FramedDataSink();
        this.source.finished = inFinished;
        this.sink.finished = outFinished;
        this.requestHeaders = requestHeaders;
    }

    public int getId() {
        return this.id;
    }

    public synchronized boolean isOpen() {
        if (this.errorCode != null) {
            return false;
        }
        if ((this.source.finished || this.source.closed) && (this.sink.finished || this.sink.closed)) {
            if (this.responseHeaders != null) {
                return false;
            }
        }
        return true;
    }

    public boolean isLocallyInitiated() {
        boolean streamIsClient = (this.id & 1) == 1;
        return this.connection.client == streamIsClient;
    }

    public FramedConnection getConnection() {
        return this.connection;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    public synchronized List<Header> getResponseHeaders() throws IOException {
        this.readTimeout.enter();
        while (this.responseHeaders == null && this.errorCode == null) {
            try {
                waitForIo();
            } catch (Throwable th) {
                this.readTimeout.exitAndThrowIfTimedOut();
                throw th;
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        if (this.responseHeaders == null) {
            throw new IOException("stream was reset: " + this.errorCode);
        }
        return this.responseHeaders;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void reply(List<Header> responseHeaders, boolean out) throws IOException {
        boolean outFinished = false;
        synchronized (this) {
            if (responseHeaders == null) {
                throw new NullPointerException("responseHeaders == null");
            }
            if (this.responseHeaders != null) {
                throw new IllegalStateException("reply already sent");
            }
            this.responseHeaders = responseHeaders;
            if (!out) {
                this.sink.finished = true;
                outFinished = true;
            }
        }
        this.connection.writeSynReply(this.id, outFinished, responseHeaders);
        if (outFinished) {
            this.connection.flush();
        }
    }

    public Timeout readTimeout() {
        return this.readTimeout;
    }

    public Timeout writeTimeout() {
        return this.writeTimeout;
    }

    public Source getSource() {
        return this.source;
    }

    public Sink getSink() {
        synchronized (this) {
            if (this.responseHeaders == null && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public void close(ErrorCode rstStatusCode) throws IOException {
        if (!closeInternal(rstStatusCode)) {
            return;
        }
        this.connection.writeSynReset(this.id, rstStatusCode);
    }

    public void closeLater(ErrorCode errorCode) {
        if (!closeInternal(errorCode)) {
            return;
        }
        this.connection.writeSynResetLater(this.id, errorCode);
    }

    private boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.finished && this.sink.finished) {
                return false;
            }
            this.errorCode = errorCode;
            notifyAll();
            this.connection.removeStream(this.id);
            return true;
        }
    }

    void receiveHeaders(List<Header> headers, HeadersMode headersMode) {
        ErrorCode errorCode = null;
        boolean open = true;
        synchronized (this) {
            if (this.responseHeaders == null) {
                if (headersMode.failIfHeadersAbsent()) {
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                } else {
                    this.responseHeaders = headers;
                    open = isOpen();
                    notifyAll();
                }
            } else if (headersMode.failIfHeadersPresent()) {
                errorCode = ErrorCode.STREAM_IN_USE;
            } else {
                List<Header> newHeaders = new ArrayList<>();
                newHeaders.addAll(this.responseHeaders);
                newHeaders.addAll(headers);
                this.responseHeaders = newHeaders;
            }
        }
        if (errorCode != null) {
            closeLater(errorCode);
        } else if (!open) {
            this.connection.removeStream(this.id);
        }
    }

    void receiveData(BufferedSource in, int length) throws Throwable {
        this.source.receive(in, length);
    }

    void receiveFin() {
        boolean open;
        synchronized (this) {
            this.source.finished = true;
            open = isOpen();
            notifyAll();
        }
        if (!open) {
            this.connection.removeStream(this.id);
        }
    }

    synchronized void receiveRstStream(ErrorCode errorCode) {
        if (this.errorCode == null) {
            this.errorCode = errorCode;
            notifyAll();
        }
    }

    private final class FramedDataSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private boolean closed;
        private boolean finished;
        private final long maxByteCount;
        private final Buffer readBuffer;
        private final Buffer receiveBuffer;

        private FramedDataSource(long maxByteCount) {
            this.receiveBuffer = new Buffer();
            this.readBuffer = new Buffer();
            this.maxByteCount = maxByteCount;
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws Throwable {
            if (byteCount < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + byteCount);
            }
            synchronized (FramedStream.this) {
                try {
                    try {
                        waitUntilReadable();
                        checkNotClosed();
                        if (this.readBuffer.size() == 0) {
                            return -1L;
                        }
                        long read = this.readBuffer.read(sink, Math.min(byteCount, this.readBuffer.size()));
                        try {
                            FramedStream.this.unacknowledgedBytesRead += read;
                            if (FramedStream.this.unacknowledgedBytesRead >= FramedStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2) {
                                FramedStream.this.connection.writeWindowUpdateLater(FramedStream.this.id, FramedStream.this.unacknowledgedBytesRead);
                                FramedStream.this.unacknowledgedBytesRead = 0L;
                            }
                            synchronized (FramedStream.this.connection) {
                                FramedStream.this.connection.unacknowledgedBytesRead += read;
                                if (FramedStream.this.connection.unacknowledgedBytesRead >= FramedStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2) {
                                    FramedStream.this.connection.writeWindowUpdateLater(0, FramedStream.this.connection.unacknowledgedBytesRead);
                                    FramedStream.this.connection.unacknowledgedBytesRead = 0L;
                                }
                            }
                            return read;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                throw th;
            }
        }

        private void waitUntilReadable() throws IOException {
            FramedStream.this.readTimeout.enter();
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed && FramedStream.this.errorCode == null) {
                try {
                    FramedStream.this.waitForIo();
                } finally {
                    FramedStream.this.readTimeout.exitAndThrowIfTimedOut();
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:39:0x0073
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
            */
        void receive(okio.BufferedSource r13, long r14) throws java.lang.Throwable {
            /*
                r12 = this;
                r0 = 0
                r1 = 0
                r2 = 0
            L4:
                r3 = 0
                int r5 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
                if (r5 <= 0) goto L76
                com.squareup.okhttp.internal.framed.FramedStream r5 = com.squareup.okhttp.internal.framed.FramedStream.this
                monitor-enter(r5)
                boolean r6 = r12.finished     // Catch: java.lang.Throwable -> L73
                r2 = r6
                okio.Buffer r6 = r12.readBuffer     // Catch: java.lang.Throwable -> L73
                long r6 = r6.size()     // Catch: java.lang.Throwable -> L73
                r8 = 0
                long r6 = r6 + r14
                long r8 = r12.maxByteCount     // Catch: java.lang.Throwable -> L73
                r1 = 1
                int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r10 <= 0) goto L21
                r6 = 1
                goto L22
            L21:
                r6 = 0
            L22:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L70
                if (r6 == 0) goto L30
                r13.skip(r14)
                com.squareup.okhttp.internal.framed.FramedStream r0 = com.squareup.okhttp.internal.framed.FramedStream.this
                com.squareup.okhttp.internal.framed.ErrorCode r1 = com.squareup.okhttp.internal.framed.ErrorCode.FLOW_CONTROL_ERROR
                r0.closeLater(r1)
                return
            L30:
                if (r2 == 0) goto L36
                r13.skip(r14)
                return
            L36:
                okio.Buffer r5 = r12.receiveBuffer
                long r7 = r13.read(r5, r14)
                r9 = -1
                int r5 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r5 == 0) goto L6a
                long r9 = r14 - r7
                com.squareup.okhttp.internal.framed.FramedStream r5 = com.squareup.okhttp.internal.framed.FramedStream.this
                monitor-enter(r5)
                okio.Buffer r14 = r12.readBuffer     // Catch: java.lang.Throwable -> L67
                long r14 = r14.size()     // Catch: java.lang.Throwable -> L67
                int r11 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
                if (r11 != 0) goto L52
                goto L53
            L52:
                r1 = 0
            L53:
                r14 = r1
                okio.Buffer r15 = r12.readBuffer     // Catch: java.lang.Throwable -> L67
                okio.Buffer r1 = r12.receiveBuffer     // Catch: java.lang.Throwable -> L67
                r15.writeAll(r1)     // Catch: java.lang.Throwable -> L67
                if (r14 == 0) goto L62
                com.squareup.okhttp.internal.framed.FramedStream r15 = com.squareup.okhttp.internal.framed.FramedStream.this     // Catch: java.lang.Throwable -> L67
                r15.notifyAll()     // Catch: java.lang.Throwable -> L67
            L62:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L67
                r1 = r6
                r14 = r9
                goto L4
            L67:
                r14 = move-exception
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L67
                throw r14
            L6a:
                java.io.EOFException r0 = new java.io.EOFException
                r0.<init>()
                throw r0
            L70:
                r0 = move-exception
                r1 = r6
                goto L74
            L73:
                r0 = move-exception
            L74:
                monitor-exit(r5)     // Catch: java.lang.Throwable -> L73
                throw r0
            L76:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.FramedStream.FramedDataSource.receive(okio.BufferedSource, long):void");
        }

        @Override // okio.Source
        public Timeout timeout() {
            return FramedStream.this.readTimeout;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws Throwable {
            synchronized (FramedStream.this) {
                this.closed = true;
                this.readBuffer.clear();
                FramedStream.this.notifyAll();
            }
            FramedStream.this.cancelStreamIfNecessary();
        }

        private void checkNotClosed() throws IOException {
            if (!this.closed) {
                if (FramedStream.this.errorCode != null) {
                    throw new IOException("stream was reset: " + FramedStream.this.errorCode);
                }
                return;
            }
            throw new IOException("stream closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void cancelStreamIfNecessary() throws java.lang.Throwable {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            com.squareup.okhttp.internal.framed.FramedStream$FramedDataSource r1 = r5.source     // Catch: java.lang.Throwable -> L43
            boolean r1 = com.squareup.okhttp.internal.framed.FramedStream.FramedDataSource.access$100(r1)     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L25
            com.squareup.okhttp.internal.framed.FramedStream$FramedDataSource r1 = r5.source     // Catch: java.lang.Throwable -> L43
            boolean r1 = com.squareup.okhttp.internal.framed.FramedStream.FramedDataSource.access$300(r1)     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L25
            com.squareup.okhttp.internal.framed.FramedStream$FramedDataSink r1 = r5.sink     // Catch: java.lang.Throwable -> L43
            boolean r1 = com.squareup.okhttp.internal.framed.FramedStream.FramedDataSink.access$200(r1)     // Catch: java.lang.Throwable -> L43
            if (r1 != 0) goto L23
            com.squareup.okhttp.internal.framed.FramedStream$FramedDataSink r1 = r5.sink     // Catch: java.lang.Throwable -> L43
            boolean r1 = com.squareup.okhttp.internal.framed.FramedStream.FramedDataSink.access$400(r1)     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L25
        L23:
            r1 = 1
            goto L26
        L25:
            r1 = 0
        L26:
            boolean r2 = r5.isOpen()     // Catch: java.lang.Throwable -> L3e
            r0 = r2
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L3e
            if (r1 == 0) goto L34
            com.squareup.okhttp.internal.framed.ErrorCode r2 = com.squareup.okhttp.internal.framed.ErrorCode.CANCEL
            r5.close(r2)
            goto L3d
        L34:
            if (r0 != 0) goto L3d
            com.squareup.okhttp.internal.framed.FramedConnection r2 = r5.connection
            int r3 = r5.id
            r2.removeStream(r3)
        L3d:
            return
        L3e:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
            goto L45
        L43:
            r1 = move-exception
            r2 = 0
        L45:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L47
            throw r1
        L47:
            r1 = move-exception
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.FramedStream.cancelStreamIfNecessary():void");
    }

    final class FramedDataSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final long EMIT_BUFFER_SIZE = 16384;
        private boolean closed;
        private boolean finished;
        private final Buffer sendBuffer = new Buffer();

        FramedDataSink() {
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            this.sendBuffer.write(source, byteCount);
            while (this.sendBuffer.size() >= 16384) {
                emitDataFrame(false);
            }
        }

        private void emitDataFrame(boolean outFinished) throws IOException {
            long toWrite;
            synchronized (FramedStream.this) {
                FramedStream.this.writeTimeout.enter();
                while (FramedStream.this.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && FramedStream.this.errorCode == null) {
                    try {
                        FramedStream.this.waitForIo();
                    } finally {
                    }
                }
                FramedStream.this.writeTimeout.exitAndThrowIfTimedOut();
                FramedStream.this.checkOutNotClosed();
                toWrite = Math.min(FramedStream.this.bytesLeftInWriteWindow, this.sendBuffer.size());
                FramedStream.this.bytesLeftInWriteWindow -= toWrite;
            }
            FramedStream.this.writeTimeout.enter();
            try {
                FramedStream.this.connection.writeData(FramedStream.this.id, outFinished && toWrite == this.sendBuffer.size(), this.sendBuffer, toWrite);
            } finally {
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            synchronized (FramedStream.this) {
                FramedStream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.size() > 0) {
                emitDataFrame(false);
                FramedStream.this.connection.flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return FramedStream.this.writeTimeout;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws Throwable {
            synchronized (FramedStream.this) {
                if (this.closed) {
                    return;
                }
                if (!FramedStream.this.sink.finished) {
                    if (this.sendBuffer.size() > 0) {
                        while (this.sendBuffer.size() > 0) {
                            emitDataFrame(true);
                        }
                    } else {
                        FramedStream.this.connection.writeData(FramedStream.this.id, true, null, 0L);
                    }
                }
                synchronized (FramedStream.this) {
                    this.closed = true;
                }
                FramedStream.this.connection.flush();
                FramedStream.this.cancelStreamIfNecessary();
            }
        }
    }

    void addBytesToWriteWindow(long delta) {
        this.bytesLeftInWriteWindow += delta;
        if (delta > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkOutNotClosed() throws IOException {
        if (!this.sink.closed) {
            if (this.sink.finished) {
                throw new IOException("stream finished");
            }
            if (this.errorCode != null) {
                throw new IOException("stream was reset: " + this.errorCode);
            }
            return;
        }
        throw new IOException("stream closed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }

    class StreamTimeout extends AsyncTimeout {
        StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            FramedStream.this.closeLater(ErrorCode.CANCEL);
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException cause) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (cause != null) {
                socketTimeoutException.initCause(cause);
            }
            return socketTimeoutException;
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }
    }
}

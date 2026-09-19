package io.realm;

import io.realm.log.RealmLog;

/* JADX INFO: loaded from: classes2.dex */
public class Progress {
    private final long transferableBytes;
    private final long transferredBytes;

    Progress(long transferredBytes, long transferableBytes) {
        this.transferredBytes = transferredBytes;
        this.transferableBytes = transferableBytes;
    }

    public long getTransferredBytes() {
        return this.transferredBytes;
    }

    public long getTransferableBytes() {
        return this.transferableBytes;
    }

    public double getFractionTransferred() {
        if (this.transferableBytes == 0) {
            return 1.0d;
        }
        double d = this.transferredBytes;
        double d2 = this.transferableBytes;
        Double.isNaN(d);
        Double.isNaN(d2);
        double percentage = d / d2;
        if (percentage > 1.0d) {
            RealmLog.error("Invalid progress state: %s", this);
            return 1.0d;
        }
        return percentage;
    }

    public boolean isTransferComplete() {
        return this.transferredBytes >= this.transferableBytes;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Progress progress = (Progress) o;
        return this.transferredBytes == progress.transferredBytes && this.transferableBytes == progress.transferableBytes;
    }

    public int hashCode() {
        int result = (int) (this.transferredBytes ^ (this.transferredBytes >>> 32));
        return (result * 31) + ((int) (this.transferableBytes ^ (this.transferableBytes >>> 32)));
    }

    public String toString() {
        return "Progress{transferredBytes=" + this.transferredBytes + ", transferableBytes=" + this.transferableBytes + '}';
    }
}

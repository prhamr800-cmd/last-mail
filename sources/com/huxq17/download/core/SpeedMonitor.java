package com.huxq17.download.core;

/* JADX INFO: loaded from: classes2.dex */
public class SpeedMonitor {
    private long totalRead = 0;
    private long lastSpeedCountTime = 0;
    final double NANOS_PER_SECOND = 1.0E9d;
    final double BYTES_PER_GB = 1.073741824E9d;
    final double BYTES_PER_MIB = 1048576.0d;
    final double BYTES_PER_KB = 1024.0d;
    final String BYTE_SUFFIX = "B/s";
    final String KB_SUFFIX = "KB/s";
    final String MIB_SUFFIX = "MB/s";
    final String GB_SUFFIX = "GB/s";
    double speed = 0.0d;
    String suffix = "B/s";

    public void download(long length) {
        this.totalRead += length;
        if (this.lastSpeedCountTime == 0) {
            this.lastSpeedCountTime = currentTime();
        }
    }

    public String getSpeed() {
        long curTime = currentTime();
        double d = curTime;
        double d2 = this.lastSpeedCountTime;
        Double.isNaN(d2);
        if (d >= d2 + 1.0E9d) {
            if (this.totalRead < 1024.0d) {
                double d3 = this.totalRead;
                Double.isNaN(d3);
                double d4 = curTime - this.lastSpeedCountTime;
                Double.isNaN(d4);
                this.speed = (d3 * 1.0E9d) / d4;
                this.suffix = "B/s";
            } else if (this.totalRead >= 1024.0d && this.totalRead < 1048576.0d) {
                double d5 = this.totalRead;
                Double.isNaN(d5);
                double d6 = curTime - this.lastSpeedCountTime;
                Double.isNaN(d6);
                this.speed = ((d5 * 1.0E9d) / 1024.0d) / d6;
                this.suffix = "KB/s";
            } else if (this.totalRead >= 1048576.0d && this.totalRead < 1.073741824E9d) {
                double d7 = this.totalRead;
                Double.isNaN(d7);
                double d8 = curTime - this.lastSpeedCountTime;
                Double.isNaN(d8);
                this.speed = ((d7 * 1.0E9d) / 1048576.0d) / d8;
                this.suffix = "MB/s";
            } else if (this.totalRead >= 1.073741824E9d) {
                double d9 = this.totalRead;
                Double.isNaN(d9);
                double d10 = curTime - this.lastSpeedCountTime;
                Double.isNaN(d10);
                this.speed = ((d9 * 1.0E9d) / 1.073741824E9d) / d10;
                this.suffix = "GB/s";
            }
            this.lastSpeedCountTime = curTime;
            this.totalRead = 0L;
        }
        if (Math.round(this.speed * 100.0d) % 100 == 0) {
            return (Math.round(this.speed * 100.0d) / 100) + this.suffix;
        }
        StringBuilder sb = new StringBuilder();
        double dRound = Math.round(this.speed * 100.0d);
        Double.isNaN(dRound);
        sb.append(dRound / 100.0d);
        sb.append(this.suffix);
        return sb.toString();
    }

    public long currentTime() {
        return System.nanoTime();
    }
}

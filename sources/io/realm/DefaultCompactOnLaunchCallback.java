package io.realm;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultCompactOnLaunchCallback implements CompactOnLaunchCallback {
    @Override // io.realm.CompactOnLaunchCallback
    public boolean shouldCompact(long totalBytes, long usedBytes) {
        if (totalBytes > 52428800) {
            double d = usedBytes;
            double d2 = totalBytes;
            Double.isNaN(d);
            Double.isNaN(d2);
            if (d / d2 < 0.5d) {
                return true;
            }
        }
        return false;
    }
}

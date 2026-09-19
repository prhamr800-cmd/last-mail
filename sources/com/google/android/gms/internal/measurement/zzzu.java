package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzu {
    private static final int zzcgi = 11;
    private static final int zzcgj = 12;
    private static final int zzcgk = 16;
    private static final int zzcgl = 26;
    public static final int[] zzcbs = new int[0];
    public static final long[] zzcgm = new long[0];
    private static final float[] zzcgn = new float[0];
    private static final double[] zzcgo = new double[0];
    private static final boolean[] zzcgp = new boolean[0];
    public static final String[] zzcgq = new String[0];
    private static final byte[][] zzcgr = new byte[0][];
    public static final byte[] zzcgs = new byte[0];

    public static final int zzb(zzzi zzziVar, int i) throws IOException {
        int position = zzziVar.getPosition();
        zzziVar.zzap(i);
        int i2 = 1;
        while (zzziVar.zzuq() == i) {
            zzziVar.zzap(i);
            i2++;
        }
        zzziVar.zzt(position, i);
        return i2;
    }
}

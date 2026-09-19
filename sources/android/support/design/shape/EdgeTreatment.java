package android.support.design.shape;

import android.support.design.internal.Experimental;

/* JADX INFO: loaded from: classes2.dex */
@Experimental("The shapes API is currently experimental and subject to change")
public class EdgeTreatment {
    public void getEdgePath(float length, float interpolation, ShapePath shapePath) {
        shapePath.lineTo(length, 0.0f);
    }
}

package android.support.design.shape;

import android.support.design.internal.Experimental;

/* JADX INFO: loaded from: classes2.dex */
@Experimental("The shapes API is currently experimental and subject to change")
public class TriangleEdgeTreatment extends EdgeTreatment {
    private final boolean inside;
    private final float size;

    public TriangleEdgeTreatment(float size, boolean inside) {
        this.size = size;
        this.inside = inside;
    }

    @Override // android.support.design.shape.EdgeTreatment
    public void getEdgePath(float length, float interpolation, ShapePath shapePath) {
        shapePath.lineTo((length / 2.0f) - (this.size * interpolation), 0.0f);
        shapePath.lineTo(length / 2.0f, (this.inside ? this.size : -this.size) * interpolation);
        shapePath.lineTo((length / 2.0f) + (this.size * interpolation), 0.0f);
        shapePath.lineTo(length, 0.0f);
    }
}

package android.support.design.shape;

import android.support.design.internal.Experimental;

/* JADX INFO: loaded from: classes2.dex */
@Experimental("The shapes API is currently experimental and subject to change")
public class CutCornerTreatment extends CornerTreatment {
    private final float size;

    public CutCornerTreatment(float size) {
        this.size = size;
    }

    @Override // android.support.design.shape.CornerTreatment
    public void getCornerPath(float angle, float interpolation, ShapePath shapePath) {
        shapePath.reset(0.0f, this.size * interpolation);
        double dSin = Math.sin(angle);
        double d = this.size;
        Double.isNaN(d);
        double d2 = dSin * d;
        double d3 = interpolation;
        Double.isNaN(d3);
        double dCos = Math.cos(angle);
        double d4 = this.size;
        Double.isNaN(d4);
        double d5 = dCos * d4;
        double d6 = interpolation;
        Double.isNaN(d6);
        shapePath.lineTo((float) (d2 * d3), (float) (d5 * d6));
    }
}

package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.indicators.BallSpinFadeLoaderIndicator;

/* JADX INFO: loaded from: classes2.dex */
public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override // com.wang.avi.indicators.BallSpinFadeLoaderIndicator, com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float radius = getWidth() / 10;
        for (int i = 0; i < 8; i++) {
            canvas.save();
            double d = i;
            Double.isNaN(d);
            BallSpinFadeLoaderIndicator.Point point = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - radius, 0.7853981633974483d * d);
            canvas.translate(point.x, point.y);
            canvas.scale(this.scaleFloats[i], this.scaleFloats[i]);
            canvas.rotate(i * 45);
            paint.setAlpha(this.alphas[i]);
            RectF rectF = new RectF(-radius, (-radius) / 1.5f, radius * 1.5f, radius / 1.5f);
            canvas.drawRoundRect(rectF, 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}

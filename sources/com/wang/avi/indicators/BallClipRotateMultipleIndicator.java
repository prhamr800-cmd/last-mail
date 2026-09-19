package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallClipRotateMultipleIndicator extends Indicator {
    float degrees;
    float scaleFloat = 1.0f;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        float x = getWidth() / 2;
        float y = getHeight() / 2;
        canvas.save();
        canvas.translate(x, y);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.rotate(this.degrees);
        float[] bStartAngles = {135.0f, -45.0f};
        for (int i = 0; i < 2; i++) {
            RectF rectF = new RectF((-x) + 12.0f, (-y) + 12.0f, x - 12.0f, y - 12.0f);
            canvas.drawArc(rectF, bStartAngles[i], 90.0f, false, paint);
        }
        canvas.restore();
        canvas.translate(x, y);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.rotate(-this.degrees);
        float[] sStartAngles = {225.0f, 45.0f};
        for (int i2 = 0; i2 < 2; i2++) {
            RectF rectF2 = new RectF(((-x) / 1.8f) + 12.0f, ((-y) / 1.8f) + 12.0f, (x / 1.8f) - 12.0f, (y / 1.8f) - 12.0f);
            canvas.drawArc(rectF2, sStartAngles[i2], 90.0f, false, paint);
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        ValueAnimator scaleAnim = ValueAnimator.ofFloat(1.0f, 0.6f, 1.0f);
        scaleAnim.setDuration(1000L);
        scaleAnim.setRepeatCount(-1);
        addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotateMultipleIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallClipRotateMultipleIndicator.this.scaleFloat = ((Float) animation.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        rotateAnim.setDuration(1000L);
        rotateAnim.setRepeatCount(-1);
        addUpdateListener(rotateAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotateMultipleIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallClipRotateMultipleIndicator.this.degrees = ((Float) animation.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        animators.add(scaleAnim);
        animators.add(rotateAnim);
        return animators;
    }
}

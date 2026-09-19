package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallClipRotatePulseIndicator extends Indicator {
    float degrees;
    float scaleFloat1;
    float scaleFloat2;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float x = getWidth() / 2;
        float y = getHeight() / 2;
        canvas.save();
        canvas.translate(x, y);
        canvas.scale(this.scaleFloat1, this.scaleFloat1);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, x / 2.5f, paint);
        canvas.restore();
        canvas.translate(x, y);
        canvas.scale(this.scaleFloat2, this.scaleFloat2);
        canvas.rotate(this.degrees);
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        float[] startAngles = {225.0f, 45.0f};
        for (int i = 0; i < 2; i++) {
            RectF rectF = new RectF((-x) + 12.0f, (-y) + 12.0f, x - 12.0f, y - 12.0f);
            canvas.drawArc(rectF, startAngles[i], 90.0f, false, paint);
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ValueAnimator scaleAnim = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
        scaleAnim.setDuration(1000L);
        scaleAnim.setRepeatCount(-1);
        addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallClipRotatePulseIndicator.this.scaleFloat1 = ((Float) animation.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator scaleAnim2 = ValueAnimator.ofFloat(1.0f, 0.6f, 1.0f);
        scaleAnim2.setDuration(1000L);
        scaleAnim2.setRepeatCount(-1);
        addUpdateListener(scaleAnim2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallClipRotatePulseIndicator.this.scaleFloat2 = ((Float) animation.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        rotateAnim.setDuration(1000L);
        rotateAnim.setRepeatCount(-1);
        addUpdateListener(rotateAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallClipRotatePulseIndicator.this.degrees = ((Float) animation.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        animators.add(scaleAnim);
        animators.add(scaleAnim2);
        animators.add(rotateAnim);
        return animators;
    }
}

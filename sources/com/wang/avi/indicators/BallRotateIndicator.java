package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallRotateIndicator extends Indicator {
    float degress;
    float scaleFloat = 0.5f;
    private Matrix mMatrix = new Matrix();

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float radius = getWidth() / 10;
        float x = getWidth() / 2;
        float y = getHeight() / 2;
        canvas.rotate(this.degress, centerX(), centerY());
        canvas.save();
        canvas.translate((x - (radius * 2.0f)) - radius, y);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, radius, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(x, y);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, radius, paint);
        canvas.restore();
        canvas.save();
        canvas.translate((2.0f * radius) + x + radius, y);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, radius, paint);
        canvas.restore();
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        ValueAnimator scaleAnim = ValueAnimator.ofFloat(0.5f, 1.0f, 0.5f);
        scaleAnim.setDuration(1000L);
        scaleAnim.setRepeatCount(-1);
        addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallRotateIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallRotateIndicator.this.scaleFloat = ((Float) animation.getAnimatedValue()).floatValue();
                BallRotateIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        addUpdateListener(rotateAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallRotateIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallRotateIndicator.this.degress = ((Float) animation.getAnimatedValue()).floatValue();
                BallRotateIndicator.this.postInvalidate();
            }
        });
        rotateAnim.setDuration(1000L);
        rotateAnim.setRepeatCount(-1);
        animators.add(scaleAnim);
        animators.add(rotateAnim);
        return animators;
    }
}

package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallScaleIndicator extends Indicator {
    float scale = 1.0f;
    int alpha = 255;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setAlpha(this.alpha);
        canvas.scale(this.scale, this.scale, getWidth() / 2, getHeight() / 2);
        paint.setAlpha(this.alpha);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, (getWidth() / 2) - 4.0f, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        ValueAnimator scaleAnim = ValueAnimator.ofFloat(0.0f, 1.0f);
        scaleAnim.setInterpolator(new LinearInterpolator());
        scaleAnim.setDuration(1000L);
        scaleAnim.setRepeatCount(-1);
        addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallScaleIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallScaleIndicator.this.scale = ((Float) animation.getAnimatedValue()).floatValue();
                BallScaleIndicator.this.postInvalidate();
            }
        });
        ValueAnimator alphaAnim = ValueAnimator.ofInt(255, 0);
        alphaAnim.setInterpolator(new LinearInterpolator());
        alphaAnim.setDuration(1000L);
        alphaAnim.setRepeatCount(-1);
        addUpdateListener(alphaAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallScaleIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallScaleIndicator.this.alpha = ((Integer) animation.getAnimatedValue()).intValue();
                BallScaleIndicator.this.postInvalidate();
            }
        });
        animators.add(scaleAnim);
        animators.add(alphaAnim);
        return animators;
    }
}

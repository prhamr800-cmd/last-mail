package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallPulseSyncIndicator extends Indicator {
    float[] translateYFloats = new float[3];

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float radius = (getWidth() - (4.0f * 2.0f)) / 6.0f;
        float x = (getWidth() / 2) - ((radius * 2.0f) + 4.0f);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            float translateX = (radius * 2.0f * i) + x + (i * 4.0f);
            canvas.translate(translateX, this.translateYFloats[i]);
            canvas.drawCircle(0.0f, 0.0f, radius, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        float radius = (getWidth() - (4.0f * 2.0f)) / 6.0f;
        int[] delays = {70, 140, 210};
        for (int i = 0; i < 3; i++) {
            final int index = i;
            ValueAnimator scaleAnim = ValueAnimator.ofFloat(getHeight() / 2, (getHeight() / 2) - (radius * 2.0f), getHeight() / 2);
            scaleAnim.setDuration(600L);
            scaleAnim.setRepeatCount(-1);
            scaleAnim.setStartDelay(delays[i]);
            addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallPulseSyncIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    BallPulseSyncIndicator.this.translateYFloats[index] = ((Float) animation.getAnimatedValue()).floatValue();
                    BallPulseSyncIndicator.this.postInvalidate();
                }
            });
            animators.add(scaleAnim);
        }
        return animators;
    }
}

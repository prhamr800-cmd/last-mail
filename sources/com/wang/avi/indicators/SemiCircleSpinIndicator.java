package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SemiCircleSpinIndicator extends Indicator {
    private float degress;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        canvas.rotate(this.degress, centerX(), centerY());
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        canvas.drawArc(rectF, -60.0f, 120.0f, false, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        addUpdateListener(rotateAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.SemiCircleSpinIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                SemiCircleSpinIndicator.this.degress = ((Float) animation.getAnimatedValue()).floatValue();
                SemiCircleSpinIndicator.this.postInvalidate();
            }
        });
        rotateAnim.setDuration(600L);
        rotateAnim.setRepeatCount(-1);
        animators.add(rotateAnim);
        return animators;
    }
}

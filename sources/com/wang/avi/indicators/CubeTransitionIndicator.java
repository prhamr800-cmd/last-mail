package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CubeTransitionIndicator extends Indicator {
    float degrees;
    float[] translateX = new float[2];
    float[] translateY = new float[2];
    float scaleFloat = 1.0f;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float rWidth = getWidth() / 5;
        float rHeight = getHeight() / 5;
        for (int i = 0; i < 2; i++) {
            canvas.save();
            canvas.translate(this.translateX[i], this.translateY[i]);
            canvas.rotate(this.degrees);
            canvas.scale(this.scaleFloat, this.scaleFloat);
            RectF rectF = new RectF((-rWidth) / 2.0f, (-rHeight) / 2.0f, rWidth / 2.0f, rHeight / 2.0f);
            canvas.drawRect(rectF, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        int i = 5;
        float startX = getWidth() / 5;
        float startY = getHeight() / 5;
        int i2 = 0;
        while (i2 < 2) {
            final int index = i2;
            this.translateX[index] = startX;
            float[] fArr = new float[i];
            fArr[0] = startX;
            fArr[1] = getWidth() - startX;
            fArr[2] = getWidth() - startX;
            fArr[3] = startX;
            fArr[4] = startX;
            ValueAnimator translationXAnim = ValueAnimator.ofFloat(fArr);
            if (i2 == 1) {
                float[] fArr2 = new float[i];
                fArr2[0] = getWidth() - startX;
                fArr2[1] = startX;
                fArr2[2] = startX;
                fArr2[3] = getWidth() - startX;
                fArr2[4] = getWidth() - startX;
                translationXAnim = ValueAnimator.ofFloat(fArr2);
            }
            translationXAnim.setInterpolator(new LinearInterpolator());
            translationXAnim.setDuration(1600L);
            translationXAnim.setRepeatCount(-1);
            translationXAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.CubeTransitionIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    CubeTransitionIndicator.this.translateX[index] = ((Float) animation.getAnimatedValue()).floatValue();
                    CubeTransitionIndicator.this.postInvalidate();
                }
            });
            this.translateY[index] = startY;
            ValueAnimator translationYAnim = ValueAnimator.ofFloat(startY, startY, getHeight() - startY, getHeight() - startY, startY);
            if (i2 == 1) {
                translationYAnim = ValueAnimator.ofFloat(getHeight() - startY, getHeight() - startY, startY, startY, getHeight() - startY);
            }
            translationYAnim.setDuration(1600L);
            translationYAnim.setInterpolator(new LinearInterpolator());
            translationYAnim.setRepeatCount(-1);
            addUpdateListener(translationYAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.CubeTransitionIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator animation) {
                    CubeTransitionIndicator.this.translateY[index] = ((Float) animation.getAnimatedValue()).floatValue();
                    CubeTransitionIndicator.this.postInvalidate();
                }
            });
            animators.add(translationXAnim);
            animators.add(translationYAnim);
            i2++;
            i = 5;
        }
        ValueAnimator scaleAnim = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f, 0.5f, 1.0f);
        scaleAnim.setDuration(1600L);
        scaleAnim.setInterpolator(new LinearInterpolator());
        scaleAnim.setRepeatCount(-1);
        addUpdateListener(scaleAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.CubeTransitionIndicator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                CubeTransitionIndicator.this.scaleFloat = ((Float) animation.getAnimatedValue()).floatValue();
                CubeTransitionIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f, 540.0f, 720.0f);
        rotateAnim.setDuration(1600L);
        rotateAnim.setInterpolator(new LinearInterpolator());
        rotateAnim.setRepeatCount(-1);
        addUpdateListener(rotateAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.CubeTransitionIndicator.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                CubeTransitionIndicator.this.degrees = ((Float) animation.getAnimatedValue()).floatValue();
                CubeTransitionIndicator.this.postInvalidate();
            }
        });
        animators.add(scaleAnim);
        animators.add(rotateAnim);
        return animators;
    }
}

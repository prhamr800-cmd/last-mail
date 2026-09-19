package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BallPulseRiseIndicator extends Indicator {
    private float degress;
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.degress);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate(-centerX(), -centerY());
        this.mMatrix.postTranslate(centerX(), centerY());
        canvas.concat(this.mMatrix);
        float radius = getWidth() / 10;
        canvas.drawCircle(getWidth() / 4, radius * 2.0f, radius, paint);
        canvas.drawCircle((getWidth() * 3) / 4, radius * 2.0f, radius, paint);
        canvas.drawCircle(radius, getHeight() - (radius * 2.0f), radius, paint);
        canvas.drawCircle(getWidth() / 2, getHeight() - (radius * 2.0f), radius, paint);
        canvas.drawCircle(getWidth() - radius, getHeight() - (2.0f * radius), radius, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 360.0f);
        addUpdateListener(animator, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallPulseRiseIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                BallPulseRiseIndicator.this.degress = ((Float) animation.getAnimatedValue()).floatValue();
                BallPulseRiseIndicator.this.postInvalidate();
            }
        });
        animator.setInterpolator(new LinearInterpolator());
        animator.setRepeatCount(-1);
        animator.setDuration(1500L);
        animators.add(animator);
        return animators;
    }
}

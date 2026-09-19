package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PacmanIndicator extends Indicator {
    private int alpha;
    private float degrees1;
    private float degrees2;
    private float translateX;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        drawPacman(canvas, paint);
        drawCircle(canvas, paint);
    }

    private void drawPacman(Canvas canvas, Paint paint) {
        float x = getWidth() / 2;
        float y = getHeight() / 2;
        canvas.save();
        canvas.translate(x, y);
        canvas.rotate(this.degrees1);
        paint.setAlpha(255);
        RectF rectF1 = new RectF((-x) / 1.7f, (-y) / 1.7f, x / 1.7f, y / 1.7f);
        canvas.drawArc(rectF1, 0.0f, 270.0f, true, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(x, y);
        canvas.rotate(this.degrees2);
        paint.setAlpha(255);
        RectF rectF2 = new RectF((-x) / 1.7f, (-y) / 1.7f, x / 1.7f, y / 1.7f);
        canvas.drawArc(rectF2, 90.0f, 270.0f, true, paint);
        canvas.restore();
    }

    private void drawCircle(Canvas canvas, Paint paint) {
        float radius = getWidth() / 11;
        paint.setAlpha(this.alpha);
        canvas.drawCircle(this.translateX, getHeight() / 2, radius, paint);
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> animators = new ArrayList<>();
        float startT = getWidth() / 11;
        ValueAnimator translationAnim = ValueAnimator.ofFloat(getWidth() - startT, getWidth() / 2);
        translationAnim.setDuration(650L);
        translationAnim.setInterpolator(new LinearInterpolator());
        translationAnim.setRepeatCount(-1);
        addUpdateListener(translationAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                PacmanIndicator.this.translateX = ((Float) animation.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator alphaAnim = ValueAnimator.ofInt(255, 122);
        alphaAnim.setDuration(650L);
        alphaAnim.setRepeatCount(-1);
        addUpdateListener(alphaAnim, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                PacmanIndicator.this.alpha = ((Integer) animation.getAnimatedValue()).intValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim1 = ValueAnimator.ofFloat(0.0f, 45.0f, 0.0f);
        rotateAnim1.setDuration(650L);
        rotateAnim1.setRepeatCount(-1);
        addUpdateListener(rotateAnim1, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                PacmanIndicator.this.degrees1 = ((Float) animation.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        ValueAnimator rotateAnim2 = ValueAnimator.ofFloat(0.0f, -45.0f, 0.0f);
        rotateAnim2.setDuration(650L);
        rotateAnim2.setRepeatCount(-1);
        addUpdateListener(rotateAnim2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.PacmanIndicator.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                PacmanIndicator.this.degrees2 = ((Float) animation.getAnimatedValue()).floatValue();
                PacmanIndicator.this.postInvalidate();
            }
        });
        animators.add(translationAnim);
        animators.add(alphaAnim);
        animators.add(rotateAnim1);
        animators.add(rotateAnim2);
        return animators;
    }
}

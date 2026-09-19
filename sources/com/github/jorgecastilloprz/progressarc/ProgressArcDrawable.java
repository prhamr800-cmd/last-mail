package com.github.jorgecastilloprz.progressarc;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory;
import com.github.jorgecastilloprz.utils.AnimationUtils;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressArcDrawable extends Drawable implements Animatable {
    private ArcAnimationFactory animationFactory;
    private boolean animationPlaying;
    private final RectF arcBounds = new RectF();
    private int arcColor;
    private ValueAnimator completeAnim;
    private boolean completeAnimOnNextCycle;
    private float currentRotationAngle;
    private float currentRotationAngleOffset;
    private float currentSweepAngle;
    private ValueAnimator growAnim;
    private boolean growing;
    private ArcListener internalListener;
    private int maxSweepAngle;
    private int minSweepAngle;
    private Paint paint;
    private ValueAnimator rotateAnim;
    private ValueAnimator shrinkAnim;
    private float strokeWidth;

    ProgressArcDrawable(float strokeWidth, int arcColor, boolean roundedStroke) {
        this.strokeWidth = strokeWidth;
        this.arcColor = arcColor;
        initPaint(roundedStroke);
        setupAnimations();
    }

    private void initPaint(boolean roundedStroke) {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.strokeWidth);
        this.paint.setStrokeCap(roundedStroke ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        this.paint.setColor(this.arcColor);
    }

    private void setupAnimations() {
        this.animationFactory = new ArcAnimationFactory();
        this.minSweepAngle = 20;
        this.maxSweepAngle = ArcAnimationFactory.MAXIMUM_SWEEP_ANGLE;
        setupRotateAnimation();
        setupGrowAnimation();
        setupShrinkAnimation();
        setupCompleteAnimation();
    }

    private void setupRotateAnimation() {
        this.rotateAnim = this.animationFactory.buildAnimation(ArcAnimationFactory.Type.ROTATE, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float angle = AnimationUtils.getAnimatedFraction(animation) * 360.0f;
                ProgressArcDrawable.this.updateCurrentRotationAngle(angle);
            }
        }, null);
    }

    private void setupGrowAnimation() {
        this.growAnim = this.animationFactory.buildAnimation(ArcAnimationFactory.Type.GROW, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float animatedFraction = AnimationUtils.getAnimatedFraction(animation);
                float angle = ProgressArcDrawable.this.minSweepAngle + ((ProgressArcDrawable.this.maxSweepAngle - ProgressArcDrawable.this.minSweepAngle) * animatedFraction);
                ProgressArcDrawable.this.updateCurrentSweepAngle(angle);
            }
        }, new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.3
            boolean cancelled = false;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                this.cancelled = false;
                ProgressArcDrawable.this.growing = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!this.cancelled) {
                    ProgressArcDrawable.this.setShrinking();
                    ProgressArcDrawable.this.shrinkAnim.start();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                this.cancelled = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }
        });
    }

    private void setupShrinkAnimation() {
        this.shrinkAnim = this.animationFactory.buildAnimation(ArcAnimationFactory.Type.SHRINK, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float animatedFraction = AnimationUtils.getAnimatedFraction(animation);
                ProgressArcDrawable.this.updateCurrentSweepAngle(ProgressArcDrawable.this.maxSweepAngle - ((ProgressArcDrawable.this.maxSweepAngle - ProgressArcDrawable.this.minSweepAngle) * animatedFraction));
            }
        }, new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.5
            boolean cancelled;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                this.cancelled = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!this.cancelled) {
                    ProgressArcDrawable.this.setGrowing();
                    if (ProgressArcDrawable.this.completeAnimOnNextCycle) {
                        ProgressArcDrawable.this.completeAnimOnNextCycle = false;
                        ProgressArcDrawable.this.completeAnim.start();
                    } else {
                        ProgressArcDrawable.this.growAnim.start();
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                this.cancelled = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }
        });
    }

    private void setupCompleteAnimation() {
        this.completeAnim = this.animationFactory.buildAnimation(ArcAnimationFactory.Type.COMPLETE, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float animatedFraction = AnimationUtils.getAnimatedFraction(animation);
                float angle = ProgressArcDrawable.this.minSweepAngle + (360.0f * animatedFraction);
                ProgressArcDrawable.this.updateCurrentSweepAngle(angle);
            }
        }, new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcDrawable.7
            boolean cancelled = false;

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                this.cancelled = false;
                ProgressArcDrawable.this.growing = true;
                ProgressArcDrawable.this.rotateAnim.setInterpolator(new DecelerateInterpolator());
                ProgressArcDrawable.this.rotateAnim.setDuration(12000L);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (!this.cancelled) {
                    ProgressArcDrawable.this.stop();
                }
                ProgressArcDrawable.this.completeAnim.removeListener(this);
                ProgressArcDrawable.this.internalListener.onArcAnimationComplete();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                this.cancelled = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }
        });
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float startAngle = this.currentRotationAngle - this.currentRotationAngleOffset;
        float sweepAngle = this.currentSweepAngle;
        if (!this.growing) {
            startAngle += 360.0f - sweepAngle;
        }
        canvas.drawArc(this.arcBounds, startAngle, sweepAngle, false, this.paint);
    }

    public void reset() {
        stop();
        resetProperties();
        setupAnimations();
        start();
    }

    private void resetProperties() {
        this.currentSweepAngle = 0.0f;
        this.currentRotationAngle = 0.0f;
        this.currentRotationAngleOffset = 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        this.arcBounds.left = bounds.left;
        this.arcBounds.right = bounds.right;
        this.arcBounds.top = bounds.top;
        this.arcBounds.bottom = bounds.bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGrowing() {
        this.growing = true;
        this.currentRotationAngleOffset += this.minSweepAngle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShrinking() {
        this.growing = false;
        this.currentRotationAngleOffset += 360 - this.maxSweepAngle;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.animationPlaying = true;
        resetProperties();
        this.rotateAnim.start();
        this.growAnim.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.animationPlaying = false;
        stopAnimators();
        invalidateSelf();
    }

    private void stopAnimators() {
        this.rotateAnim.cancel();
        this.growAnim.cancel();
        this.shrinkAnim.cancel();
        this.completeAnim.cancel();
    }

    void requestCompleteAnimation(ArcListener internalListener) {
        if (!isRunning() || this.completeAnim.isRunning()) {
            return;
        }
        this.internalListener = internalListener;
        startCompleteAnimationOnNextCycle();
    }

    private void startCompleteAnimationOnNextCycle() {
        this.completeAnimOnNextCycle = true;
    }

    void updateCurrentRotationAngle(float currentRotationAngle) {
        this.currentRotationAngle = currentRotationAngle;
        invalidateSelf();
    }

    void updateCurrentSweepAngle(float currentSweepAngle) {
        this.currentSweepAngle = currentSweepAngle;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.animationPlaying;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.paint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 4;
    }
}

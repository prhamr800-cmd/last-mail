package com.github.jorgecastilloprz.progressarc;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressArcView extends ProgressBar {
    private int arcColor;
    private int arcWidth;
    private ArcListener internalListener;
    private boolean roundedStroke;

    public ProgressArcView(Context context, int arcColor, int arcWidth, boolean roundedStroke) {
        super(context);
        this.arcColor = arcColor;
        this.arcWidth = arcWidth;
        this.roundedStroke = roundedStroke;
        init(arcColor, arcWidth, roundedStroke);
    }

    public void init(int arcColor, int arcWidth, boolean roundedStroke) {
        setupInitialAlpha();
        ProgressArcDrawable arcDrawable = new ProgressArcDrawable(arcWidth, arcColor, roundedStroke);
        setIndeterminateDrawable(arcDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupInitialAlpha() {
        setAlpha(0.0f);
    }

    public void setInternalListener(ArcListener internalListener) {
        this.internalListener = internalListener;
    }

    public void show() {
        postDelayed(new Runnable() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcView.1
            @Override // java.lang.Runnable
            public void run() {
                ProgressArcView.this.setAlpha(1.0f);
                ProgressArcView.this.getDrawable().reset();
            }
        }, 150L);
    }

    public void stop() {
        getDrawable().stop();
        ValueAnimator fadeOutAnim = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        fadeOutAnim.setDuration(100L).start();
    }

    public void reset() {
        getDrawable().reset();
        ValueAnimator arcScaleX = ObjectAnimator.ofFloat(this, "scaleX", 1.0f);
        ValueAnimator arcScaleY = ObjectAnimator.ofFloat(this, "scaleY", 1.0f);
        AnimatorSet set = new AnimatorSet();
        set.setDuration(0L).setInterpolator(new DecelerateInterpolator());
        set.playTogether(arcScaleX, arcScaleY);
        set.start();
    }

    public void requestCompleteAnimation() {
        getDrawable().requestCompleteAnimation(this.internalListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ProgressArcDrawable getDrawable() {
        Drawable ret = getIndeterminateDrawable();
        return (ProgressArcDrawable) ret;
    }

    public AnimatorSet getScaleDownAnimator() {
        float scalePercent = getWidth() / ((getWidth() + this.arcWidth) + 5);
        ValueAnimator arcScaleX = ObjectAnimator.ofFloat(this, "scaleX", scalePercent);
        ValueAnimator arcScaleY = ObjectAnimator.ofFloat(this, "scaleY", scalePercent);
        AnimatorSet set = new AnimatorSet();
        set.setDuration(150L).setInterpolator(new DecelerateInterpolator());
        set.playTogether(arcScaleX, arcScaleY);
        set.addListener(new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.progressarc.ProgressArcView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ProgressArcView.this.setupInitialAlpha();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        return set;
    }
}

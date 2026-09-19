package com.github.jorgecastilloprz.completefab;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.graphics.drawable.PathInterpolatorCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.github.jorgecastilloprz.library.R;

/* JADX INFO: loaded from: classes2.dex */
public class CompleteFABView extends FrameLayout {
    private final int RESET_DELAY;
    private int arcColor;
    private Drawable iconDrawable;
    private CompleteFABListener listener;
    private boolean viewsAdded;

    public CompleteFABView(Context context, Drawable iconDrawable, int arcColor) {
        super(context);
        this.RESET_DELAY = PathInterpolatorCompat.MAX_NUM_POINTS;
        this.iconDrawable = iconDrawable;
        this.arcColor = arcColor;
        init();
    }

    public void attachListener(CompleteFABListener listener) {
        this.listener = listener;
    }

    private void init() {
        inflate(getContext(), R.layout.complete_fab, this);
    }

    private void tintCompleteFabWithArcColor() {
        Drawable background = getResources().getDrawable(R.drawable.oval_complete);
        background.setColorFilter(this.arcColor, PorterDuff.Mode.SRC_ATOP);
        findViewById(R.id.completeFabRoot).setBackgroundDrawable(background);
    }

    private void setIcon() {
        ImageView iconView = (ImageView) findViewById(R.id.completeFabIcon);
        iconView.setImageDrawable(this.iconDrawable != null ? this.iconDrawable : getResources().getDrawable(R.drawable.ic_done));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (!this.viewsAdded) {
            setupContentSize();
            tintCompleteFabWithArcColor();
            setIcon();
            this.viewsAdded = true;
        }
    }

    private void setupContentSize() {
        int contentSize = (int) getResources().getDimension(R.dimen.fab_content_size);
        int mContentPadding = (getChildAt(0).getMeasuredWidth() - contentSize) / 2;
        getChildAt(0).setPadding(mContentPadding, mContentPadding, mContentPadding, mContentPadding);
    }

    public void animate(AnimatorSet progressArcAnimator) {
        animate(progressArcAnimator, false);
    }

    private void animate(AnimatorSet progressArcAnimator, boolean inverse) {
        View childAt = getChildAt(0);
        float[] fArr = new float[1];
        fArr[0] = inverse ? 0.0f : 1.0f;
        ValueAnimator completeFabAnim = ObjectAnimator.ofFloat(childAt, "alpha", fArr);
        completeFabAnim.setDuration(300L).setInterpolator(new AccelerateDecelerateInterpolator());
        View icon = findViewById(R.id.completeFabIcon);
        ValueAnimator iconScaleAnimX = ObjectAnimator.ofFloat(icon, "scaleX", 0.0f, 1.0f);
        ValueAnimator iconScaleAnimY = ObjectAnimator.ofFloat(icon, "scaleY", 0.0f, 1.0f);
        Interpolator iconAnimInterpolator = new LinearInterpolator();
        iconScaleAnimX.setDuration(250L).setInterpolator(iconAnimInterpolator);
        iconScaleAnimY.setDuration(250L).setInterpolator(iconAnimInterpolator);
        AnimatorSet animatorSet = new AnimatorSet();
        if (inverse) {
            animatorSet.playTogether(completeFabAnim);
        } else {
            animatorSet.playTogether(completeFabAnim, progressArcAnimator, iconScaleAnimX, iconScaleAnimY);
        }
        animatorSet.addListener(inverse ? getInverseAnimatorListener() : getAnimatorListener());
        if (inverse) {
            animatorSet.setStartDelay(3000L);
        }
        animatorSet.start();
    }

    private Animator.AnimatorListener getAnimatorListener() {
        return new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.completefab.CompleteFABView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CompleteFABView.this.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CompleteFABView.this.listener != null) {
                    CompleteFABView.this.listener.onCompleteFABAnimationEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        };
    }

    private Animator.AnimatorListener getInverseAnimatorListener() {
        return new Animator.AnimatorListener() { // from class: com.github.jorgecastilloprz.completefab.CompleteFABView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CompleteFABView.this.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        };
    }

    public void reset() {
        animate(null, true);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }
}

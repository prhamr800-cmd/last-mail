package com.github.jorgecastilloprz.progressarc.animations;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class ShrinkArcAnimation implements ArcAnimation {
    private ValueAnimator shrinkAnim = ValueAnimator.ofFloat(300.0f, 20.0f);

    ShrinkArcAnimation(ValueAnimator.AnimatorUpdateListener updateListener, Animator.AnimatorListener listener) {
        this.shrinkAnim.setInterpolator(new DecelerateInterpolator());
        this.shrinkAnim.setDuration(1000L);
        this.shrinkAnim.addUpdateListener(updateListener);
        this.shrinkAnim.addListener(listener);
    }

    @Override // com.github.jorgecastilloprz.progressarc.animations.ArcAnimation
    public ValueAnimator getAnimator() {
        return this.shrinkAnim;
    }
}

package com.github.jorgecastilloprz.progressarc.animations;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class CompleteArcAnimation implements ArcAnimation {
    private ValueAnimator completeAnim = ValueAnimator.ofFloat(300.0f, 20.0f);

    CompleteArcAnimation(ValueAnimator.AnimatorUpdateListener updateListener, Animator.AnimatorListener listener) {
        this.completeAnim.setInterpolator(new DecelerateInterpolator());
        this.completeAnim.setDuration(2000L);
        this.completeAnim.addUpdateListener(updateListener);
        this.completeAnim.addListener(listener);
    }

    @Override // com.github.jorgecastilloprz.progressarc.animations.ArcAnimation
    public ValueAnimator getAnimator() {
        return this.completeAnim;
    }
}

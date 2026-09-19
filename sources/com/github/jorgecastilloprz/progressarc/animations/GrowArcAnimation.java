package com.github.jorgecastilloprz.progressarc.animations;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class GrowArcAnimation implements ArcAnimation {
    private ValueAnimator growAnim = ValueAnimator.ofFloat(20.0f, 300.0f);

    GrowArcAnimation(ValueAnimator.AnimatorUpdateListener updateListener, Animator.AnimatorListener listener) {
        this.growAnim.setInterpolator(new DecelerateInterpolator());
        this.growAnim.setDuration(1000L);
        this.growAnim.addUpdateListener(updateListener);
        this.growAnim.addListener(listener);
    }

    @Override // com.github.jorgecastilloprz.progressarc.animations.ArcAnimation
    public ValueAnimator getAnimator() {
        return this.growAnim;
    }
}

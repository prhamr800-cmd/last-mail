package com.github.jorgecastilloprz.progressarc.animations;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes2.dex */
final class RotateArcAnimation implements ArcAnimation {
    private ValueAnimator rotateAnim = ValueAnimator.ofFloat(0.0f, 360.0f);

    RotateArcAnimation(ValueAnimator.AnimatorUpdateListener updateListener) {
        this.rotateAnim.setInterpolator(new LinearInterpolator());
        this.rotateAnim.setDuration(2000L);
        this.rotateAnim.addUpdateListener(updateListener);
        this.rotateAnim.setRepeatCount(-1);
        this.rotateAnim.setRepeatMode(1);
    }

    @Override // com.github.jorgecastilloprz.progressarc.animations.ArcAnimation
    public ValueAnimator getAnimator() {
        return this.rotateAnim;
    }
}

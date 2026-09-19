package com.github.jorgecastilloprz.utils;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes2.dex */
public class AnimationUtils {
    public static final int SHOW_SCALE_ANIM_DELAY = 150;

    public static float getAnimatedFraction(ValueAnimator animator) {
        float fraction = animator.getCurrentPlayTime() / animator.getDuration();
        return animator.getInterpolator().getInterpolation(Math.min(fraction, 1.0f));
    }
}

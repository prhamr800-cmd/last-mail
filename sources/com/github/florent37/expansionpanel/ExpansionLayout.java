package com.github.florent37.expansionpanel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.widget.NestedScrollView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExpansionLayout extends NestedScrollView {
    private Animator animator;
    private boolean expanded;
    private final List<IndicatorListener> indicatorListeners;
    private final List<Listener> listeners;

    public interface IndicatorListener {
        void onStartedExpand(ExpansionLayout expansionLayout, boolean z);
    }

    public interface Listener {
        void onExpansionChanged(ExpansionLayout expansionLayout, boolean z);
    }

    public ExpansionLayout(Context context) {
        super(context);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.expanded = false;
        init(context, null);
    }

    public ExpansionLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.expanded = false;
        init(context, attrs);
    }

    public ExpansionLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.expanded = false;
        init(context, attrs);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attrs) {
        TypedArray a;
        requestDisallowInterceptTouchEvent(true);
        if (attrs != null && (a = context.obtainStyledAttributes(attrs, R.styleable.ExpansionLayout)) != null) {
            this.expanded = a.getBoolean(R.styleable.ExpansionLayout_expansion_expanded, this.expanded);
            a.recycle();
        }
    }

    public void addListener(Listener listener) {
        if (listener != null && !this.listeners.contains(listener)) {
            this.listeners.add(listener);
        }
    }

    public void removeListener(Listener listener) {
        if (listener != null) {
            this.listeners.remove(listener);
        }
    }

    public void addIndicatorListener(IndicatorListener listener) {
        if (listener != null && !this.indicatorListeners.contains(listener)) {
            this.indicatorListeners.add(listener);
        }
    }

    public void removeIndicatorListener(IndicatorListener listener) {
        if (listener != null) {
            this.indicatorListeners.remove(listener);
        }
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.expanded) {
            setHeight(0.0f);
        }
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View child) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child);
        onViewAdded();
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View child, int index) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child, index);
        onViewAdded();
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child, params);
        onViewAdded();
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child, index, params);
        onViewAdded();
    }

    private void onViewAdded() {
        if (getChildCount() != 0) {
            View childView = getChildAt(0);
            childView.getViewTreeObserver().addOnPreDrawListener(new AnonymousClass1(childView));
        }
    }

    /* JADX INFO: renamed from: com.github.florent37.expansionpanel.ExpansionLayout$1, reason: invalid class name */
    class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ View val$childView;

        AnonymousClass1(View view) {
            this.val$childView = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.val$childView.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpansionLayout.this.expanded) {
                ExpansionLayout.this.expand(false);
            }
            this.val$childView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.1.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    if (ExpansionLayout.this.expanded && ExpansionLayout.this.animator == null) {
                        final int height = bottom - top;
                        ExpansionLayout.this.post(new Runnable() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ExpansionLayout.this.setHeight(height);
                            }
                        });
                    }
                }
            });
            return false;
        }
    }

    public void collapse(boolean animated) {
        if (!isEnabled() || !this.expanded) {
            return;
        }
        pingIndicatorListeners(false);
        if (animated) {
            ValueAnimator valueAnimator = ValueAnimator.ofFloat(getHeight() * 1.0f, 0.0f);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ExpansionLayout.this.setHeight(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    ExpansionLayout.this.animator = null;
                    ExpansionLayout.this.pingListeners();
                }
            });
            this.expanded = false;
            this.animator = valueAnimator;
            valueAnimator.start();
            return;
        }
        setHeight(0.0f);
        this.expanded = false;
        pingListeners();
    }

    private void pingIndicatorListeners(boolean willBeExpanded) {
        for (IndicatorListener indicatorListener : this.indicatorListeners) {
            if (indicatorListener != null) {
                indicatorListener.onStartedExpand(this, willBeExpanded);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pingListeners() {
        for (Listener listener : this.listeners) {
            if (listener != null) {
                listener.onExpansionChanged(this, this.expanded);
            }
        }
    }

    public void expand(boolean animated) {
        if (!isEnabled() || this.expanded) {
            return;
        }
        pingIndicatorListeners(true);
        if (animated) {
            ValueAnimator valueAnimator = ValueAnimator.ofFloat(0.0f, getChildAt(0).getHeight());
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ExpansionLayout.this.setHeight(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.florent37.expansionpanel.ExpansionLayout.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    ExpansionLayout.this.animator = null;
                    ExpansionLayout.this.pingListeners();
                }
            });
            this.expanded = true;
            this.animator = valueAnimator;
            valueAnimator.start();
            return;
        }
        setHeight(getChildAt(0).getHeight());
        this.expanded = true;
        pingListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeight(float height) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = (int) height;
            setLayoutParams(layoutParams);
        }
    }

    public void toggle(boolean animated) {
        if (this.expanded) {
            collapse(animated);
        } else {
            expand(animated);
        }
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle savedInstance = new Bundle();
        savedInstance.putParcelable("super", super.onSaveInstanceState());
        savedInstance.putBoolean("expanded", this.expanded);
        return savedInstance;
    }

    @Override // android.support.v4.widget.NestedScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle savedInstance = (Bundle) state;
            boolean expanded = savedInstance.getBoolean("expanded");
            if (expanded) {
                expand(false);
            } else {
                collapse(false);
            }
            super.onRestoreInstanceState(savedInstance.getParcelable("super"));
            return;
        }
        super.onRestoreInstanceState(state);
    }

    public boolean isExpanded() {
        return this.expanded;
    }
}

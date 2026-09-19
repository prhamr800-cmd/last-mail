package com.github.florent37.expansionpanel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HorizontalExpansionLayout extends HorizontalScrollView {
    private Animator animator;
    private boolean expanded;
    private final List<IndicatorListener> indicatorListeners;
    private final List<Listener> listeners;

    public interface IndicatorListener {
        void onStartedExpand(HorizontalExpansionLayout horizontalExpansionLayout, boolean z);
    }

    public interface Listener {
        void onExpansionChanged(HorizontalExpansionLayout horizontalExpansionLayout, boolean z);
    }

    public HorizontalExpansionLayout(Context context) {
        super(context);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.expanded = false;
        init(context, null);
    }

    public HorizontalExpansionLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.indicatorListeners = new ArrayList();
        this.listeners = new ArrayList();
        this.expanded = false;
        init(context, attrs);
    }

    public HorizontalExpansionLayout(Context context, AttributeSet attrs, int defStyleAttr) {
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

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.expanded) {
            setWidth(0.0f);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View child) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child);
        onViewAdded();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View child, int index) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child, index);
        onViewAdded();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ExpansionLayout can host only one direct child");
        }
        super.addView(child, params);
        onViewAdded();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
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

    /* JADX INFO: renamed from: com.github.florent37.expansionpanel.HorizontalExpansionLayout$1, reason: invalid class name */
    class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ View val$childView;

        AnonymousClass1(View view) {
            this.val$childView = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.val$childView.getViewTreeObserver().removeOnPreDrawListener(this);
            if (HorizontalExpansionLayout.this.expanded) {
                HorizontalExpansionLayout.this.expand(false);
            }
            this.val$childView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.1.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    if (HorizontalExpansionLayout.this.expanded && HorizontalExpansionLayout.this.animator == null) {
                        final int width = right - left;
                        HorizontalExpansionLayout.this.post(new Runnable() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                HorizontalExpansionLayout.this.setWidth(width);
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
            ValueAnimator valueAnimator = ValueAnimator.ofFloat(getWidth() * 1.0f, 0.0f);
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    HorizontalExpansionLayout.this.setWidth(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    HorizontalExpansionLayout.this.animator = null;
                    HorizontalExpansionLayout.this.pingListeners();
                }
            });
            this.expanded = false;
            this.animator = valueAnimator;
            valueAnimator.start();
            return;
        }
        setWidth(0.0f);
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
            ValueAnimator valueAnimator = ValueAnimator.ofFloat(0.0f, getChildAt(0).getWidth());
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    HorizontalExpansionLayout.this.setWidth(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.florent37.expansionpanel.HorizontalExpansionLayout.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    HorizontalExpansionLayout.this.animator = null;
                    HorizontalExpansionLayout.this.pingListeners();
                }
            });
            this.expanded = true;
            this.animator = valueAnimator;
            valueAnimator.start();
            return;
        }
        setWidth(getChildAt(0).getWidth());
        this.expanded = true;
        pingListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWidth(float width) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) width;
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

    public boolean isExpanded() {
        return this.expanded;
    }
}

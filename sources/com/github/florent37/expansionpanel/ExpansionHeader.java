package com.github.florent37.expansionpanel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.github.florent37.expansionpanel.ExpansionLayout;

/* JADX INFO: loaded from: classes2.dex */
public class ExpansionHeader extends FrameLayout {

    @Nullable
    ExpansionLayout expansionLayout;
    int expansionLayoutId;
    private boolean expansionLayoutInitialised;

    @Nullable
    View headerIndicator;
    int headerIndicatorId;
    private int headerRotationCollapsed;
    private int headerRotationExpanded;

    @Nullable
    Animator indicatorAnimator;
    boolean toggleOnClick;

    public ExpansionHeader(@NonNull Context context) {
        super(context);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, null);
    }

    public ExpansionHeader(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, attrs);
    }

    public ExpansionHeader(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.headerIndicatorId = 0;
        this.expansionLayoutId = 0;
        this.toggleOnClick = true;
        this.headerRotationExpanded = 270;
        this.headerRotationCollapsed = 90;
        this.expansionLayoutInitialised = false;
        init(context, attrs);
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attrs) {
        TypedArray a;
        if (attrs != null && (a = context.obtainStyledAttributes(attrs, R.styleable.ExpansionHeader)) != null) {
            setHeaderRotationExpanded(a.getInt(R.styleable.ExpansionHeader_expansion_headerIndicatorRotationExpanded, this.headerRotationExpanded));
            setHeaderRotationCollapsed(a.getInt(R.styleable.ExpansionHeader_expansion_headerIndicatorRotationCollapsed, this.headerRotationCollapsed));
            setHeaderIndicatorId(a.getResourceId(R.styleable.ExpansionHeader_expansion_headerIndicator, this.headerIndicatorId));
            setExpansionLayoutId(a.getResourceId(R.styleable.ExpansionHeader_expansion_layout, this.expansionLayoutId));
            setToggleOnClick(a.getBoolean(R.styleable.ExpansionHeader_expansion_toggleOnClick, this.toggleOnClick));
            a.recycle();
        }
    }

    public void setHeaderRotationExpanded(int headerRotationExpanded) {
        this.headerRotationExpanded = headerRotationExpanded;
    }

    public void setHeaderRotationCollapsed(int headerRotationCollapsed) {
        this.headerRotationCollapsed = headerRotationCollapsed;
    }

    public boolean isToggleOnClick() {
        return this.toggleOnClick;
    }

    public void setToggleOnClick(boolean toggleOnClick) {
        this.toggleOnClick = toggleOnClick;
    }

    public void setHeaderIndicatorId(int headerIndicatorId) {
        this.headerIndicatorId = headerIndicatorId;
        if (headerIndicatorId != 0) {
            this.headerIndicator = findViewById(headerIndicatorId);
            setExpansionHeaderIndicator(this.headerIndicator);
        }
    }

    public void setExpansionHeaderIndicator(@Nullable View headerIndicator) {
        this.headerIndicator = headerIndicator;
        if (headerIndicator != null && Build.VERSION.SDK_INT >= 11) {
            headerIndicator.setLayerType(1, null);
        }
        setup();
    }

    public void setExpansionLayout(@Nullable ExpansionLayout expansionLayout) {
        this.expansionLayout = expansionLayout;
        setup();
    }

    public void setExpansionLayoutId(int expansionLayoutId) {
        this.expansionLayoutId = expansionLayoutId;
        if (expansionLayoutId != 0) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                View view = ((ViewGroup) parent).findViewById(expansionLayoutId);
                if (view instanceof ExpansionLayout) {
                    setExpansionLayout((ExpansionLayout) view);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setHeaderIndicatorId(this.headerIndicatorId);
        setExpansionLayoutId(this.expansionLayoutId);
        setup();
    }

    private void setup() {
        if (this.expansionLayout != null && !this.expansionLayoutInitialised) {
            this.expansionLayout.addIndicatorListener(new ExpansionLayout.IndicatorListener() { // from class: com.github.florent37.expansionpanel.ExpansionHeader.1
                @Override // com.github.florent37.expansionpanel.ExpansionLayout.IndicatorListener
                public void onStartedExpand(ExpansionLayout expansionLayout, boolean willExpand) {
                    ExpansionHeader.this.onExpansionModifyView(willExpand);
                }
            });
            setOnClickListener(new View.OnClickListener() { // from class: com.github.florent37.expansionpanel.ExpansionHeader.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ExpansionHeader.this.toggleOnClick) {
                        ExpansionHeader.this.expansionLayout.toggle(true);
                    }
                }
            });
            initialiseView(this.expansionLayout.isExpanded());
            this.expansionLayoutInitialised = true;
        }
    }

    protected void initialiseView(boolean isExpanded) {
        if (this.headerIndicator != null) {
            this.headerIndicator.setRotation(isExpanded ? this.headerRotationExpanded : this.headerRotationCollapsed);
        }
    }

    protected void onExpansionModifyView(boolean willExpand) {
        setSelected(willExpand);
        if (this.headerIndicator != null) {
            if (this.indicatorAnimator != null) {
                this.indicatorAnimator.cancel();
            }
            if (willExpand) {
                this.indicatorAnimator = ObjectAnimator.ofFloat(this.headerIndicator, (Property<View, Float>) View.ROTATION, this.headerRotationExpanded);
            } else {
                this.indicatorAnimator = ObjectAnimator.ofFloat(this.headerIndicator, (Property<View, Float>) View.ROTATION, this.headerRotationCollapsed);
            }
            this.indicatorAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.florent37.expansionpanel.ExpansionHeader.3
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation, boolean isReverse) {
                    ExpansionHeader.this.indicatorAnimator = null;
                }
            });
            if (this.indicatorAnimator != null) {
                this.indicatorAnimator.start();
            }
        }
    }

    public boolean isExpanded() {
        return this.expansionLayout != null && this.expansionLayout.isExpanded();
    }

    public void addListener(ExpansionLayout.Listener listener) {
        if (this.expansionLayout != null) {
            this.expansionLayout.addListener(listener);
        }
    }

    public void removeListener(ExpansionLayout.Listener listener) {
        if (this.expansionLayout != null) {
            this.expansionLayout.removeListener(listener);
        }
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        Bundle savedInstance = new Bundle();
        savedInstance.putParcelable("super", super.onSaveInstanceState());
        savedInstance.putInt("headerIndicatorId", this.headerIndicatorId);
        savedInstance.putInt("expansionLayoutId", this.expansionLayoutId);
        savedInstance.putBoolean("toggleOnClick", this.toggleOnClick);
        savedInstance.putInt("headerRotationExpanded", this.headerRotationExpanded);
        savedInstance.putInt("headerRotationCollapsed", this.headerRotationCollapsed);
        return savedInstance;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle savedInstance = (Bundle) state;
            this.headerIndicatorId = savedInstance.getInt("headerIndicatorId");
            this.expansionLayoutId = savedInstance.getInt("expansionLayoutId");
            setToggleOnClick(savedInstance.getBoolean("toggleOnClick"));
            setHeaderRotationExpanded(savedInstance.getInt("headerRotationExpanded"));
            setHeaderRotationCollapsed(savedInstance.getInt("headerRotationCollapsed"));
            this.expansionLayoutInitialised = false;
            super.onRestoreInstanceState(savedInstance.getParcelable("super"));
            return;
        }
        super.onRestoreInstanceState(state);
    }

    @Nullable
    public View getHeaderIndicator() {
        return this.headerIndicator;
    }
}

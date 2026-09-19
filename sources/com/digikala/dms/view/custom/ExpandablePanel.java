package com.digikala.dms.view.custom;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.digikala.dms.R;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* JADX INFO: loaded from: classes2.dex */
public class ExpandablePanel extends LinearLayout {
    private static final int DEFAULT_ANIM_DURATION = 400;
    private ExpandAnimation animation;
    private Context context;
    private int mAnimationDuration;
    private View mContent;
    private View mContentContainer;
    private final int mContentContainerId;
    private final int mContentId;
    private boolean mExpanded;
    private View mHandle;
    private final int mHandleId;
    private OnExpandListener mListener;

    public interface OnExpandListener {
        void onCollapse(View view, View view2);

        void onExpand(View view, View view2);
    }

    public ExpandablePanel(Context context) {
        this(context, null);
    }

    public ExpandablePanel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mExpanded = false;
        this.mAnimationDuration = 0;
        this.animation = new ExpandAnimation();
        this.context = context;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.ExpandablePanel, 0, 0);
        try {
            this.mAnimationDuration = a.getInteger(0, DEFAULT_ANIM_DURATION);
            int handleId = a.getResourceId(3, 0);
            if (handleId != 0) {
                int contentContainerId = a.getResourceId(2, 0);
                if (contentContainerId != 0) {
                    int contentId = a.getResourceId(1, 0);
                    if (contentId == 0) {
                        throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
                    }
                    this.mHandleId = handleId;
                    this.mContentContainerId = contentContainerId;
                    this.mContentId = contentId;
                    return;
                }
                throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
            }
            throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
        } finally {
            a.recycle();
        }
    }

    public void setOnExpandListener(OnExpandListener listener) {
        this.mListener = listener;
    }

    public void setAnimationDuration(int animationDuration) {
        this.mAnimationDuration = animationDuration;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHandle = findViewById(this.mHandleId);
        if (this.mHandle == null) {
            throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
        }
        this.mContentContainer = findViewById(this.mContentContainerId);
        if (this.mContentContainer == null) {
            throw new IllegalArgumentException("The content container attribute must refer to an existing child.");
        }
        this.mContent = findViewById(this.mContentId);
        if (this.mContentContainer == null) {
            throw new IllegalArgumentException("The content attribute must refer to an existing child.");
        }
        this.mContentContainer.setVisibility(8);
        this.mHandle.setOnClickListener(new PanelClicked());
    }

    private class PanelClicked implements View.OnClickListener {
        private PanelClicked() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (!ExpandablePanel.this.mExpanded) {
                ExpandablePanel.this.mContentContainer.setVisibility(0);
                ExpandablePanel.this.invalidate();
                ValueAnimator anim = ValueAnimator.ofInt(ExpandablePanel.this.mContentContainer.getMeasuredHeight(), SettingsJsonConstants.ANALYTICS_FLUSH_INTERVAL_SECS_DEFAULT);
                anim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.digikala.dms.view.custom.ExpandablePanel.PanelClicked.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int val = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams = ExpandablePanel.this.mContentContainer.getLayoutParams();
                        layoutParams.height = val;
                        ExpandablePanel.this.mContentContainer.setLayoutParams(layoutParams);
                    }
                });
                anim.setDuration(300L);
                anim.start();
                if (ExpandablePanel.this.mListener != null) {
                    ExpandablePanel.this.mListener.onExpand(ExpandablePanel.this.mHandle, ExpandablePanel.this.mContentContainer);
                }
            } else {
                ValueAnimator anim2 = ValueAnimator.ofInt(ExpandablePanel.this.mContentContainer.getMeasuredHeight(), 0);
                anim2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.digikala.dms.view.custom.ExpandablePanel.PanelClicked.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int val = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        ViewGroup.LayoutParams layoutParams = ExpandablePanel.this.mContentContainer.getLayoutParams();
                        layoutParams.height = val;
                        ExpandablePanel.this.mContentContainer.setLayoutParams(layoutParams);
                    }
                });
                anim2.setDuration(300L);
                anim2.start();
                if (ExpandablePanel.this.mListener != null) {
                    ExpandablePanel.this.mListener.onCollapse(ExpandablePanel.this.mHandle, ExpandablePanel.this.mContentContainer);
                }
            }
            ExpandablePanel.this.mExpanded = !ExpandablePanel.this.mExpanded;
        }
    }

    public class ExpandAnimation {
        public ExpandAnimation() {
        }
    }
}

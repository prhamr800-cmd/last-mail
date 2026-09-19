package com.github.jorgecastilloprz;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.github.jorgecastilloprz.completefab.CompleteFABListener;
import com.github.jorgecastilloprz.completefab.CompleteFABView;
import com.github.jorgecastilloprz.library.R;
import com.github.jorgecastilloprz.listeners.FABProgressListener;
import com.github.jorgecastilloprz.progressarc.ArcListener;
import com.github.jorgecastilloprz.progressarc.ProgressArcView;
import com.github.jorgecastilloprz.utils.LibraryUtils;

/* JADX INFO: loaded from: classes2.dex */
public class FABProgressCircle extends FrameLayout implements ArcListener, CompleteFABListener {
    private final int SIZE_MINI;
    private final int SIZE_NORMAL;
    private int arcColor;
    private int arcWidth;
    private int circleSize;
    private CompleteFABView completeFABView;
    private Drawable completeIconDrawable;
    private FABProgressListener listener;
    private ProgressArcView progressArc;
    private boolean reusable;
    private boolean roundedStroke;
    private boolean viewsAdded;

    public FABProgressCircle(Context context) {
        super(context);
        this.SIZE_NORMAL = 1;
        this.SIZE_MINI = 2;
        init(null);
    }

    public FABProgressCircle(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.SIZE_NORMAL = 1;
        this.SIZE_MINI = 2;
        init(attrs);
    }

    public FABProgressCircle(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.SIZE_NORMAL = 1;
        this.SIZE_MINI = 2;
        init(attrs);
    }

    @TargetApi(21)
    public FABProgressCircle(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.SIZE_NORMAL = 1;
        this.SIZE_MINI = 2;
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        setupInitialAttributes(attrs);
    }

    private void setupInitialAttributes(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray attrArray = getAttributes(attrs);
            try {
                this.arcColor = attrArray.getColor(R.styleable.FABProgressCircle_arcColor, getResources().getColor(R.color.fab_orange_dark));
                this.arcWidth = attrArray.getDimensionPixelSize(R.styleable.FABProgressCircle_arcWidth, getResources().getDimensionPixelSize(R.dimen.progress_arc_stroke_width));
                this.completeIconDrawable = attrArray.getDrawable(R.styleable.FABProgressCircle_finalIcon);
                this.circleSize = attrArray.getInt(R.styleable.FABProgressCircle_circleSize, 1);
                this.roundedStroke = attrArray.getBoolean(R.styleable.FABProgressCircle_roundedStroke, false);
                this.reusable = attrArray.getBoolean(R.styleable.FABProgressCircle_reusable, false);
            } finally {
                attrArray.recycle();
            }
        }
    }

    private TypedArray getAttributes(AttributeSet attrs) {
        return getContext().obtainStyledAttributes(attrs, R.styleable.FABProgressCircle, 0, 0);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        checkChildCount();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (!this.viewsAdded) {
            addArcView();
            setupFab();
            this.viewsAdded = true;
        }
    }

    private void addArcView() {
        setClipChildren(false);
        this.progressArc = new ProgressArcView(getContext(), this.arcColor, this.arcWidth, this.roundedStroke);
        this.progressArc.setInternalListener(this);
        addView(this.progressArc, new FrameLayout.LayoutParams(getFabDimension() + this.arcWidth, getFabDimension() + this.arcWidth, 17));
    }

    private void setupFab() {
        FrameLayout.LayoutParams fabParams = (FrameLayout.LayoutParams) getChildAt(0).getLayoutParams();
        fabParams.gravity = 17;
        if (LibraryUtils.isAFutureSimpleFAB(getChildAt(0))) {
            fabParams.topMargin = getResources().getDimensionPixelSize(R.dimen.futuresimple_fab_shadow_offset);
        }
    }

    private void checkChildCount() {
        if (getChildCount() != 1) {
            throw new IllegalStateException(getResources().getString(R.string.child_count_error));
        }
    }

    public void attachListener(FABProgressListener listener) {
        this.listener = listener;
    }

    public void show() {
        this.progressArc.show();
    }

    public void hide() {
        this.progressArc.stop();
    }

    public void beginFinalAnimation() {
        this.progressArc.requestCompleteAnimation();
    }

    @Override // com.github.jorgecastilloprz.progressarc.ArcListener
    public void onArcAnimationComplete() {
        displayColorTransformAnimation();
    }

    private void displayColorTransformAnimation() {
        addCompleteFabView();
        ViewCompat.setElevation(this.completeFABView, ViewCompat.getElevation(getChildAt(0)) + 1.0f);
        this.completeFABView.animate(this.progressArc.getScaleDownAnimator());
    }

    private void addCompleteFabView() {
        this.completeFABView = new CompleteFABView(getContext(), this.completeIconDrawable, this.arcColor);
        this.completeFABView.attachListener(this);
        addView(this.completeFABView, new FrameLayout.LayoutParams(getFabDimension(), getFabDimension(), 17));
    }

    @Override // com.github.jorgecastilloprz.completefab.CompleteFABListener
    public void onCompleteFABAnimationEnd() {
        doReusableReset();
        if (this.listener != null) {
            this.listener.onFABProgressAnimationEnd();
        }
    }

    private void doReusableReset() {
        if (isReusable()) {
            this.progressArc.reset();
            this.completeFABView.reset();
        }
    }

    private boolean isReusable() {
        return this.reusable;
    }

    private int getFabDimension() {
        if (this.circleSize == 1) {
            return getResources().getDimensionPixelSize(R.dimen.fab_size_normal);
        }
        return getResources().getDimensionPixelSize(R.dimen.fab_size_mini);
    }
}

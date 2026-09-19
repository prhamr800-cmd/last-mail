package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    static boolean ALLOW_ROOT_GROUP = true;
    private static final int CHAIN_FIRST = 0;
    private static final int CHAIN_FIRST_VISIBLE = 2;
    private static final int CHAIN_LAST = 1;
    private static final int CHAIN_LAST_VISIBLE = 3;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_OPTIMIZE = false;
    private static final int FLAG_CHAIN_DANGLING = 1;
    private static final int FLAG_CHAIN_OPTIMIZE = 0;
    private static final int FLAG_RECOMPUTE_BOUNDS = 2;
    private static final int MAX_ITERATIONS = 8;
    public static final int OPTIMIZATION_ALL = 2;
    public static final int OPTIMIZATION_BASIC = 4;
    public static final int OPTIMIZATION_CHAIN = 8;
    public static final int OPTIMIZATION_NONE = 1;
    private static final boolean USE_SNAPSHOT = true;
    private static final boolean USE_THREAD = false;
    private boolean[] flags;
    protected LinearSystem mBackgroundSystem;
    private ConstraintWidget[] mChainEnds;
    private boolean mHeightMeasuredTooSmall;
    private ConstraintWidget[] mHorizontalChainsArray;
    private int mHorizontalChainsSize;
    private ConstraintWidget[] mMatchConstraintsChainedWidgets;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    private ConstraintWidget[] mVerticalChainsArray;
    private int mVerticalChainsSize;
    private boolean mWidthMeasuredTooSmall;
    int mWrapHeight;
    int mWrapWidth;

    public ConstraintWidgetContainer() {
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int x, int y, int width, int height) {
        super(x, y, width, height);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int width, int height) {
        super(width, height);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public void setOptimizationLevel(int value) {
        this.mOptimizationLevel = value;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    @Override // android.support.constraint.solver.widgets.WidgetContainer, android.support.constraint.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public static ConstraintWidgetContainer createContainer(ConstraintWidgetContainer container, String name, ArrayList<ConstraintWidget> widgets, int padding) {
        Rectangle bounds = getBounds(widgets);
        if (bounds.width == 0 || bounds.height == 0) {
            return null;
        }
        if (padding > 0) {
            int maxPadding = Math.min(bounds.x, bounds.y);
            if (padding > maxPadding) {
                padding = maxPadding;
            }
            bounds.grow(padding, padding);
        }
        container.setOrigin(bounds.x, bounds.y);
        container.setDimension(bounds.width, bounds.height);
        container.setDebugName(name);
        ConstraintWidget parent = widgets.get(0).getParent();
        int widgetsSize = widgets.size();
        for (int i = 0; i < widgetsSize; i++) {
            ConstraintWidget widget = widgets.get(i);
            if (widget.getParent() == parent) {
                container.add(widget);
                widget.setX(widget.getX() - bounds.x);
                widget.setY(widget.getY() - bounds.y);
            }
        }
        return container;
    }

    public boolean addChildrenToSolver(LinearSystem system, int group) {
        addToSolver(system, group);
        int count = this.mChildren.size();
        boolean setMatchParent = false;
        int i = 0;
        if (this.mOptimizationLevel == 2 || this.mOptimizationLevel == 4) {
            if (optimize(system)) {
                return false;
            }
        } else {
            setMatchParent = true;
        }
        while (true) {
            int i2 = i;
            if (i2 >= count) {
                break;
            }
            ConstraintWidget widget = this.mChildren.get(i2);
            if (widget instanceof ConstraintWidgetContainer) {
                ConstraintWidget.DimensionBehaviour horizontalBehaviour = widget.mHorizontalDimensionBehaviour;
                ConstraintWidget.DimensionBehaviour verticalBehaviour = widget.mVerticalDimensionBehaviour;
                if (horizontalBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    widget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (verticalBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    widget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                widget.addToSolver(system, group);
                if (horizontalBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    widget.setHorizontalDimensionBehaviour(horizontalBehaviour);
                }
                if (verticalBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    widget.setVerticalDimensionBehaviour(verticalBehaviour);
                }
            } else {
                if (setMatchParent) {
                    Optimizer.checkMatchParent(this, system, widget);
                }
                widget.addToSolver(system, group);
            }
            i = i2 + 1;
        }
        int i3 = this.mHorizontalChainsSize;
        if (i3 > 0) {
            applyHorizontalChain(system);
        }
        if (this.mVerticalChainsSize > 0) {
            applyVerticalChain(system);
            return true;
        }
        return true;
    }

    private boolean optimize(LinearSystem system) {
        int count = this.mChildren.size();
        boolean done = false;
        int dv = 0;
        int dv2 = 0;
        int n = 0;
        for (int i = 0; i < count; i++) {
            ConstraintWidget widget = this.mChildren.get(i);
            widget.mHorizontalResolution = -1;
            widget.mVerticalResolution = -1;
            if (widget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || widget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                widget.mHorizontalResolution = 1;
                widget.mVerticalResolution = 1;
            }
        }
        while (!done) {
            int prev = dv;
            int preh = dv2;
            n++;
            int dh = 0;
            int dv3 = 0;
            for (int dv4 = 0; dv4 < count; dv4++) {
                ConstraintWidget widget2 = this.mChildren.get(dv4);
                if (widget2.mHorizontalResolution == -1) {
                    if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        widget2.mHorizontalResolution = 1;
                    } else {
                        Optimizer.checkHorizontalSimpleDependency(this, system, widget2);
                    }
                }
                if (widget2.mVerticalResolution == -1) {
                    if (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        widget2.mVerticalResolution = 1;
                    } else {
                        Optimizer.checkVerticalSimpleDependency(this, system, widget2);
                    }
                }
                if (widget2.mVerticalResolution == -1) {
                    dv3++;
                }
                if (widget2.mHorizontalResolution == -1) {
                    dh++;
                }
            }
            if (dv3 == 0 && dh == 0) {
                done = true;
            } else if (prev == dv3 && preh == dh) {
                done = true;
            }
            dv = dv3;
            dv2 = dh;
        }
        int sv = 0;
        int sv2 = 0;
        for (int sh = 0; sh < count; sh++) {
            ConstraintWidget widget3 = this.mChildren.get(sh);
            if (widget3.mHorizontalResolution == 1 || widget3.mHorizontalResolution == -1) {
                sv2++;
            }
            if (widget3.mVerticalResolution == 1 || widget3.mVerticalResolution == -1) {
                sv++;
            }
        }
        return sv2 == 0 && sv == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:198:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0528  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void applyHorizontalChain(android.support.constraint.solver.LinearSystem r41) {
        /*
            Method dump skipped, instruction units count: 1465
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.applyHorizontalChain(android.support.constraint.solver.LinearSystem):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:209:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x054e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void applyVerticalChain(android.support.constraint.solver.LinearSystem r43) {
        /*
            Method dump skipped, instruction units count: 1503
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.applyVerticalChain(android.support.constraint.solver.LinearSystem):void");
    }

    public void updateChildrenFromSolver(LinearSystem system, int group, boolean[] flags) {
        flags[2] = false;
        updateFromSolver(system, group);
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            ConstraintWidget widget = this.mChildren.get(i);
            widget.updateFromSolver(system, group);
            if (widget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.getWidth() < widget.getWrapWidth()) {
                flags[2] = true;
            }
            if (widget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.getHeight() < widget.getWrapHeight()) {
                flags[2] = true;
            }
        }
    }

    public void setPadding(int left, int top, int right, int bottom) {
        this.mPaddingLeft = left;
        this.mPaddingTop = top;
        this.mPaddingRight = right;
        this.mPaddingBottom = bottom;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x021e A[PHI: r0 r13
      0x021e: PHI (r0v16 'needsSolving' boolean) = 
      (r0v15 'needsSolving' boolean)
      (r0v19 'needsSolving' boolean)
      (r0v19 'needsSolving' boolean)
      (r0v19 'needsSolving' boolean)
     binds: [B:93:0x01e6, B:101:0x0206, B:102:0x0208, B:104:0x020e] A[DONT_GENERATE, DONT_INLINE]
      0x021e: PHI (r13v5 'wrap_override' boolean) = 
      (r13v4 'wrap_override' boolean)
      (r13v7 'wrap_override' boolean)
      (r13v7 'wrap_override' boolean)
      (r13v7 'wrap_override' boolean)
     binds: [B:93:0x01e6, B:101:0x0206, B:102:0x0208, B:104:0x020e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.support.constraint.solver.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void layout() {
        /*
            Method dump skipped, instruction units count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidgetContainer.layout():void");
    }

    static int setGroup(ConstraintAnchor anchor, int group) {
        int oldGroup = anchor.mGroup;
        if (anchor.mOwner.getParent() == null) {
            return group;
        }
        if (oldGroup <= group) {
            return oldGroup;
        }
        anchor.mGroup = group;
        ConstraintAnchor opposite = anchor.getOpposite();
        ConstraintAnchor target = anchor.mTarget;
        int group2 = opposite != null ? setGroup(opposite, group) : group;
        int group3 = target != null ? setGroup(target, group2) : group2;
        int group4 = opposite != null ? setGroup(opposite, group3) : group3;
        anchor.mGroup = group4;
        return group4;
    }

    public int layoutFindGroupsSimple() {
        int size = this.mChildren.size();
        for (int j = 0; j < size; j++) {
            ConstraintWidget widget = this.mChildren.get(j);
            widget.mLeft.mGroup = 0;
            widget.mRight.mGroup = 0;
            widget.mTop.mGroup = 1;
            widget.mBottom.mGroup = 1;
            widget.mBaseline.mGroup = 1;
        }
        return 2;
    }

    public void findHorizontalWrapRecursive(ConstraintWidget widget, boolean[] flags) {
        boolean z = false;
        if (widget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mDimensionRatio > 0.0f) {
            flags[0] = false;
            return;
        }
        int w = widget.getOptimizerWrapWidth();
        if (widget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mDimensionRatio > 0.0f) {
            flags[0] = false;
            return;
        }
        int distToRight = w;
        int distToLeft = w;
        ConstraintWidget leftWidget = null;
        ConstraintWidget rightWidget = null;
        widget.mHorizontalWrapVisited = true;
        if (widget instanceof Guideline) {
            Guideline guideline = (Guideline) widget;
            if (guideline.getOrientation() == 1) {
                distToLeft = 0;
                distToRight = 0;
                if (guideline.getRelativeBegin() != -1) {
                    distToLeft = guideline.getRelativeBegin();
                } else if (guideline.getRelativeEnd() != -1) {
                    distToRight = guideline.getRelativeEnd();
                }
            }
        } else if (!widget.mRight.isConnected() && !widget.mLeft.isConnected()) {
            distToLeft += widget.getX();
        } else {
            if (widget.mRight.mTarget != null && widget.mLeft.mTarget != null && (widget.mRight.mTarget == widget.mLeft.mTarget || (widget.mRight.mTarget.mOwner == widget.mLeft.mTarget.mOwner && widget.mRight.mTarget.mOwner != widget.mParent))) {
                flags[0] = false;
                return;
            }
            if (widget.mRight.mTarget != null) {
                rightWidget = widget.mRight.mTarget.mOwner;
                distToRight += widget.mRight.getMargin();
                if (!rightWidget.isRoot() && !rightWidget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(rightWidget, flags);
                }
            }
            if (widget.mLeft.mTarget != null) {
                leftWidget = widget.mLeft.mTarget.mOwner;
                distToLeft += widget.mLeft.getMargin();
                if (!leftWidget.isRoot() && !leftWidget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(leftWidget, flags);
                }
            }
            if (widget.mRight.mTarget != null && !rightWidget.isRoot()) {
                if (widget.mRight.mTarget.mType == ConstraintAnchor.Type.RIGHT) {
                    distToRight += rightWidget.mDistToRight - rightWidget.getOptimizerWrapWidth();
                } else if (widget.mRight.mTarget.getType() == ConstraintAnchor.Type.LEFT) {
                    distToRight += rightWidget.mDistToRight;
                }
                widget.mRightHasCentered = rightWidget.mRightHasCentered || !(rightWidget.mLeft.mTarget == null || rightWidget.mRight.mTarget == null || rightWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                if (widget.mRightHasCentered && (rightWidget.mLeft.mTarget == null || rightWidget.mLeft.mTarget.mOwner != widget)) {
                    distToRight += distToRight - rightWidget.mDistToRight;
                }
            }
            if (widget.mLeft.mTarget != null && !leftWidget.isRoot()) {
                if (widget.mLeft.mTarget.getType() == ConstraintAnchor.Type.LEFT) {
                    distToLeft += leftWidget.mDistToLeft - leftWidget.getOptimizerWrapWidth();
                } else if (widget.mLeft.mTarget.getType() == ConstraintAnchor.Type.RIGHT) {
                    distToLeft += leftWidget.mDistToLeft;
                }
                if (leftWidget.mLeftHasCentered || (leftWidget.mLeft.mTarget != null && leftWidget.mRight.mTarget != null && leftWidget.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                    z = true;
                }
                widget.mLeftHasCentered = z;
                if (widget.mLeftHasCentered && (leftWidget.mRight.mTarget == null || leftWidget.mRight.mTarget.mOwner != widget)) {
                    distToLeft += distToLeft - leftWidget.mDistToLeft;
                }
            }
        }
        if (widget.getVisibility() == 8) {
            distToLeft -= widget.mWidth;
            distToRight -= widget.mWidth;
        }
        widget.mDistToLeft = distToLeft;
        widget.mDistToRight = distToRight;
    }

    public void findVerticalWrapRecursive(ConstraintWidget widget, boolean[] flags) {
        boolean z = false;
        if (widget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widget.mDimensionRatio > 0.0f) {
            flags[0] = false;
            return;
        }
        int h = widget.getOptimizerWrapHeight();
        int distToTop = h;
        int distToBottom = h;
        ConstraintWidget topWidget = null;
        ConstraintWidget bottomWidget = null;
        widget.mVerticalWrapVisited = true;
        if (widget instanceof Guideline) {
            Guideline guideline = (Guideline) widget;
            if (guideline.getOrientation() == 0) {
                distToTop = 0;
                distToBottom = 0;
                if (guideline.getRelativeBegin() != -1) {
                    distToTop = guideline.getRelativeBegin();
                } else if (guideline.getRelativeEnd() != -1) {
                    distToBottom = guideline.getRelativeEnd();
                }
            }
        } else if (widget.mBaseline.mTarget == null && widget.mTop.mTarget == null && widget.mBottom.mTarget == null) {
            distToTop += widget.getY();
        } else {
            if (widget.mBottom.mTarget != null && widget.mTop.mTarget != null && (widget.mBottom.mTarget == widget.mTop.mTarget || (widget.mBottom.mTarget.mOwner == widget.mTop.mTarget.mOwner && widget.mBottom.mTarget.mOwner != widget.mParent))) {
                flags[0] = false;
                return;
            }
            if (widget.mBaseline.isConnected()) {
                ConstraintWidget baseLineWidget = widget.mBaseline.mTarget.getOwner();
                if (!baseLineWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(baseLineWidget, flags);
                }
                int distToTop2 = Math.max((baseLineWidget.mDistToTop - baseLineWidget.mHeight) + h, h);
                int distToBottom2 = Math.max((baseLineWidget.mDistToBottom - baseLineWidget.mHeight) + h, h);
                if (widget.getVisibility() == 8) {
                    distToTop2 -= widget.mHeight;
                    distToBottom2 -= widget.mHeight;
                }
                widget.mDistToTop = distToTop2;
                widget.mDistToBottom = distToBottom2;
                return;
            }
            if (widget.mTop.isConnected()) {
                topWidget = widget.mTop.mTarget.getOwner();
                distToTop += widget.mTop.getMargin();
                if (!topWidget.isRoot() && !topWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(topWidget, flags);
                }
            }
            if (widget.mBottom.isConnected()) {
                bottomWidget = widget.mBottom.mTarget.getOwner();
                distToBottom += widget.mBottom.getMargin();
                if (!bottomWidget.isRoot() && !bottomWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(bottomWidget, flags);
                }
            }
            if (widget.mTop.mTarget != null && !topWidget.isRoot()) {
                if (widget.mTop.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                    distToTop += topWidget.mDistToTop - topWidget.getOptimizerWrapHeight();
                } else if (widget.mTop.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                    distToTop += topWidget.mDistToTop;
                }
                widget.mTopHasCentered = topWidget.mTopHasCentered || !(topWidget.mTop.mTarget == null || topWidget.mTop.mTarget.mOwner == widget || topWidget.mBottom.mTarget == null || topWidget.mBottom.mTarget.mOwner == widget || topWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                if (widget.mTopHasCentered && (topWidget.mBottom.mTarget == null || topWidget.mBottom.mTarget.mOwner != widget)) {
                    distToTop += distToTop - topWidget.mDistToTop;
                }
            }
            if (widget.mBottom.mTarget != null && !bottomWidget.isRoot()) {
                if (widget.mBottom.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                    distToBottom += bottomWidget.mDistToBottom - bottomWidget.getOptimizerWrapHeight();
                } else if (widget.mBottom.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                    distToBottom += bottomWidget.mDistToBottom;
                }
                if (bottomWidget.mBottomHasCentered || (bottomWidget.mTop.mTarget != null && bottomWidget.mTop.mTarget.mOwner != widget && bottomWidget.mBottom.mTarget != null && bottomWidget.mBottom.mTarget.mOwner != widget && bottomWidget.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                    z = true;
                }
                widget.mBottomHasCentered = z;
                if (widget.mBottomHasCentered && (bottomWidget.mTop.mTarget == null || bottomWidget.mTop.mTarget.mOwner != widget)) {
                    distToBottom += distToBottom - bottomWidget.mDistToBottom;
                }
            }
        }
        if (widget.getVisibility() == 8) {
            distToTop -= widget.mHeight;
            distToBottom -= widget.mHeight;
        }
        widget.mDistToTop = distToTop;
        widget.mDistToBottom = distToBottom;
    }

    public void findWrapSize(ArrayList<ConstraintWidget> children, boolean[] flags) {
        int maxLeftDist = 0;
        int maxRightDist = 0;
        int maxConnectWidth = 0;
        int size = children.size();
        char c = 0;
        flags[0] = true;
        int maxConnectHeight = 0;
        int maxBottomDist = 0;
        int maxTopDist = 0;
        int maxTopDist2 = 0;
        while (maxTopDist2 < size) {
            ConstraintWidget widget = children.get(maxTopDist2);
            if (!widget.isRoot()) {
                if (!widget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(widget, flags);
                }
                if (!widget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(widget, flags);
                }
                if (!flags[c]) {
                    return;
                }
                int connectWidth = (widget.mDistToLeft + widget.mDistToRight) - widget.getWidth();
                int connectHeight = (widget.mDistToTop + widget.mDistToBottom) - widget.getHeight();
                if (widget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    connectWidth = widget.getWidth() + widget.mLeft.mMargin + widget.mRight.mMargin;
                }
                if (widget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                    connectHeight = widget.getHeight() + widget.mTop.mMargin + widget.mBottom.mMargin;
                }
                if (widget.getVisibility() == 8) {
                    connectWidth = 0;
                    connectHeight = 0;
                }
                maxLeftDist = Math.max(maxLeftDist, widget.mDistToLeft);
                maxRightDist = Math.max(maxRightDist, widget.mDistToRight);
                maxBottomDist = Math.max(maxBottomDist, widget.mDistToBottom);
                maxTopDist = Math.max(maxTopDist, widget.mDistToTop);
                maxConnectWidth = Math.max(maxConnectWidth, connectWidth);
                maxConnectHeight = Math.max(maxConnectHeight, connectHeight);
            }
            maxTopDist2++;
            c = 0;
        }
        int max = Math.max(maxLeftDist, maxRightDist);
        this.mWrapWidth = Math.max(this.mMinWidth, Math.max(max, maxConnectWidth));
        int max2 = Math.max(maxTopDist, maxBottomDist);
        this.mWrapHeight = Math.max(this.mMinHeight, Math.max(max2, maxConnectHeight));
        for (int j = 0; j < size; j++) {
            ConstraintWidget child = children.get(j);
            child.mHorizontalWrapVisited = false;
            child.mVerticalWrapVisited = false;
            child.mLeftHasCentered = false;
            child.mRightHasCentered = false;
            child.mTopHasCentered = false;
            child.mBottomHasCentered = false;
        }
    }

    public int layoutFindGroups() {
        int index;
        ConstraintAnchor.Type[] dir = {ConstraintAnchor.Type.LEFT, ConstraintAnchor.Type.RIGHT, ConstraintAnchor.Type.TOP, ConstraintAnchor.Type.BASELINE, ConstraintAnchor.Type.BOTTOM};
        int size = this.mChildren.size();
        int label = 1;
        for (int label2 = 0; label2 < size; label2++) {
            ConstraintWidget widget = this.mChildren.get(label2);
            ConstraintAnchor anchor = widget.mLeft;
            if (anchor.mTarget != null) {
                if (setGroup(anchor, label) == label) {
                    label++;
                }
            } else {
                anchor.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor anchor2 = widget.mTop;
            if (anchor2.mTarget != null) {
                if (setGroup(anchor2, label) == label) {
                    label++;
                }
            } else {
                anchor2.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor anchor3 = widget.mRight;
            if (anchor3.mTarget != null) {
                if (setGroup(anchor3, label) == label) {
                    label++;
                }
            } else {
                anchor3.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor anchor4 = widget.mBottom;
            if (anchor4.mTarget != null) {
                if (setGroup(anchor4, label) == label) {
                    label++;
                }
            } else {
                anchor4.mGroup = Integer.MAX_VALUE;
            }
            ConstraintAnchor anchor5 = widget.mBaseline;
            if (anchor5.mTarget != null) {
                if (setGroup(anchor5, label) == label) {
                    label++;
                }
            } else {
                anchor5.mGroup = Integer.MAX_VALUE;
            }
        }
        int count = 0;
        int count2 = 1;
        int j = 0;
        while (count2 != 0) {
            count2 = 0;
            count++;
            int fix = j;
            int fix2 = 0;
            while (fix2 < size) {
                ConstraintWidget widget2 = this.mChildren.get(fix2);
                int fix3 = fix;
                int fix4 = count2;
                for (ConstraintAnchor.Type type : dir) {
                    ConstraintAnchor anchor6 = null;
                    switch (type) {
                        case LEFT:
                            anchor6 = widget2.mLeft;
                            break;
                        case TOP:
                            anchor6 = widget2.mTop;
                            break;
                        case RIGHT:
                            anchor6 = widget2.mRight;
                            break;
                        case BOTTOM:
                            anchor6 = widget2.mBottom;
                            break;
                        case BASELINE:
                            anchor6 = widget2.mBaseline;
                            break;
                    }
                    ConstraintAnchor target = anchor6.mTarget;
                    if (target != null) {
                        if (target.mOwner.getParent() != null && target.mGroup != anchor6.mGroup) {
                            int i = anchor6.mGroup > target.mGroup ? target.mGroup : anchor6.mGroup;
                            anchor6.mGroup = i;
                            target.mGroup = i;
                            fix3++;
                            fix4 = 1;
                        }
                        ConstraintAnchor opposite = target.getOpposite();
                        if (opposite != null && opposite.mGroup != anchor6.mGroup) {
                            int i2 = anchor6.mGroup > opposite.mGroup ? opposite.mGroup : anchor6.mGroup;
                            anchor6.mGroup = i2;
                            opposite.mGroup = i2;
                            fix3++;
                            fix4 = 1;
                        }
                    }
                }
                fix2++;
                count2 = fix4;
                fix = fix3;
            }
            j = fix;
        }
        int index2 = 0;
        int[] table = new int[(this.mChildren.size() * dir.length) + 1];
        Arrays.fill(table, -1);
        int j2 = 0;
        while (true) {
            int j3 = j2;
            if (j3 < size) {
                ConstraintWidget widget3 = this.mChildren.get(j3);
                ConstraintAnchor anchor7 = widget3.mLeft;
                if (anchor7.mGroup != Integer.MAX_VALUE) {
                    int g = anchor7.mGroup;
                    if (table[g] == -1) {
                        table[g] = index2;
                        index2++;
                    }
                    int index3 = table[g];
                    anchor7.mGroup = index3;
                }
                ConstraintAnchor anchor8 = widget3.mTop;
                if (anchor8.mGroup != Integer.MAX_VALUE) {
                    int g2 = anchor8.mGroup;
                    if (table[g2] == -1) {
                        table[g2] = index2;
                        index2++;
                    }
                    int index4 = table[g2];
                    anchor8.mGroup = index4;
                }
                ConstraintAnchor anchor9 = widget3.mRight;
                if (anchor9.mGroup != Integer.MAX_VALUE) {
                    int g3 = anchor9.mGroup;
                    if (table[g3] == -1) {
                        table[g3] = index2;
                        index2++;
                    }
                    int index5 = table[g3];
                    anchor9.mGroup = index5;
                }
                ConstraintAnchor anchor10 = widget3.mBottom;
                if (anchor10.mGroup != Integer.MAX_VALUE) {
                    int g4 = anchor10.mGroup;
                    if (table[g4] == -1) {
                        table[g4] = index2;
                        index2++;
                    }
                    int index6 = table[g4];
                    anchor10.mGroup = index6;
                }
                ConstraintAnchor anchor11 = widget3.mBaseline;
                if (anchor11.mGroup != Integer.MAX_VALUE) {
                    int g5 = anchor11.mGroup;
                    if (table[g5] == -1) {
                        index = index2 + 1;
                        table[g5] = index2;
                    } else {
                        index = index2;
                    }
                    int index7 = table[g5];
                    anchor11.mGroup = index7;
                    index2 = index;
                }
                j2 = j3 + 1;
            } else {
                return index2;
            }
        }
    }

    public void layoutWithGroup(int numOfGroups) {
        int prex = this.mX;
        int prey = this.mY;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            this.mX = 0;
            this.mY = 0;
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            ConstraintWidget widget = this.mChildren.get(i);
            if (widget instanceof WidgetContainer) {
                ((WidgetContainer) widget).layout();
            }
        }
        this.mLeft.mGroup = 0;
        this.mRight.mGroup = 0;
        this.mTop.mGroup = 1;
        this.mBottom.mGroup = 1;
        this.mSystem.reset();
        for (int i2 = 0; i2 < numOfGroups; i2++) {
            try {
                addToSolver(this.mSystem, i2);
                this.mSystem.minimize();
                updateFromSolver(this.mSystem, i2);
            } catch (Exception e) {
                e.printStackTrace();
            }
            updateFromSolver(this.mSystem, -2);
        }
        if (this.mParent != null) {
            int width = getWidth();
            int height = getHeight();
            this.mSnapshot.applyTo(this);
            setWidth(width);
            setHeight(height);
        } else {
            this.mX = prex;
            this.mY = prey;
        }
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> guidelines = new ArrayList<>();
        int mChildrenSize = this.mChildren.size();
        for (int i = 0; i < mChildrenSize; i++) {
            ConstraintWidget widget = this.mChildren.get(i);
            if (widget instanceof Guideline) {
                Guideline guideline = (Guideline) widget;
                if (guideline.getOrientation() == 1) {
                    guidelines.add(guideline);
                }
            }
        }
        return guidelines;
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> guidelines = new ArrayList<>();
        int mChildrenSize = this.mChildren.size();
        for (int i = 0; i < mChildrenSize; i++) {
            ConstraintWidget widget = this.mChildren.get(i);
            if (widget instanceof Guideline) {
                Guideline guideline = (Guideline) widget;
                if (guideline.getOrientation() == 0) {
                    guidelines.add(guideline);
                }
            }
        }
        return guidelines;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    void addChain(ConstraintWidget constraintWidget, int type) {
        ConstraintWidget widget = constraintWidget;
        if (type == 0) {
            while (widget.mLeft.mTarget != null && widget.mLeft.mTarget.mOwner.mRight.mTarget != null && widget.mLeft.mTarget.mOwner.mRight.mTarget == widget.mLeft && widget.mLeft.mTarget.mOwner != widget) {
                widget = widget.mLeft.mTarget.mOwner;
            }
            addHorizontalChain(widget);
            return;
        }
        if (type == 1) {
            while (widget.mTop.mTarget != null && widget.mTop.mTarget.mOwner.mBottom.mTarget != null && widget.mTop.mTarget.mOwner.mBottom.mTarget == widget.mTop && widget.mTop.mTarget.mOwner != widget) {
                widget = widget.mTop.mTarget.mOwner;
            }
            addVerticalChain(widget);
        }
    }

    private void addHorizontalChain(ConstraintWidget widget) {
        for (int i = 0; i < this.mHorizontalChainsSize; i++) {
            if (this.mHorizontalChainsArray[i] == widget) {
                return;
            }
        }
        int i2 = this.mHorizontalChainsSize;
        if (i2 + 1 >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = widget;
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget widget) {
        for (int i = 0; i < this.mVerticalChainsSize; i++) {
            if (this.mVerticalChainsArray[i] == widget) {
                return;
            }
        }
        int i2 = this.mVerticalChainsSize;
        if (i2 + 1 >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = widget;
        this.mVerticalChainsSize++;
    }

    private int countMatchConstraintsChainedWidgets(LinearSystem system, ConstraintWidget[] chainEnds, ConstraintWidget widget, int direction, boolean[] flags) {
        char c;
        ConstraintWidget last;
        char c2;
        ConstraintWidget widget2 = widget;
        flags[0] = true;
        flags[1] = false;
        ConstraintWidget constraintWidget = null;
        chainEnds[0] = null;
        chainEnds[2] = null;
        chainEnds[1] = null;
        chainEnds[3] = null;
        int i = 5;
        int i2 = 8;
        if (direction == 0) {
            boolean fixedPosition = true;
            if (widget2.mLeft.mTarget != null && widget2.mLeft.mTarget.mOwner != this) {
                fixedPosition = false;
            }
            widget2.mHorizontalNextWidget = null;
            ConstraintWidget firstVisible = null;
            if (widget.getVisibility() != 8) {
                firstVisible = widget;
            }
            int count = 0;
            ConstraintWidget firstVisible2 = firstVisible;
            ConstraintWidget last2 = null;
            while (widget2.mRight.mTarget != null) {
                widget2.mHorizontalNextWidget = constraintWidget;
                if (widget2.getVisibility() != 8) {
                    if (firstVisible2 == null) {
                        firstVisible2 = widget2;
                    }
                    if (firstVisible != null && firstVisible != widget2) {
                        firstVisible.mHorizontalNextWidget = widget2;
                    }
                    firstVisible = widget2;
                } else {
                    system.addEquality(widget2.mLeft.mSolverVariable, widget2.mLeft.mTarget.mSolverVariable, 0, 5);
                    system.addEquality(widget2.mRight.mSolverVariable, widget2.mLeft.mSolverVariable, 0, 5);
                }
                if (widget2.getVisibility() != 8 && widget2.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (widget2.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        flags[0] = false;
                    }
                    if (widget2.mDimensionRatio <= 0.0f) {
                        flags[0] = false;
                        if (count + 1 >= this.mMatchConstraintsChainedWidgets.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[count] = widget2;
                        count++;
                    }
                }
                if (widget2.mRight.mTarget.mOwner.mLeft.mTarget == null || widget2.mRight.mTarget.mOwner.mLeft.mTarget.mOwner != widget2 || widget2.mRight.mTarget.mOwner == widget2) {
                    break;
                }
                widget2 = widget2.mRight.mTarget.mOwner;
                last2 = widget2;
                constraintWidget = null;
            }
            if (widget2.mRight.mTarget != null && widget2.mRight.mTarget.mOwner != this) {
                fixedPosition = false;
            }
            if (widget.mLeft.mTarget == null) {
                last = last2;
            } else {
                last = last2;
                if (last.mRight.mTarget != null) {
                    c2 = 1;
                }
                widget.mHorizontalChainFixedPosition = fixedPosition;
                last.mHorizontalNextWidget = null;
                chainEnds[0] = widget;
                chainEnds[2] = firstVisible2;
                chainEnds[c2] = last;
                chainEnds[3] = firstVisible;
                return count;
            }
            c2 = 1;
            flags[1] = true;
            widget.mHorizontalChainFixedPosition = fixedPosition;
            last.mHorizontalNextWidget = null;
            chainEnds[0] = widget;
            chainEnds[2] = firstVisible2;
            chainEnds[c2] = last;
            chainEnds[3] = firstVisible;
            return count;
        }
        boolean fixedPosition2 = true;
        if (widget2.mTop.mTarget != null && widget2.mTop.mTarget.mOwner != this) {
            fixedPosition2 = false;
        }
        widget2.mVerticalNextWidget = null;
        ConstraintWidget firstVisible3 = null;
        if (widget.getVisibility() != 8) {
            firstVisible3 = widget;
        }
        ConstraintWidget last3 = null;
        int count2 = 0;
        ConstraintWidget firstVisible4 = firstVisible3;
        while (widget2.mBottom.mTarget != null) {
            widget2.mVerticalNextWidget = null;
            if (widget2.getVisibility() != i2) {
                if (firstVisible4 == null) {
                    firstVisible4 = widget2;
                }
                if (firstVisible3 != null && firstVisible3 != widget2) {
                    firstVisible3.mVerticalNextWidget = widget2;
                }
                firstVisible3 = widget2;
            } else {
                system.addEquality(widget2.mTop.mSolverVariable, widget2.mTop.mTarget.mSolverVariable, 0, i);
                system.addEquality(widget2.mBottom.mSolverVariable, widget2.mTop.mSolverVariable, 0, i);
            }
            i2 = 8;
            if (widget2.getVisibility() != 8 && widget2.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (widget2.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    flags[0] = false;
                }
                if (widget2.mDimensionRatio <= 0.0f) {
                    flags[0] = false;
                    if (count2 + 1 >= this.mMatchConstraintsChainedWidgets.length) {
                        this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                    }
                    this.mMatchConstraintsChainedWidgets[count2] = widget2;
                    count2++;
                }
            }
            if (widget2.mBottom.mTarget.mOwner.mTop.mTarget == null || widget2.mBottom.mTarget.mOwner.mTop.mTarget.mOwner != widget2 || widget2.mBottom.mTarget.mOwner == widget2) {
                break;
            }
            widget2 = widget2.mBottom.mTarget.mOwner;
            last3 = widget2;
            i = 5;
        }
        if (widget2.mBottom.mTarget != null && widget2.mBottom.mTarget.mOwner != this) {
            fixedPosition2 = false;
        }
        if (widget.mTop.mTarget == null || last3.mBottom.mTarget == null) {
            c = 1;
            flags[1] = true;
        } else {
            c = 1;
        }
        widget.mVerticalChainFixedPosition = fixedPosition2;
        last3.mVerticalNextWidget = null;
        chainEnds[0] = widget;
        chainEnds[2] = firstVisible4;
        chainEnds[c] = last3;
        chainEnds[3] = firstVisible3;
        return count2;
    }
}

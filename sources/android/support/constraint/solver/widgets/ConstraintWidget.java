package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ConstraintWidget {
    private static final boolean AUTOTAG_CENTER = false;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    protected ArrayList<ConstraintAnchor> mAnchors;
    ConstraintAnchor mBaseline;
    int mBaselineDistance;
    ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    protected float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    int mHeight;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    DimensionBehaviour mHorizontalDimensionBehaviour;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    float mHorizontalWeight;
    boolean mHorizontalWrapVisited;
    ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    int mMatchConstraintDefaultHeight;
    int mMatchConstraintDefaultWidth;
    int mMatchConstraintMaxHeight;
    int mMatchConstraintMaxWidth;
    int mMatchConstraintMinHeight;
    int mMatchConstraintMinWidth;
    protected int mMinHeight;
    protected int mMinWidth;
    protected int mOffsetX;
    protected int mOffsetY;
    ConstraintWidget mParent;
    ConstraintAnchor mRight;
    boolean mRightHasCentered;
    private int mSolverBottom;
    private int mSolverLeft;
    private int mSolverRight;
    private int mSolverTop;
    ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    DimensionBehaviour mVerticalDimensionBehaviour;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    float mVerticalWeight;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX;
    protected int mY;

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
    }

    public ConstraintWidget() {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public ConstraintWidget(int x, int y, int width, int height) {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.mX = x;
        this.mY = y;
        this.mWidth = width;
        this.mHeight = height;
        addAnchors();
        forceUpdateDrawPosition();
    }

    public ConstraintWidget(int width, int height) {
        this(0, 0, width, height);
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resetGroups() {
        int numAnchors = this.mAnchors.size();
        for (int i = 0; i < numAnchors; i++) {
            this.mAnchors.get(i).mGroup = Integer.MAX_VALUE;
        }
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mBaseline);
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isRootContainer() {
        return (this instanceof ConstraintWidgetContainer) && (this.mParent == null || !(this.mParent instanceof ConstraintWidgetContainer));
    }

    public boolean isInsideConstraintLayout() {
        ConstraintWidget widget = getParent();
        if (widget == null) {
            return false;
        }
        while (widget != null) {
            if (widget instanceof ConstraintWidgetContainer) {
                return true;
            }
            widget = widget.getParent();
        }
        return false;
    }

    public boolean hasAncestor(ConstraintWidget widget) {
        ConstraintWidget parent = getParent();
        if (parent == widget) {
            return true;
        }
        if (parent == widget.getParent()) {
            return false;
        }
        while (parent != null) {
            if (parent == widget || parent == widget.getParent()) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public WidgetContainer getRootWidgetContainer() {
        ConstraintWidget root = this;
        while (root.getParent() != null) {
            root = root.getParent();
        }
        if (root instanceof WidgetContainer) {
            return (WidgetContainer) root;
        }
        return null;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public void setParent(ConstraintWidget widget) {
        this.mParent = widget;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String type) {
        this.mType = type;
    }

    public void setVisibility(int visibility) {
        this.mVisibility = visibility;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public void setDebugName(String name) {
        this.mDebugName = name;
    }

    public void setDebugSolverName(LinearSystem system, String name) {
        this.mDebugName = name;
        SolverVariable left = system.createObjectVariable(this.mLeft);
        SolverVariable top = system.createObjectVariable(this.mTop);
        SolverVariable right = system.createObjectVariable(this.mRight);
        SolverVariable bottom = system.createObjectVariable(this.mBottom);
        left.setName(name + ".left");
        top.setName(name + ".top");
        right.setName(name + ".right");
        bottom.setName(name + ".bottom");
        if (this.mBaselineDistance > 0) {
            SolverVariable baseline = system.createObjectVariable(this.mBaseline);
            baseline.setName(name + ".baseline");
        }
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(")");
        sb.append(" wrap: (");
        sb.append(this.mWrapWidth);
        sb.append(" x ");
        sb.append(this.mWrapHeight);
        sb.append(")");
        return sb.toString();
    }

    int getInternalDrawX() {
        return this.mDrawX;
    }

    int getInternalDrawY() {
        return this.mDrawY;
    }

    public int getInternalDrawRight() {
        return this.mDrawX + this.mDrawWidth;
    }

    public int getInternalDrawBottom() {
        return this.mDrawY + this.mDrawHeight;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getOptimizerWrapWidth() {
        int w;
        int w2 = this.mWidth;
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultWidth == 1) {
                w = Math.max(this.mMatchConstraintMinWidth, w2);
            } else if (this.mMatchConstraintMinWidth > 0) {
                w = this.mMatchConstraintMinWidth;
                this.mWidth = w;
            } else {
                w = 0;
            }
            if (this.mMatchConstraintMaxWidth > 0 && this.mMatchConstraintMaxWidth < w) {
                return this.mMatchConstraintMaxWidth;
            }
            return w;
        }
        return w2;
    }

    public int getOptimizerWrapHeight() {
        int h;
        int h2 = this.mHeight;
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultHeight == 1) {
                h = Math.max(this.mMatchConstraintMinHeight, h2);
            } else if (this.mMatchConstraintMinHeight > 0) {
                h = this.mMatchConstraintMinHeight;
                this.mHeight = h;
            } else {
                h = 0;
            }
            if (this.mMatchConstraintMaxHeight > 0 && this.mMatchConstraintMaxHeight < h) {
                return this.mMatchConstraintMaxHeight;
            }
            return h;
        }
        return h2;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    public int getDrawWidth() {
        return this.mDrawWidth;
    }

    public int getDrawHeight() {
        return this.mDrawHeight;
    }

    public int getDrawBottom() {
        return getDrawY() + this.mDrawHeight;
    }

    public int getDrawRight() {
        return getDrawX() + this.mDrawWidth;
    }

    protected int getRootX() {
        return this.mX + this.mOffsetX;
    }

    protected int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getLeft() {
        return getX();
    }

    public int getTop() {
        return getY();
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public void setX(int x) {
        this.mX = x;
    }

    public void setY(int y) {
        this.mY = y;
    }

    public void setOrigin(int x, int y) {
        this.mX = x;
        this.mY = y;
    }

    public void setOffset(int x, int y) {
        this.mOffsetX = x;
        this.mOffsetY = y;
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int goneMargin) {
        switch (type) {
            case LEFT:
                this.mLeft.mGoneMargin = goneMargin;
                break;
            case TOP:
                this.mTop.mGoneMargin = goneMargin;
                break;
            case RIGHT:
                this.mRight.mGoneMargin = goneMargin;
                break;
            case BOTTOM:
                this.mBottom.mGoneMargin = goneMargin;
                break;
        }
    }

    public void updateDrawPosition() {
        int left = this.mX;
        int top = this.mY;
        int right = this.mX + this.mWidth;
        int bottom = this.mY + this.mHeight;
        this.mDrawX = left;
        this.mDrawY = top;
        this.mDrawWidth = right - left;
        this.mDrawHeight = bottom - top;
    }

    public void forceUpdateDrawPosition() {
        int left = this.mX;
        int top = this.mY;
        int right = this.mX + this.mWidth;
        int bottom = this.mY + this.mHeight;
        this.mDrawX = left;
        this.mDrawY = top;
        this.mDrawWidth = right - left;
        this.mDrawHeight = bottom - top;
    }

    public void setDrawOrigin(int x, int y) {
        this.mDrawX = x - this.mOffsetX;
        this.mDrawY = y - this.mOffsetY;
        this.mX = this.mDrawX;
        this.mY = this.mDrawY;
    }

    public void setDrawX(int x) {
        this.mDrawX = x - this.mOffsetX;
        this.mX = this.mDrawX;
    }

    public void setDrawY(int y) {
        this.mDrawY = y - this.mOffsetY;
        this.mY = this.mDrawY;
    }

    public void setDrawWidth(int drawWidth) {
        this.mDrawWidth = drawWidth;
    }

    public void setDrawHeight(int drawHeight) {
        this.mDrawHeight = drawHeight;
    }

    public void setWidth(int w) {
        this.mWidth = w;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setHeight(int h) {
        this.mHeight = h;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setHorizontalMatchStyle(int horizontalMatchStyle, int min, int max) {
        this.mMatchConstraintDefaultWidth = horizontalMatchStyle;
        this.mMatchConstraintMinWidth = min;
        this.mMatchConstraintMaxWidth = max;
    }

    public void setVerticalMatchStyle(int verticalMatchStyle, int min, int max) {
        this.mMatchConstraintDefaultHeight = verticalMatchStyle;
        this.mMatchConstraintMinHeight = min;
        this.mMatchConstraintMaxHeight = max;
    }

    public void setDimensionRatio(String ratio) {
        int commaIndex;
        if (ratio == null || ratio.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int dimensionRatioSide = -1;
        float dimensionRatio = 0.0f;
        int len = ratio.length();
        int commaIndex2 = ratio.indexOf(44);
        if (commaIndex2 > 0 && commaIndex2 < len - 1) {
            String dimension = ratio.substring(0, commaIndex2);
            if (dimension.equalsIgnoreCase("W")) {
                dimensionRatioSide = 0;
            } else if (dimension.equalsIgnoreCase("H")) {
                dimensionRatioSide = 1;
            }
            commaIndex = commaIndex2 + 1;
        } else {
            commaIndex = 0;
        }
        int colonIndex = ratio.indexOf(58);
        if (colonIndex >= 0 && colonIndex < len - 1) {
            String nominator = ratio.substring(commaIndex, colonIndex);
            String denominator = ratio.substring(colonIndex + 1);
            if (nominator.length() > 0 && denominator.length() > 0) {
                try {
                    float nominatorValue = Float.parseFloat(nominator);
                    float denominatorValue = Float.parseFloat(denominator);
                    if (nominatorValue > 0.0f && denominatorValue > 0.0f) {
                        dimensionRatio = dimensionRatioSide == 1 ? Math.abs(denominatorValue / nominatorValue) : Math.abs(nominatorValue / denominatorValue);
                    }
                } catch (NumberFormatException e) {
                }
            }
        } else {
            String r = ratio.substring(commaIndex);
            if (r.length() > 0) {
                try {
                    dimensionRatio = Float.parseFloat(r);
                } catch (NumberFormatException e2) {
                }
            }
        }
        if (dimensionRatio > 0.0f) {
            this.mDimensionRatio = dimensionRatio;
            this.mDimensionRatioSide = dimensionRatioSide;
        }
    }

    public void setDimensionRatio(float ratio, int dimensionRatioSide) {
        this.mDimensionRatio = ratio;
        this.mDimensionRatioSide = dimensionRatioSide;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public void setHorizontalBiasPercent(float horizontalBiasPercent) {
        this.mHorizontalBiasPercent = horizontalBiasPercent;
    }

    public void setVerticalBiasPercent(float verticalBiasPercent) {
        this.mVerticalBiasPercent = verticalBiasPercent;
    }

    public void setMinWidth(int w) {
        if (w < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = w;
        }
    }

    public void setMinHeight(int h) {
        if (h < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = h;
        }
    }

    public void setWrapWidth(int w) {
        this.mWrapWidth = w;
    }

    public void setWrapHeight(int h) {
        this.mWrapHeight = h;
    }

    public void setDimension(int w, int h) {
        this.mWidth = w;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        this.mHeight = h;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setFrame(int left, int top, int right, int bottom) {
        int w = right - left;
        int h = bottom - top;
        this.mX = left;
        this.mY = top;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.FIXED && w < this.mWidth) {
            w = this.mWidth;
        }
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.FIXED && h < this.mHeight) {
            h = this.mHeight;
        }
        this.mWidth = w;
        this.mHeight = h;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setHorizontalDimension(int left, int right) {
        this.mX = left;
        this.mWidth = right - left;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setVerticalDimension(int top, int bottom) {
        this.mY = top;
        this.mHeight = bottom - top;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setBaselineDistance(int baseline) {
        this.mBaselineDistance = baseline;
    }

    public void setCompanionWidget(Object companion) {
        this.mCompanionWidget = companion;
    }

    public void setContainerItemSkip(int skip) {
        if (skip >= 0) {
            this.mContainerItemSkip = skip;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public void setHorizontalWeight(float horizontalWeight) {
        this.mHorizontalWeight = horizontalWeight;
    }

    public void setVerticalWeight(float verticalWeight) {
        this.mVerticalWeight = verticalWeight;
    }

    public void setHorizontalChainStyle(int horizontalChainStyle) {
        this.mHorizontalChainStyle = horizontalChainStyle;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public void setVerticalChainStyle(int verticalChainStyle) {
        this.mVerticalChainStyle = verticalChainStyle;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public void connectedTo(ConstraintWidget source) {
    }

    public void immediateConnect(ConstraintAnchor.Type startType, ConstraintWidget target, ConstraintAnchor.Type endType, int margin, int goneMargin) {
        ConstraintAnchor startAnchor = getAnchor(startType);
        ConstraintAnchor endAnchor = target.getAnchor(endType);
        startAnchor.connect(endAnchor, margin, goneMargin, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public void connect(ConstraintAnchor from, ConstraintAnchor to, int margin, int creator) {
        connect(from, to, margin, ConstraintAnchor.Strength.STRONG, creator);
    }

    public void connect(ConstraintAnchor from, ConstraintAnchor to, int margin) {
        connect(from, to, margin, ConstraintAnchor.Strength.STRONG, 0);
    }

    public void connect(ConstraintAnchor from, ConstraintAnchor to, int margin, ConstraintAnchor.Strength strength, int creator) {
        if (from.getOwner() == this) {
            connect(from.getType(), to.getOwner(), to.getType(), margin, strength, creator);
        }
    }

    public void connect(ConstraintAnchor.Type constraintFrom, ConstraintWidget target, ConstraintAnchor.Type constraintTo, int margin) {
        connect(constraintFrom, target, constraintTo, margin, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type constraintFrom, ConstraintWidget target, ConstraintAnchor.Type constraintTo) {
        connect(constraintFrom, target, constraintTo, 0, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type constraintFrom, ConstraintWidget target, ConstraintAnchor.Type constraintTo, int margin, ConstraintAnchor.Strength strength) {
        connect(constraintFrom, target, constraintTo, margin, strength, 0);
    }

    public void connect(ConstraintAnchor.Type constraintFrom, ConstraintWidget target, ConstraintAnchor.Type constraintTo, int margin, ConstraintAnchor.Strength strength, int creator) {
        int margin2;
        if (constraintFrom == ConstraintAnchor.Type.CENTER) {
            if (constraintTo == ConstraintAnchor.Type.CENTER) {
                ConstraintAnchor left = getAnchor(ConstraintAnchor.Type.LEFT);
                ConstraintAnchor right = getAnchor(ConstraintAnchor.Type.RIGHT);
                ConstraintAnchor top = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor bottom = getAnchor(ConstraintAnchor.Type.BOTTOM);
                boolean centerX = false;
                boolean centerY = false;
                if ((left == null || !left.isConnected()) && (right == null || !right.isConnected())) {
                    connect(ConstraintAnchor.Type.LEFT, target, ConstraintAnchor.Type.LEFT, 0, strength, creator);
                    connect(ConstraintAnchor.Type.RIGHT, target, ConstraintAnchor.Type.RIGHT, 0, strength, creator);
                    centerX = true;
                }
                if ((top == null || !top.isConnected()) && (bottom == null || !bottom.isConnected())) {
                    connect(ConstraintAnchor.Type.TOP, target, ConstraintAnchor.Type.TOP, 0, strength, creator);
                    connect(ConstraintAnchor.Type.BOTTOM, target, ConstraintAnchor.Type.BOTTOM, 0, strength, creator);
                    centerY = true;
                }
                if (centerX && centerY) {
                    getAnchor(ConstraintAnchor.Type.CENTER).connect(target.getAnchor(ConstraintAnchor.Type.CENTER), 0, creator);
                } else if (centerX) {
                    getAnchor(ConstraintAnchor.Type.CENTER_X).connect(target.getAnchor(ConstraintAnchor.Type.CENTER_X), 0, creator);
                } else if (centerY) {
                    getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(target.getAnchor(ConstraintAnchor.Type.CENTER_Y), 0, creator);
                }
            } else if (constraintTo == ConstraintAnchor.Type.LEFT || constraintTo == ConstraintAnchor.Type.RIGHT) {
                connect(ConstraintAnchor.Type.LEFT, target, constraintTo, 0, strength, creator);
                connect(ConstraintAnchor.Type.RIGHT, target, constraintTo, 0, strength, creator);
                getAnchor(ConstraintAnchor.Type.CENTER).connect(target.getAnchor(constraintTo), 0, creator);
            } else if (constraintTo == ConstraintAnchor.Type.TOP || constraintTo == ConstraintAnchor.Type.BOTTOM) {
                connect(ConstraintAnchor.Type.TOP, target, constraintTo, 0, strength, creator);
                connect(ConstraintAnchor.Type.BOTTOM, target, constraintTo, 0, strength, creator);
                getAnchor(ConstraintAnchor.Type.CENTER).connect(target.getAnchor(constraintTo), 0, creator);
            }
        } else if (constraintFrom == ConstraintAnchor.Type.CENTER_X && (constraintTo == ConstraintAnchor.Type.LEFT || constraintTo == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor left2 = getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor targetAnchor = target.getAnchor(constraintTo);
            ConstraintAnchor right2 = getAnchor(ConstraintAnchor.Type.RIGHT);
            left2.connect(targetAnchor, 0, creator);
            right2.connect(targetAnchor, 0, creator);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(targetAnchor, 0, creator);
        } else if (constraintFrom == ConstraintAnchor.Type.CENTER_Y && (constraintTo == ConstraintAnchor.Type.TOP || constraintTo == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor targetAnchor2 = target.getAnchor(constraintTo);
            getAnchor(ConstraintAnchor.Type.TOP).connect(targetAnchor2, 0, creator);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(targetAnchor2, 0, creator);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(targetAnchor2, 0, creator);
        } else if (constraintFrom == ConstraintAnchor.Type.CENTER_X && constraintTo == ConstraintAnchor.Type.CENTER_X) {
            ConstraintAnchor left3 = getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor leftTarget = target.getAnchor(ConstraintAnchor.Type.LEFT);
            left3.connect(leftTarget, 0, creator);
            ConstraintAnchor right3 = getAnchor(ConstraintAnchor.Type.RIGHT);
            ConstraintAnchor rightTarget = target.getAnchor(ConstraintAnchor.Type.RIGHT);
            right3.connect(rightTarget, 0, creator);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(target.getAnchor(constraintTo), 0, creator);
        } else if (constraintFrom == ConstraintAnchor.Type.CENTER_Y && constraintTo == ConstraintAnchor.Type.CENTER_Y) {
            ConstraintAnchor top2 = getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor topTarget = target.getAnchor(ConstraintAnchor.Type.TOP);
            top2.connect(topTarget, 0, creator);
            ConstraintAnchor bottom2 = getAnchor(ConstraintAnchor.Type.BOTTOM);
            ConstraintAnchor bottomTarget = target.getAnchor(ConstraintAnchor.Type.BOTTOM);
            bottom2.connect(bottomTarget, 0, creator);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(target.getAnchor(constraintTo), 0, creator);
        } else {
            ConstraintAnchor fromAnchor = getAnchor(constraintFrom);
            ConstraintAnchor toAnchor = target.getAnchor(constraintTo);
            if (fromAnchor.isValidConnection(toAnchor)) {
                if (constraintFrom == ConstraintAnchor.Type.BASELINE) {
                    ConstraintAnchor top3 = getAnchor(ConstraintAnchor.Type.TOP);
                    ConstraintAnchor bottom3 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                    if (top3 != null) {
                        top3.reset();
                    }
                    if (bottom3 != null) {
                        bottom3.reset();
                    }
                    margin2 = 0;
                } else {
                    if (constraintFrom == ConstraintAnchor.Type.TOP || constraintFrom == ConstraintAnchor.Type.BOTTOM) {
                        ConstraintAnchor baseline = getAnchor(ConstraintAnchor.Type.BASELINE);
                        if (baseline != null) {
                            baseline.reset();
                        }
                        ConstraintAnchor center = getAnchor(ConstraintAnchor.Type.CENTER);
                        if (center.getTarget() != toAnchor) {
                            center.reset();
                        }
                        ConstraintAnchor opposite = getAnchor(constraintFrom).getOpposite();
                        ConstraintAnchor centerY2 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
                        if (centerY2.isConnected()) {
                            opposite.reset();
                            centerY2.reset();
                        }
                    } else if (constraintFrom == ConstraintAnchor.Type.LEFT || constraintFrom == ConstraintAnchor.Type.RIGHT) {
                        ConstraintAnchor center2 = getAnchor(ConstraintAnchor.Type.CENTER);
                        if (center2.getTarget() != toAnchor) {
                            center2.reset();
                        }
                        ConstraintAnchor opposite2 = getAnchor(constraintFrom).getOpposite();
                        ConstraintAnchor centerX2 = getAnchor(ConstraintAnchor.Type.CENTER_X);
                        if (centerX2.isConnected()) {
                            opposite2.reset();
                            centerX2.reset();
                        }
                    }
                    margin2 = margin;
                }
                fromAnchor.connect(toAnchor, margin2, strength, creator);
                toAnchor.getOwner().connectedTo(fromAnchor.getOwner());
            }
        }
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
        if (this instanceof ConstraintWidgetContainer) {
            return;
        }
        if (getHorizontalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getWidth() == getWrapWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getWidth() > getMinWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
        if (getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getHeight() == getWrapHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getHeight() > getMinHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
    }

    public void resetAnchor(ConstraintAnchor anchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer)) {
            ConstraintWidgetContainer parent = (ConstraintWidgetContainer) getParent();
            if (parent.handlesInternalConstraints()) {
                return;
            }
        }
        ConstraintAnchor left = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor right = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor top = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor bottom = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor center = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor centerX = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor centerY = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (anchor == center) {
            if (left.isConnected() && right.isConnected() && left.getTarget() == right.getTarget()) {
                left.reset();
                right.reset();
            }
            if (top.isConnected() && bottom.isConnected() && top.getTarget() == bottom.getTarget()) {
                top.reset();
                bottom.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (anchor == centerX) {
            if (left.isConnected() && right.isConnected() && left.getTarget().getOwner() == right.getTarget().getOwner()) {
                left.reset();
                right.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (anchor == centerY) {
            if (top.isConnected() && bottom.isConnected() && top.getTarget().getOwner() == bottom.getTarget().getOwner()) {
                top.reset();
                bottom.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (anchor == left || anchor == right) {
            if (left.isConnected() && left.getTarget() == right.getTarget()) {
                center.reset();
            }
        } else if ((anchor == top || anchor == bottom) && top.isConnected() && top.getTarget() == bottom.getTarget()) {
            center.reset();
        }
        anchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer)) {
            ConstraintWidgetContainer parentContainer = (ConstraintWidgetContainer) getParent();
            if (parentContainer.handlesInternalConstraints()) {
                return;
            }
        }
        int mAnchorsSize = this.mAnchors.size();
        for (int i = 0; i < mAnchorsSize; i++) {
            ConstraintAnchor anchor = this.mAnchors.get(i);
            anchor.reset();
        }
    }

    public void resetAnchors(int connectionCreator) {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer)) {
            ConstraintWidgetContainer parentContainer = (ConstraintWidgetContainer) getParent();
            if (parentContainer.handlesInternalConstraints()) {
                return;
            }
        }
        int mAnchorsSize = this.mAnchors.size();
        for (int i = 0; i < mAnchorsSize; i++) {
            ConstraintAnchor anchor = this.mAnchors.get(i);
            if (connectionCreator == anchor.getConnectionCreator()) {
                if (anchor.isVerticalAnchor()) {
                    setVerticalBiasPercent(DEFAULT_BIAS);
                } else {
                    setHorizontalBiasPercent(DEFAULT_BIAS);
                }
                anchor.reset();
            }
        }
    }

    public void disconnectWidget(ConstraintWidget widget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int anchorsSize = anchors.size();
        for (int i = 0; i < anchorsSize; i++) {
            ConstraintAnchor anchor = anchors.get(i);
            if (anchor.isConnected() && anchor.getTarget().getOwner() == widget) {
                anchor.reset();
            }
        }
    }

    public void disconnectUnlockedWidget(ConstraintWidget widget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int anchorsSize = anchors.size();
        for (int i = 0; i < anchorsSize; i++) {
            ConstraintAnchor anchor = anchors.get(i);
            if (anchor.isConnected() && anchor.getTarget().getOwner() == widget && anchor.getConnectionCreator() == 2) {
                anchor.reset();
            }
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type anchorType) {
        switch (anchorType) {
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            case CENTER:
                return this.mCenter;
            default:
                return null;
        }
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mHorizontalDimensionBehaviour;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mVerticalDimensionBehaviour;
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour behaviour) {
        this.mHorizontalDimensionBehaviour = behaviour;
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour behaviour) {
        this.mVerticalDimensionBehaviour = behaviour;
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public boolean isInHorizontalChain() {
        if (this.mLeft.mTarget != null && this.mLeft.mTarget.mTarget == this.mLeft) {
            return true;
        }
        if (this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight) {
            return true;
        }
        return false;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget found = null;
        ConstraintWidget tmp = this;
        while (found == null && tmp != null) {
            ConstraintAnchor anchor = tmp.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor targetOwner = anchor == null ? null : anchor.getTarget();
            ConstraintWidget target = targetOwner == null ? null : targetOwner.getOwner();
            if (target == getParent()) {
                ConstraintWidget found2 = tmp;
                return found2;
            }
            ConstraintAnchor targetAnchor = target != null ? target.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget() : null;
            if (targetAnchor != null && targetAnchor.getOwner() != tmp) {
                found = tmp;
            } else {
                tmp = target;
            }
        }
        return found;
    }

    public boolean isInVerticalChain() {
        if (this.mTop.mTarget != null && this.mTop.mTarget.mTarget == this.mTop) {
            return true;
        }
        if (this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom) {
            return true;
        }
        return false;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget found = null;
        ConstraintWidget tmp = this;
        while (found == null && tmp != null) {
            ConstraintAnchor anchor = tmp.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor targetOwner = anchor == null ? null : anchor.getTarget();
            ConstraintWidget target = targetOwner == null ? null : targetOwner.getOwner();
            if (target == getParent()) {
                ConstraintWidget found2 = tmp;
                return found2;
            }
            ConstraintAnchor targetAnchor = target != null ? target.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget() : null;
            if (targetAnchor != null && targetAnchor.getOwner() != tmp) {
                found = tmp;
            } else {
                tmp = target;
            }
        }
        return found;
    }

    public void addToSolver(LinearSystem system) {
        addToSolver(system, Integer.MAX_VALUE);
    }

    public void addToSolver(LinearSystem system, int group) {
        int width;
        int height;
        boolean horizontalDimensionFixed;
        boolean verticalDimensionFixed;
        boolean useRatio;
        int dimensionRatioSide;
        float dimensionRatio;
        SolverVariable left;
        SolverVariable right;
        SolverVariable baseline;
        SolverVariable bottom;
        int dimensionRatioSide2;
        SolverVariable top;
        boolean useVerticalRatio;
        int dimensionRatioSide3;
        int dimensionRatioSide4;
        LinearSystem linearSystem;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        int i;
        SolverVariable bottom2;
        SolverVariable top2;
        SolverVariable left2;
        SolverVariable right2;
        int i2;
        SolverVariable bottom3;
        SolverVariable top3;
        SolverVariable baseline2;
        SolverVariable top4;
        LinearSystem linearSystem2;
        SolverVariable bottom4;
        SolverVariable top5;
        SolverVariable top6;
        SolverVariable left3 = (group == Integer.MAX_VALUE || this.mLeft.mGroup == group) ? system.createObjectVariable(this.mLeft) : null;
        SolverVariable right3 = (group == Integer.MAX_VALUE || this.mRight.mGroup == group) ? system.createObjectVariable(this.mRight) : null;
        SolverVariable top7 = (group == Integer.MAX_VALUE || this.mTop.mGroup == group) ? system.createObjectVariable(this.mTop) : null;
        SolverVariable bottom5 = (group == Integer.MAX_VALUE || this.mBottom.mGroup == group) ? system.createObjectVariable(this.mBottom) : null;
        SolverVariable baseline3 = (group == Integer.MAX_VALUE || this.mBaseline.mGroup == group) ? system.createObjectVariable(this.mBaseline) : null;
        boolean inHorizontalChain = false;
        boolean inVerticalChain = false;
        if (this.mParent != null) {
            if ((this.mLeft.mTarget != null && this.mLeft.mTarget.mTarget == this.mLeft) || (this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                inHorizontalChain = true;
            }
            if ((this.mTop.mTarget != null && this.mTop.mTarget.mTarget == this.mTop) || (this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                inVerticalChain = true;
            }
            if (this.mParent.getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !inHorizontalChain) {
                if (this.mLeft.mTarget == null || this.mLeft.mTarget.mOwner != this.mParent) {
                    SolverVariable parentLeft = system.createObjectVariable(this.mParent.mLeft);
                    ArrayRow row = system.createRow();
                    row.createRowGreaterThan(left3, parentLeft, system.createSlackVariable(), 0);
                    system.addConstraint(row);
                } else if (this.mLeft.mTarget != null && this.mLeft.mTarget.mOwner == this.mParent) {
                    this.mLeft.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (this.mRight.mTarget == null || this.mRight.mTarget.mOwner != this.mParent) {
                    SolverVariable parentRight = system.createObjectVariable(this.mParent.mRight);
                    ArrayRow row2 = system.createRow();
                    row2.createRowGreaterThan(parentRight, right3, system.createSlackVariable(), 0);
                    system.addConstraint(row2);
                } else if (this.mRight.mTarget != null && this.mRight.mTarget.mOwner == this.mParent) {
                    this.mRight.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
            if (this.mParent.getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !inVerticalChain) {
                if (this.mTop.mTarget == null || this.mTop.mTarget.mOwner != this.mParent) {
                    SolverVariable parentTop = system.createObjectVariable(this.mParent.mTop);
                    ArrayRow row3 = system.createRow();
                    row3.createRowGreaterThan(top7, parentTop, system.createSlackVariable(), 0);
                    system.addConstraint(row3);
                } else if (this.mTop.mTarget != null && this.mTop.mTarget.mOwner == this.mParent) {
                    this.mTop.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (this.mBottom.mTarget == null || this.mBottom.mTarget.mOwner != this.mParent) {
                    SolverVariable parentBottom = system.createObjectVariable(this.mParent.mBottom);
                    ArrayRow row4 = system.createRow();
                    row4.createRowGreaterThan(parentBottom, bottom5, system.createSlackVariable(), 0);
                    system.addConstraint(row4);
                } else if (this.mBottom.mTarget != null && this.mBottom.mTarget.mOwner == this.mParent) {
                    this.mBottom.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
        }
        boolean inHorizontalChain2 = inHorizontalChain;
        boolean inVerticalChain2 = inVerticalChain;
        int width2 = this.mWidth;
        if (width2 < this.mMinWidth) {
            width2 = this.mMinWidth;
        }
        int height2 = this.mHeight;
        if (height2 < this.mMinHeight) {
            height2 = this.mMinHeight;
        }
        boolean horizontalDimensionFixed2 = this.mHorizontalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        boolean verticalDimensionFixed2 = this.mVerticalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        if (!horizontalDimensionFixed2 && this.mLeft != null && this.mRight != null && (this.mLeft.mTarget == null || this.mRight.mTarget == null)) {
            horizontalDimensionFixed2 = true;
        }
        if (!verticalDimensionFixed2 && this.mTop != null && this.mBottom != null && ((this.mTop.mTarget == null || this.mBottom.mTarget == null) && (this.mBaselineDistance == 0 || (this.mBaseline != null && (this.mTop.mTarget == null || this.mBaseline.mTarget == null))))) {
            verticalDimensionFixed2 = true;
        }
        boolean useRatio2 = false;
        int dimensionRatioSide5 = this.mDimensionRatioSide;
        float dimensionRatio2 = this.mDimensionRatio;
        if (this.mDimensionRatio <= 0.0f || this.mVisibility == 8) {
            width = width2;
            height = height2;
            horizontalDimensionFixed = horizontalDimensionFixed2;
            verticalDimensionFixed = verticalDimensionFixed2;
            useRatio = useRatio2;
            dimensionRatioSide = dimensionRatioSide5;
            dimensionRatio = dimensionRatio2;
        } else {
            if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT && this.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                useRatio2 = true;
                if (horizontalDimensionFixed2 && !verticalDimensionFixed2) {
                    dimensionRatioSide5 = 0;
                } else if (!horizontalDimensionFixed2 && verticalDimensionFixed2) {
                    dimensionRatioSide5 = 1;
                    if (this.mDimensionRatioSide == -1) {
                        width = width2;
                        height = height2;
                        horizontalDimensionFixed = horizontalDimensionFixed2;
                        verticalDimensionFixed = verticalDimensionFixed2;
                        useRatio = true;
                        dimensionRatioSide = 1;
                        dimensionRatio = 1.0f / dimensionRatio2;
                    }
                }
            } else if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                dimensionRatioSide5 = 0;
                width2 = (int) (this.mHeight * dimensionRatio2);
                horizontalDimensionFixed2 = true;
            } else if (this.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                dimensionRatioSide5 = 1;
                if (this.mDimensionRatioSide == -1) {
                    dimensionRatio2 = 1.0f / dimensionRatio2;
                }
                height2 = (int) (this.mWidth * dimensionRatio2);
                verticalDimensionFixed2 = true;
            }
            width = width2;
            height = height2;
            horizontalDimensionFixed = horizontalDimensionFixed2;
            verticalDimensionFixed = verticalDimensionFixed2;
            useRatio = useRatio2;
            dimensionRatioSide = dimensionRatioSide5;
            dimensionRatio = dimensionRatio2;
        }
        boolean useHorizontalRatio = useRatio && (dimensionRatioSide == 0 || dimensionRatioSide == -1);
        boolean wrapContent = this.mHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && (this instanceof ConstraintWidgetContainer);
        if (this.mHorizontalResolution == 2) {
            left = left3;
            right = right3;
            baseline = baseline3;
            bottom = bottom5;
            dimensionRatioSide2 = dimensionRatioSide;
            top = top7;
            useVerticalRatio = false;
        } else if (group != Integer.MAX_VALUE && (this.mLeft.mGroup != group || this.mRight.mGroup != group)) {
            left = left3;
            right = right3;
            baseline = baseline3;
            bottom = bottom5;
            dimensionRatioSide2 = dimensionRatioSide;
            top = top7;
            useVerticalRatio = false;
        } else if (!useHorizontalRatio || this.mLeft.mTarget == null || this.mRight.mTarget == null) {
            baseline = baseline3;
            bottom = bottom5;
            top = top7;
            useVerticalRatio = false;
            left = left3;
            right = right3;
            dimensionRatioSide2 = dimensionRatioSide;
            applyConstraints(system, wrapContent, horizontalDimensionFixed, this.mLeft, this.mRight, this.mX, this.mX + width, width, this.mMinWidth, this.mHorizontalBiasPercent, useHorizontalRatio, inHorizontalChain2, this.mMatchConstraintDefaultWidth, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth);
        } else {
            SolverVariable begin = system.createObjectVariable(this.mLeft);
            SolverVariable end = system.createObjectVariable(this.mRight);
            SolverVariable beginTarget = system.createObjectVariable(this.mLeft.getTarget());
            SolverVariable endTarget = system.createObjectVariable(this.mRight.getTarget());
            system.addGreaterThan(begin, beginTarget, this.mLeft.getMargin(), 3);
            system.addLowerThan(end, endTarget, this.mRight.getMargin() * (-1), 3);
            if (inHorizontalChain2) {
                baseline = baseline3;
                bottom = bottom5;
                top = top7;
                useVerticalRatio = false;
            } else {
                useVerticalRatio = false;
                baseline = baseline3;
                bottom = bottom5;
                top = top7;
                system.addCentering(begin, beginTarget, this.mLeft.getMargin(), this.mHorizontalBiasPercent, endTarget, end, this.mRight.getMargin(), 4);
            }
            left = left3;
            right = right3;
            dimensionRatioSide2 = dimensionRatioSide;
        }
        if (this.mVerticalResolution == 2) {
            return;
        }
        boolean wrapContent2 = this.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && (this instanceof ConstraintWidgetContainer);
        if (useRatio) {
            dimensionRatioSide3 = dimensionRatioSide2;
            if (dimensionRatioSide3 == 1 || dimensionRatioSide3 == -1) {
                useVerticalRatio = true;
            }
        } else {
            dimensionRatioSide3 = dimensionRatioSide2;
        }
        if (this.mBaselineDistance > 0) {
            ConstraintAnchor endAnchor = this.mBottom;
            if (group == Integer.MAX_VALUE || (this.mBottom.mGroup == group && this.mBaseline.mGroup == group)) {
                baseline2 = baseline;
                top4 = top;
                linearSystem2 = system;
                linearSystem2.addEquality(baseline2, top4, getBaselineDistance(), 5);
            } else {
                baseline2 = baseline;
                top4 = top;
                linearSystem2 = system;
            }
            int originalHeight = height;
            if (this.mBaseline.mTarget != null) {
                int height3 = this.mBaselineDistance;
                endAnchor = this.mBaseline;
                height = height3;
            }
            if (group != Integer.MAX_VALUE && (this.mTop.mGroup != group || endAnchor.mGroup != group)) {
                top5 = top4;
                linearSystem = linearSystem2;
                dimensionRatioSide4 = dimensionRatioSide3;
                bottom4 = bottom;
            } else if (!useVerticalRatio || this.mTop.mTarget == null || this.mBottom.mTarget == null) {
                ConstraintAnchor endAnchor2 = endAnchor;
                linearSystem = system;
                dimensionRatioSide4 = dimensionRatioSide3;
                applyConstraints(linearSystem, wrapContent2, verticalDimensionFixed, this.mTop, endAnchor2, this.mY, this.mY + height, height, this.mMinHeight, this.mVerticalBiasPercent, useVerticalRatio, inVerticalChain2, this.mMatchConstraintDefaultHeight, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight);
                bottom4 = bottom;
                top5 = top4;
                linearSystem.addEquality(bottom4, top5, originalHeight, 5);
            } else {
                SolverVariable begin2 = linearSystem2.createObjectVariable(this.mTop);
                SolverVariable end2 = linearSystem2.createObjectVariable(this.mBottom);
                SolverVariable beginTarget2 = linearSystem2.createObjectVariable(this.mTop.getTarget());
                SolverVariable endTarget2 = linearSystem2.createObjectVariable(this.mBottom.getTarget());
                linearSystem2.addGreaterThan(begin2, beginTarget2, this.mTop.getMargin(), 3);
                linearSystem2.addLowerThan(end2, endTarget2, this.mBottom.getMargin() * (-1), 3);
                if (inVerticalChain2) {
                    top6 = top4;
                } else {
                    top6 = top4;
                    system.addCentering(begin2, beginTarget2, this.mTop.getMargin(), this.mVerticalBiasPercent, endTarget2, end2, this.mBottom.getMargin(), 4);
                }
                top5 = top6;
                dimensionRatioSide4 = dimensionRatioSide3;
                bottom4 = bottom;
                linearSystem = system;
            }
            bottom2 = bottom4;
            top2 = top5;
            constraintWidget2 = this;
            i = group;
        } else {
            dimensionRatioSide4 = dimensionRatioSide3;
            SolverVariable bottom6 = bottom;
            SolverVariable top8 = top;
            linearSystem = system;
            if (group != Integer.MAX_VALUE) {
                constraintWidget = this;
                if (constraintWidget.mTop.mGroup != group || constraintWidget.mBottom.mGroup != group) {
                    constraintWidget2 = constraintWidget;
                }
                i = group;
                bottom2 = bottom6;
                top2 = top8;
            } else {
                constraintWidget = this;
            }
            if (!useVerticalRatio || constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null) {
                constraintWidget2 = constraintWidget;
                i = group;
                bottom2 = bottom6;
                top2 = top8;
                applyConstraints(system, wrapContent2, verticalDimensionFixed, constraintWidget2.mTop, constraintWidget2.mBottom, constraintWidget2.mY, constraintWidget2.mY + height, height, constraintWidget2.mMinHeight, constraintWidget2.mVerticalBiasPercent, useVerticalRatio, inVerticalChain2, constraintWidget2.mMatchConstraintDefaultHeight, constraintWidget2.mMatchConstraintMinHeight, constraintWidget2.mMatchConstraintMaxHeight);
            } else {
                SolverVariable begin3 = linearSystem.createObjectVariable(constraintWidget.mTop);
                SolverVariable end3 = linearSystem.createObjectVariable(constraintWidget.mBottom);
                SolverVariable beginTarget3 = linearSystem.createObjectVariable(constraintWidget.mTop.getTarget());
                SolverVariable endTarget3 = linearSystem.createObjectVariable(constraintWidget.mBottom.getTarget());
                linearSystem.addGreaterThan(begin3, beginTarget3, constraintWidget.mTop.getMargin(), 3);
                linearSystem.addLowerThan(end3, endTarget3, constraintWidget.mBottom.getMargin() * (-1), 3);
                if (inVerticalChain2) {
                    constraintWidget2 = constraintWidget;
                } else {
                    constraintWidget2 = constraintWidget;
                    system.addCentering(begin3, beginTarget3, constraintWidget.mTop.getMargin(), constraintWidget.mVerticalBiasPercent, endTarget3, end3, constraintWidget.mBottom.getMargin(), 4);
                }
                i = group;
                bottom2 = bottom6;
                top2 = top8;
            }
        }
        if (useRatio) {
            ArrayRow row5 = system.createRow();
            if (i == Integer.MAX_VALUE || (constraintWidget2.mLeft.mGroup == i && constraintWidget2.mRight.mGroup == i)) {
                int dimensionRatioSide6 = dimensionRatioSide4;
                if (dimensionRatioSide6 == 0) {
                    linearSystem.addConstraint(row5.createRowDimensionRatio(right, left, bottom2, top2, dimensionRatio));
                } else {
                    if (dimensionRatioSide6 != 1) {
                        if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                            left2 = left;
                            right2 = right;
                            i2 = 3;
                            linearSystem.addGreaterThan(right2, left2, constraintWidget2.mMatchConstraintMinWidth, 3);
                        } else {
                            left2 = left;
                            right2 = right;
                            i2 = 3;
                        }
                        if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                            bottom3 = bottom2;
                            top3 = top2;
                            linearSystem.addGreaterThan(bottom3, top3, constraintWidget2.mMatchConstraintMinHeight, i2);
                        } else {
                            bottom3 = bottom2;
                            top3 = top2;
                        }
                        row5.createRowDimensionRatio(right2, left2, bottom3, top3, dimensionRatio);
                        SolverVariable error1 = system.createErrorVariable();
                        SolverVariable error2 = system.createErrorVariable();
                        error1.strength = 4;
                        error2.strength = 4;
                        row5.addError(error1, error2);
                        linearSystem.addConstraint(row5);
                        return;
                    }
                    linearSystem.addConstraint(row5.createRowDimensionRatio(bottom2, top2, right, left, dimensionRatio));
                }
            }
        }
    }

    private void applyConstraints(LinearSystem system, boolean wrapContent, boolean dimensionFixed, ConstraintAnchor beginAnchor, ConstraintAnchor endAnchor, int beginPosition, int endPosition, int dimension, int minDimension, float bias, boolean useRatio, boolean inChain, int matchConstraintDefault, int matchMinDimension, int matchMaxDimension) {
        boolean dimensionFixed2;
        int dimension2;
        SolverVariable begin = system.createObjectVariable(beginAnchor);
        SolverVariable end = system.createObjectVariable(endAnchor);
        SolverVariable beginTarget = system.createObjectVariable(beginAnchor.getTarget());
        SolverVariable endTarget = system.createObjectVariable(endAnchor.getTarget());
        int beginAnchorMargin = beginAnchor.getMargin();
        int endAnchorMargin = endAnchor.getMargin();
        if (this.mVisibility == 8) {
            dimensionFixed2 = true;
            dimension2 = 0;
        } else {
            dimensionFixed2 = dimensionFixed;
            dimension2 = dimension;
        }
        if (beginTarget == null && endTarget == null) {
            system.addConstraint(system.createRow().createRowEquals(begin, beginPosition));
            if (!useRatio) {
                if (wrapContent) {
                    system.addConstraint(LinearSystem.createRowEquals(system, end, begin, minDimension, true));
                } else if (dimensionFixed2) {
                    system.addConstraint(LinearSystem.createRowEquals(system, end, begin, dimension2, false));
                } else {
                    system.addConstraint(system.createRow().createRowEquals(end, endPosition));
                }
            }
        } else if (beginTarget != null && endTarget == null) {
            system.addConstraint(system.createRow().createRowEquals(begin, beginTarget, beginAnchorMargin));
            if (wrapContent) {
                system.addConstraint(LinearSystem.createRowEquals(system, end, begin, minDimension, true));
            } else if (!useRatio) {
                if (dimensionFixed2) {
                    system.addConstraint(system.createRow().createRowEquals(end, begin, dimension2));
                } else {
                    system.addConstraint(system.createRow().createRowEquals(end, endPosition));
                }
            }
        } else {
            if (beginTarget != null || endTarget == null) {
                if (dimensionFixed2) {
                    if (wrapContent) {
                        system.addConstraint(LinearSystem.createRowEquals(system, end, begin, minDimension, true));
                    } else {
                        system.addConstraint(system.createRow().createRowEquals(end, begin, dimension2));
                    }
                    if (beginAnchor.getStrength() == endAnchor.getStrength()) {
                        if (beginTarget == endTarget) {
                            system.addConstraint(LinearSystem.createRowCentering(system, begin, beginTarget, 0, 0.5f, endTarget, end, 0, true));
                        } else {
                            if (inChain) {
                                return;
                            }
                            boolean useBidirectionalError = beginAnchor.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT;
                            system.addConstraint(LinearSystem.createRowGreaterThan(system, begin, beginTarget, beginAnchorMargin, useBidirectionalError));
                            boolean useBidirectionalError2 = endAnchor.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT;
                            system.addConstraint(LinearSystem.createRowLowerThan(system, end, endTarget, endAnchorMargin * (-1), useBidirectionalError2));
                            system.addConstraint(LinearSystem.createRowCentering(system, begin, beginTarget, beginAnchorMargin, bias, endTarget, end, endAnchorMargin, false));
                        }
                    }
                    if (beginAnchor.getStrength() == ConstraintAnchor.Strength.STRONG) {
                        system.addConstraint(system.createRow().createRowEquals(begin, beginTarget, beginAnchorMargin));
                        SolverVariable slack = system.createSlackVariable();
                        ArrayRow row = system.createRow();
                        int dimension3 = endAnchorMargin * (-1);
                        row.createRowLowerThan(end, endTarget, slack, dimension3);
                        system.addConstraint(row);
                    } else {
                        SolverVariable slack2 = system.createSlackVariable();
                        ArrayRow row2 = system.createRow();
                        row2.createRowGreaterThan(begin, beginTarget, slack2, beginAnchorMargin);
                        system.addConstraint(row2);
                        system.addConstraint(system.createRow().createRowEquals(end, endTarget, endAnchorMargin * (-1)));
                    }
                    return;
                }
                int dimension4 = dimension2;
                if (useRatio) {
                    system.addGreaterThan(begin, beginTarget, beginAnchorMargin, 3);
                    system.addLowerThan(end, endTarget, endAnchorMargin * (-1), 3);
                    system.addConstraint(LinearSystem.createRowCentering(system, begin, beginTarget, beginAnchorMargin, bias, endTarget, end, endAnchorMargin, true));
                }
                if (inChain) {
                    return;
                }
                if (matchConstraintDefault == 1) {
                    int dimension5 = matchMinDimension > dimension4 ? matchMinDimension : dimension4;
                    if (matchMaxDimension > 0) {
                        if (matchMaxDimension < dimension5) {
                            dimension5 = matchMaxDimension;
                        } else {
                            system.addLowerThan(end, begin, matchMaxDimension, 3);
                        }
                    }
                    system.addEquality(end, begin, dimension5, 3);
                    system.addGreaterThan(begin, beginTarget, beginAnchorMargin, 2);
                    system.addLowerThan(end, endTarget, -endAnchorMargin, 2);
                    system.addCentering(begin, beginTarget, beginAnchorMargin, bias, endTarget, end, endAnchorMargin, 4);
                    return;
                }
                if (matchMinDimension == 0 && matchMaxDimension == 0) {
                    system.addConstraint(system.createRow().createRowEquals(begin, beginTarget, beginAnchorMargin));
                    endAnchorMargin = endAnchorMargin;
                    system.addConstraint(system.createRow().createRowEquals(end, endTarget, endAnchorMargin * (-1)));
                    return;
                } else {
                    if (matchMaxDimension > 0) {
                        system.addLowerThan(end, begin, matchMaxDimension, 3);
                    }
                    system.addGreaterThan(begin, beginTarget, beginAnchorMargin, 2);
                    system.addLowerThan(end, endTarget, -endAnchorMargin, 2);
                    system.addCentering(begin, beginTarget, beginAnchorMargin, bias, endTarget, end, endAnchorMargin, 4);
                    return;
                }
            }
            system.addConstraint(system.createRow().createRowEquals(end, endTarget, endAnchorMargin * (-1)));
            if (wrapContent) {
                system.addConstraint(LinearSystem.createRowEquals(system, end, begin, minDimension, true));
            } else if (!useRatio) {
                if (dimensionFixed2) {
                    system.addConstraint(system.createRow().createRowEquals(end, begin, dimension2));
                } else {
                    system.addConstraint(system.createRow().createRowEquals(begin, beginPosition));
                }
            }
        }
    }

    public void updateFromSolver(LinearSystem system, int group) {
        if (group == Integer.MAX_VALUE) {
            int left = system.getObjectVariableValue(this.mLeft);
            int top = system.getObjectVariableValue(this.mTop);
            int right = system.getObjectVariableValue(this.mRight);
            int bottom = system.getObjectVariableValue(this.mBottom);
            setFrame(left, top, right, bottom);
            return;
        }
        if (group == -2) {
            setFrame(this.mSolverLeft, this.mSolverTop, this.mSolverRight, this.mSolverBottom);
            return;
        }
        if (this.mLeft.mGroup == group) {
            this.mSolverLeft = system.getObjectVariableValue(this.mLeft);
        }
        if (this.mTop.mGroup == group) {
            this.mSolverTop = system.getObjectVariableValue(this.mTop);
        }
        if (this.mRight.mGroup == group) {
            this.mSolverRight = system.getObjectVariableValue(this.mRight);
        }
        if (this.mBottom.mGroup == group) {
            this.mSolverBottom = system.getObjectVariableValue(this.mBottom);
        }
    }

    public void updateFromSolver(LinearSystem system) {
        updateFromSolver(system, Integer.MAX_VALUE);
    }
}

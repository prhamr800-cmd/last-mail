package io.github.francoiscampbell.circlelayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: CircleLayout.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 0}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u0000 C2\u00020\u0001:\u0001CB/\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u000e\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0007J\u001e\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0007J>\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001505H\u0002J\b\u00106\u001a\u000201H\u0014J0\u00107\u001a\u0002012\u0006\u00108\u001a\u00020$2\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0007H\u0016J\u0018\u0010=\u001a\u0002012\u0006\u0010>\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0007H\u0016J\u0016\u0010@\u001a\u00020A2\u0006\u0010'\u001a\u00020A2\u0006\u0010\f\u001a\u00020AJ\u0016\u0010B\u001a\u00020A2\u0006\u0010'\u001a\u00020A2\u0006\u0010\f\u001a\u00020AR$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u001e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020$8F¢\u0006\u0006\u001a\u0004\b%\u0010&R$\u0010'\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010 \"\u0004\b)\u0010\"¨\u0006D"}, d2 = {"Lio/github/francoiscampbell/circlelayout/CircleLayout;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", FirebaseAnalytics.Param.VALUE, "", "angle", "getAngle", "()F", "setAngle", "(F)V", "angleOffset", "getAngleOffset", "setAngleOffset", "newCenterView", "Landroid/view/View;", "centerView", "getCenterView", "()Landroid/view/View;", "setCenterView", "(Landroid/view/View;)V", "centerViewId", "childrenToLayout", "Ljava/util/LinkedList;", "direction", "getDirection", "()I", "setDirection", "(I)V", "hasCenterView", "", "getHasCenterView", "()Z", "radius", "getRadius", "setRadius", "getEqualAngle", "numSlices", "getLayoutRadius", "outerRadius", "maxChildRadius", "minChildRadius", "layoutChildrenAtAngle", "", Parameters.CONTEXT_ENCODED, "cy", "angleIncrement", "", "onFinishInflate", "onLayout", "changed", "l", "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "polarToX", "", "polarToY", "Companion", "circlelayout-compileReleaseKotlin"}, k = 1, mv = {1, 1, 1})
public final class CircleLayout extends ViewGroup {
    public static final int CLOCKWISE = -1;
    public static final int COUNTER_CLOCKWISE = 1;
    public static final int FITS_LARGEST_CHILD = -2;
    public static final int FITS_SMALLEST_CHILD = -1;
    private float angle;
    private float angleOffset;

    @Nullable
    private View centerView;
    private int centerViewId;
    private final LinkedList<View> childrenToLayout;
    private int direction;
    private int radius;

    @JvmOverloads
    public CircleLayout(@NotNull Context context) {
        this(context, null, 0, 0, 14, null);
    }

    @JvmOverloads
    public CircleLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
    }

    @JvmOverloads
    public CircleLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CircleLayout(@NotNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.radius = FITS_LARGEST_CHILD;
        this.direction = COUNTER_CLOCKWISE;
        this.childrenToLayout = new LinkedList<>();
        TypedArray attributes = context.obtainStyledAttributes(attrs, R.styleable.CircleLayout, defStyleAttr, defStyleRes);
        this.centerViewId = attributes.getResourceId(R.styleable.CircleLayout_cl_centerView, ViewGroup.NO_ID);
        setAngle(attributes.getFloat(R.styleable.CircleLayout_cl_angle, 0.0f));
        setAngleOffset(attributes.getFloat(R.styleable.CircleLayout_cl_angleOffset, 0.0f));
        setRadius(attributes.getInt(R.styleable.CircleLayout_cl_radius, FITS_LARGEST_CHILD));
        setDirection(attributes.getInt(R.styleable.CircleLayout_cl_direction, COUNTER_CLOCKWISE));
        attributes.recycle();
    }

    @JvmOverloads
    public /* synthetic */ CircleLayout(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? (AttributeSet) null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    public final float getAngle() {
        return this.angle;
    }

    public final void setAngle(float value) {
        this.angle = value % 360.0f;
        requestLayout();
    }

    public final float getAngleOffset() {
        return this.angleOffset;
    }

    public final void setAngleOffset(float value) {
        this.angleOffset = value % 360.0f;
        requestLayout();
    }

    public final int getRadius() {
        return this.radius;
    }

    public final void setRadius(int value) {
        this.radius = value;
        requestLayout();
    }

    public final int getDirection() {
        return this.direction;
    }

    public final void setDirection(int value) {
        this.direction = (int) Math.signum(value);
        requestLayout();
    }

    public final boolean getHasCenterView() {
        if (this.centerView != null) {
            if (!Intrinsics.areEqual(this.centerView != null ? Integer.valueOf(r0.getVisibility()) : null, Integer.valueOf(ViewGroup.GONE))) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final View getCenterView() {
        return this.centerView;
    }

    public final void setCenterView(@Nullable View newCenterView) {
        if (newCenterView != null && indexOfChild(newCenterView) == -1) {
            throw new IllegalArgumentException("View with ID " + newCenterView.getId() + " is not a child of this layout");
        }
        this.centerView = newCenterView;
        this.centerViewId = newCenterView != null ? newCenterView.getId() : ViewGroup.NO_ID;
        requestLayout();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setCenterView(findViewById(this.centerViewId));
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        measureChildren(widthMeasureSpec, heightMeasureSpec);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0092 A[LOOP:0: B:7:0x005b->B:18:0x0092, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097 A[EDGE_INSN: B:28:0x0097->B:19:0x0097 BREAK  A[LOOP:0: B:7:0x005b->B:18:0x0092], SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayout(boolean r22, int r23, int r24, int r25, int r26) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.github.francoiscampbell.circlelayout.CircleLayout.onLayout(boolean, int, int, int, int):void");
    }

    public final int getLayoutRadius(int outerRadius, int maxChildRadius, int minChildRadius) {
        int i = this.radius;
        return i == FITS_LARGEST_CHILD ? outerRadius - maxChildRadius : i == FITS_SMALLEST_CHILD ? outerRadius - minChildRadius : Math.abs(this.radius);
    }

    public final float getEqualAngle(int numSlices) {
        return 360.0f / (numSlices != 0 ? numSlices : 1);
    }

    private final void layoutChildrenAtAngle(int cx, int cy, float angleIncrement, float angleOffset, int radius, List<? extends View> childrenToLayout) {
        int i = radius;
        double angleIncrementRad = Math.toRadians(angleIncrement);
        double currentAngleRad = Math.toRadians(angleOffset);
        int size = childrenToLayout.size() - 1;
        if (size < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            View child = childrenToLayout.get(i2);
            double childCenterX = polarToX(i, currentAngleRad);
            double childCenterY = polarToY(i, currentAngleRad);
            int i3 = size;
            int i4 = i2;
            double d = cx;
            Double.isNaN(d);
            double d2 = cy;
            Double.isNaN(d2);
            ViewExtensionsKt.layoutFromCenter(child, (int) (d + childCenterX), (int) (d2 - childCenterY));
            double d3 = this.direction;
            Double.isNaN(d3);
            currentAngleRad += d3 * angleIncrementRad;
            size = i3;
            if (i4 == size) {
                return;
            }
            i2 = i4 + 1;
            i = radius;
        }
    }

    public final double polarToX(double radius, double angle) {
        return Math.cos(angle) * radius;
    }

    public final double polarToY(double radius, double angle) {
        return Math.sin(angle) * radius;
    }
}

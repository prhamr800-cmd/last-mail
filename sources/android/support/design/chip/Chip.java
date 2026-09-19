package android.support.design.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.AnimatorRes;
import android.support.annotation.BoolRes;
import android.support.annotation.CallSuper;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.design.animation.MotionSpec;
import android.support.design.chip.ChipDrawable;
import android.support.design.resources.TextAppearance;
import android.support.design.ripple.RippleUtils;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.text.BidiFormatter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.CompoundButton;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate {
    private static final int CLOSE_ICON_VIRTUAL_ID = 0;
    private static final String NAMESPACE_ANDROID = "http://schemas.android.com/apk/res/android";
    private static final String TAG = "Chip";

    @Nullable
    private ChipDrawable chipDrawable;
    private boolean closeIconFocused;
    private boolean closeIconHovered;
    private boolean closeIconPressed;
    private boolean deferredCheckedValue;
    private int focusedVirtualView;
    private final ResourcesCompat.FontCallback fontCallback;

    @Nullable
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListenerInternal;

    @Nullable
    private View.OnClickListener onCloseIconClickListener;
    private final Rect rect;
    private final RectF rectF;

    @Nullable
    private RippleDrawable ripple;
    private final ChipTouchHelper touchHelper;
    private static final Rect EMPTY_BOUNDS = new Rect();
    private static final int[] SELECTED_STATE = {R.attr.state_selected};

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attrs) {
        this(context, attrs, android.support.design.R.attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.focusedVirtualView = Integer.MIN_VALUE;
        this.rect = new Rect();
        this.rectF = new RectF();
        this.fontCallback = new ResourcesCompat.FontCallback() { // from class: android.support.design.chip.Chip.1
            @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
            public void onFontRetrieved(@NonNull Typeface typeface) {
                Chip.this.setText(Chip.this.getText());
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }

            @Override // android.support.v4.content.res.ResourcesCompat.FontCallback
            public void onFontRetrievalFailed(int reason) {
            }
        };
        validateAttributes(attrs);
        ChipDrawable drawable = ChipDrawable.createFromAttributes(context, attrs, defStyleAttr, android.support.design.R.style.Widget_MaterialComponents_Chip_Action);
        setChipDrawable(drawable);
        this.touchHelper = new ChipTouchHelper(this);
        ViewCompat.setAccessibilityDelegate(this, this.touchHelper);
        initOutlineProvider();
        setChecked(this.deferredCheckedValue);
        drawable.setShouldDrawText(false);
        setText(drawable.getText());
        setEllipsize(drawable.getEllipsize());
        setIncludeFontPadding(false);
        if (getTextAppearance() != null) {
            updateTextPaintDrawState(getTextAppearance());
        }
        setSingleLine();
        setGravity(8388627);
        updatePaddingInternal();
    }

    private void updatePaddingInternal() {
        if (TextUtils.isEmpty(getText()) || this.chipDrawable == null) {
            return;
        }
        float paddingEnd = this.chipDrawable.getChipStartPadding() + this.chipDrawable.getChipEndPadding() + this.chipDrawable.getTextStartPadding() + this.chipDrawable.getTextEndPadding();
        if ((this.chipDrawable.isChipIconVisible() && this.chipDrawable.getChipIcon() != null) || (this.chipDrawable.getCheckedIcon() != null && this.chipDrawable.isCheckedIconVisible() && isChecked())) {
            paddingEnd += this.chipDrawable.getIconStartPadding() + this.chipDrawable.getIconEndPadding() + this.chipDrawable.getChipIconSize();
        }
        if (this.chipDrawable.isCloseIconVisible() && this.chipDrawable.getCloseIcon() != null) {
            paddingEnd += this.chipDrawable.getCloseIconStartPadding() + this.chipDrawable.getCloseIconEndPadding() + this.chipDrawable.getCloseIconSize();
        }
        if (ViewCompat.getPaddingEnd(this) != paddingEnd) {
            ViewCompat.setPaddingRelative(this, ViewCompat.getPaddingStart(this), getPaddingTop(), (int) paddingEnd, getPaddingBottom());
        }
    }

    private void validateAttributes(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "background") != null) {
            throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue(NAMESPACE_ANDROID, "singleLine", true) || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "lines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "minLines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "gravity", 8388627) != 8388627) {
            Log.w(TAG, "Chip text must be vertically center and start aligned");
        }
    }

    private void initOutlineProvider() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: android.support.design.chip.Chip.2
                @Override // android.view.ViewOutlineProvider
                @TargetApi(21)
                public void getOutline(View view, Outline outline) {
                    if (Chip.this.chipDrawable != null) {
                        Chip.this.chipDrawable.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public void setChipDrawable(@NonNull ChipDrawable drawable) {
        if (this.chipDrawable != drawable) {
            unapplyChipDrawable(this.chipDrawable);
            this.chipDrawable = drawable;
            applyChipDrawable(this.chipDrawable);
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.ripple = new RippleDrawable(RippleUtils.convertToRippleDrawableColor(this.chipDrawable.getRippleColor()), this.chipDrawable, null);
                this.chipDrawable.setUseCompatRipple(false);
                ViewCompat.setBackground(this, this.ripple);
            } else {
                this.chipDrawable.setUseCompatRipple(true);
                ViewCompat.setBackground(this, this.chipDrawable);
            }
        }
    }

    private void unapplyChipDrawable(@Nullable ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.setDelegate(null);
        }
    }

    private void applyChipDrawable(@NonNull ChipDrawable chipDrawable) {
        chipDrawable.setDelegate(this);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int extraSpace) {
        int[] state = super.onCreateDrawableState(extraSpace + 1);
        if (isChecked()) {
            mergeDrawableStates(state, SELECTED_STATE);
        }
        return state;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (TextUtils.isEmpty(getText()) || this.chipDrawable == null || this.chipDrawable.shouldDrawText()) {
            super.onDraw(canvas);
            return;
        }
        int saveCount = canvas.save();
        canvas.translate(calculateTextOffsetFromStart(this.chipDrawable), 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(saveCount);
    }

    @Override // android.widget.TextView
    public void setGravity(int gravity) {
        if (gravity != 8388627) {
            Log.w(TAG, "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(gravity);
        }
    }

    private float calculateTextOffsetFromStart(@NonNull ChipDrawable chipDrawable) {
        float offsetFromStart = getChipStartPadding() + chipDrawable.calculateChipIconWidth() + getTextStartPadding();
        if (ViewCompat.getLayoutDirection(this) == 0) {
            return offsetFromStart;
        }
        return -offsetFromStart;
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList tint) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode tintMode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int resid) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackground(Drawable background) {
        if (background != this.chipDrawable && background != this.ripple) {
            throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
        }
        super.setBackground(background);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable background) {
        if (background != this.chipDrawable && background != this.ripple) {
            throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
        }
        super.setBackgroundDrawable(background);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable left, @Nullable Drawable top, @Nullable Drawable right, @Nullable Drawable bottom) {
        if (left != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (right != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(left, top, right, bottom);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int left, int top, int right, int bottom) {
        if (left != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (right != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(left, top, right, bottom);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable left, @Nullable Drawable top, @Nullable Drawable right, @Nullable Drawable bottom) {
        if (left != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (right != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(left, top, right, bottom);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable start, @Nullable Drawable top, @Nullable Drawable end, @Nullable Drawable bottom) {
        if (start != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (end != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(start, top, end, bottom);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int start, int top, int end, int bottom) {
        if (start != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (end != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(start, top, end, bottom);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable start, @Nullable Drawable top, @Nullable Drawable end, @Nullable Drawable bottom) {
        if (start != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (end != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(start, top, end, bottom);
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getEllipsize();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt where) {
        if (this.chipDrawable == null) {
            return;
        }
        if (where == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(where);
        if (this.chipDrawable != null) {
            this.chipDrawable.setEllipsize(where);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean singleLine) {
        if (!singleLine) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(singleLine);
    }

    @Override // android.widget.TextView
    public void setLines(int lines) {
        if (lines > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(lines);
    }

    @Override // android.widget.TextView
    public void setMinLines(int minLines) {
        if (minLines > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(minLines);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int maxLines) {
        if (maxLines > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(maxLines);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int maxWidth) {
        super.setMaxWidth(maxWidth);
        if (this.chipDrawable != null) {
            this.chipDrawable.setMaxWidth(maxWidth);
        }
    }

    @Override // android.support.design.chip.ChipDrawable.Delegate
    public void onChipDrawableSizeChange() {
        updatePaddingInternal();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean checked) {
        if (this.chipDrawable == null) {
            this.deferredCheckedValue = checked;
            return;
        }
        if (this.chipDrawable.isCheckable()) {
            boolean wasChecked = isChecked();
            super.setChecked(checked);
            if (wasChecked != checked && this.onCheckedChangeListenerInternal != null) {
                this.onCheckedChangeListenerInternal.onCheckedChanged(this, checked);
            }
        }
    }

    void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener listener) {
        this.onCheckedChangeListenerInternal = listener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener listener) {
        this.onCloseIconClickListener = listener;
    }

    @CallSuper
    public boolean performCloseIconClick() {
        boolean result;
        playSoundEffect(0);
        if (this.onCloseIconClickListener != null) {
            this.onCloseIconClickListener.onClick(this);
            result = true;
        } else {
            result = false;
        }
        this.touchHelper.sendEventForVirtualView(0, 1);
        return result;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        boolean handled = false;
        int action = event.getActionMasked();
        boolean eventInCloseIcon = getCloseIconTouchBounds().contains(event.getX(), event.getY());
        switch (action) {
            case 0:
                if (eventInCloseIcon) {
                    setCloseIconPressed(true);
                    handled = true;
                }
                break;
            case 1:
                if (this.closeIconPressed) {
                    performCloseIconClick();
                    handled = true;
                }
                setCloseIconPressed(false);
                break;
            case 2:
                if (this.closeIconPressed) {
                    if (!eventInCloseIcon) {
                        setCloseIconPressed(false);
                    }
                    handled = true;
                }
                break;
            case 3:
                setCloseIconPressed(false);
                break;
        }
        return handled || super.onTouchEvent(event);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(event.getX(), event.getY()));
        } else if (action == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(event);
    }

    @SuppressLint({"PrivateApi"})
    private boolean handleAccessibilityExit(MotionEvent event) {
        if (event.getAction() == 10) {
            try {
                Field f = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
                f.setAccessible(true);
                int mHoveredVirtualViewId = ((Integer) f.get(this.touchHelper)).intValue();
                if (mHoveredVirtualViewId != Integer.MIN_VALUE) {
                    Method m = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
                    m.setAccessible(true);
                    m.invoke(this.touchHelper, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException e) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e);
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e2);
            } catch (NoSuchMethodException e3) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e3);
            } catch (InvocationTargetException e4) {
                Log.e(TAG, "Unable to send Accessibility Exit event", e4);
            }
        }
        return false;
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent event) {
        return handleAccessibilityExit(event) || this.touchHelper.dispatchHoverEvent(event) || super.dispatchHoverEvent(event);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.touchHelper.dispatchKeyEvent(event) || super.dispatchKeyEvent(event);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        if (focused) {
            setFocusedVirtualView(-1);
        } else {
            setFocusedVirtualView(Integer.MIN_VALUE);
        }
        invalidate();
        super.onFocusChanged(focused, direction, previouslyFocusedRect);
        this.touchHelper.onFocusChanged(focused, direction, previouslyFocusedRect);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(int r7, android.view.KeyEvent r8) {
        /*
            r6 = this;
            r0 = 0
            int r1 = r8.getKeyCode()
            r2 = 61
            r3 = 1
            if (r1 == r2) goto L3f
            r2 = 66
            if (r1 == r2) goto L31
            switch(r1) {
                case 21: goto L22;
                case 22: goto L12;
                case 23: goto L31;
                default: goto L11;
            }
        L11:
            goto L6b
        L12:
            boolean r1 = r8.hasNoModifiers()
            if (r1 == 0) goto L6b
            boolean r1 = android.support.design.internal.ViewUtils.isLayoutRtl(r6)
            r1 = r1 ^ r3
            boolean r0 = r6.moveFocus(r1)
            goto L6b
        L22:
            boolean r1 = r8.hasNoModifiers()
            if (r1 == 0) goto L6b
            boolean r1 = android.support.design.internal.ViewUtils.isLayoutRtl(r6)
            boolean r0 = r6.moveFocus(r1)
            goto L6b
        L31:
            int r1 = r6.focusedVirtualView
            switch(r1) {
                case -1: goto L3b;
                case 0: goto L37;
                default: goto L36;
            }
        L36:
            goto L6b
        L37:
            r6.performCloseIconClick()
            return r3
        L3b:
            r6.performClick()
            return r3
        L3f:
            r1 = 0
            boolean r2 = r8.hasNoModifiers()
            if (r2 == 0) goto L48
            r1 = 2
            goto L4f
        L48:
            boolean r2 = r8.hasModifiers(r3)
            if (r2 == 0) goto L4f
            r1 = 1
        L4f:
            if (r1 == 0) goto L6b
            android.view.ViewParent r2 = r6.getParent()
            r4 = r6
        L56:
            android.view.View r4 = r4.focusSearch(r1)
            if (r4 == 0) goto L64
            if (r4 == r6) goto L64
            android.view.ViewParent r5 = r4.getParent()
            if (r5 == r2) goto L56
        L64:
            if (r4 == 0) goto L6a
            r4.requestFocus()
            return r3
        L6a:
        L6b:
            if (r0 == 0) goto L71
            r6.invalidate()
            return r3
        L71:
            boolean r1 = super.onKeyDown(r7, r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.chip.Chip.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    private boolean moveFocus(boolean positive) {
        ensureFocus();
        if (positive) {
            if (this.focusedVirtualView != -1) {
                return false;
            }
            setFocusedVirtualView(0);
            return true;
        }
        if (this.focusedVirtualView != 0) {
            return false;
        }
        setFocusedVirtualView(-1);
        return true;
    }

    private void ensureFocus() {
        if (this.focusedVirtualView == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect r) {
        if (this.focusedVirtualView == 0) {
            r.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(r);
        }
    }

    private void setFocusedVirtualView(int virtualView) {
        if (this.focusedVirtualView != virtualView) {
            if (this.focusedVirtualView == 0) {
                setCloseIconFocused(false);
            }
            this.focusedVirtualView = virtualView;
            if (virtualView == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    private void setCloseIconPressed(boolean pressed) {
        if (this.closeIconPressed != pressed) {
            this.closeIconPressed = pressed;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean hovered) {
        if (this.closeIconHovered != hovered) {
            this.closeIconHovered = hovered;
            refreshDrawableState();
        }
    }

    private void setCloseIconFocused(boolean focused) {
        if (this.closeIconFocused != focused) {
            this.closeIconFocused = focused;
            refreshDrawableState();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        boolean changed = false;
        if (this.chipDrawable != null && this.chipDrawable.isCloseIconStateful()) {
            changed = this.chipDrawable.setCloseIconState(createCloseIconDrawableState());
        }
        if (changed) {
            invalidate();
        }
    }

    private int[] createCloseIconDrawableState() {
        int count = 0;
        if (isEnabled()) {
            count = 0 + 1;
        }
        if (this.closeIconFocused) {
            count++;
        }
        if (this.closeIconHovered) {
            count++;
        }
        if (this.closeIconPressed) {
            count++;
        }
        if (isChecked()) {
            count++;
        }
        int[] stateSet = new int[count];
        int i = 0;
        if (isEnabled()) {
            stateSet[0] = 16842910;
            i = 0 + 1;
        }
        if (this.closeIconFocused) {
            stateSet[i] = 16842908;
            i++;
        }
        if (this.closeIconHovered) {
            stateSet[i] = 16843623;
            i++;
        }
        if (this.closeIconPressed) {
            stateSet[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            stateSet[i] = 16842913;
            int i2 = i + 1;
        }
        return stateSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasCloseIcon() {
        return (this.chipDrawable == null || this.chipDrawable.getCloseIcon() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.rectF.setEmpty();
        if (hasCloseIcon()) {
            this.chipDrawable.getCloseIconTouchBounds(this.rectF);
        }
        return this.rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF bounds = getCloseIconTouchBounds();
        this.rect.set((int) bounds.left, (int) bounds.top, (int) bounds.right, (int) bounds.bottom);
        return this.rect;
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        if (getCloseIconTouchBounds().contains(event.getX(), event.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    private class ChipTouchHelper extends ExploreByTouchHelper {
        ChipTouchHelper(Chip view) {
            super(view);
        }

        @Override // android.support.v4.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float x, float y) {
            return (Chip.this.hasCloseIcon() && Chip.this.getCloseIconTouchBounds().contains(x, y)) ? 0 : -1;
        }

        @Override // android.support.v4.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(List<Integer> virtualViewIds) {
            if (Chip.this.hasCloseIcon()) {
                virtualViewIds.add(0);
            }
        }

        @Override // android.support.v4.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int virtualViewId, AccessibilityNodeInfoCompat node) {
            if (Chip.this.hasCloseIcon()) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    node.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence chipText = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i = android.support.design.R.string.mtrl_chip_close_icon_content_description;
                    Object[] objArr = new Object[1];
                    objArr[0] = !TextUtils.isEmpty(chipText) ? chipText : "";
                    node.setContentDescription(context.getString(i, objArr).trim());
                }
                node.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                node.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                node.setEnabled(Chip.this.isEnabled());
                return;
            }
            node.setContentDescription("");
            node.setBoundsInParent(Chip.EMPTY_BOUNDS);
        }

        @Override // android.support.v4.widget.ExploreByTouchHelper
        protected void onPopulateNodeForHost(AccessibilityNodeInfoCompat node) {
            node.setCheckable(Chip.this.chipDrawable != null && Chip.this.chipDrawable.isCheckable());
            node.setClassName(Chip.class.getName());
            CharSequence chipText = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                node.setText(chipText);
            } else {
                node.setContentDescription(chipText);
            }
        }

        @Override // android.support.v4.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int virtualViewId, int action, Bundle arguments) {
            if (action == 16 && virtualViewId == 0) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipBackgroundColor();
        }
        return null;
    }

    public void setChipBackgroundColorResource(@ColorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipBackgroundColorResource(id);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList chipBackgroundColor) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipBackgroundColor(chipBackgroundColor);
        }
    }

    public float getChipMinHeight() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipMinHeight();
        }
        return 0.0f;
    }

    public void setChipMinHeightResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipMinHeightResource(id);
        }
    }

    public void setChipMinHeight(float minHeight) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipMinHeight(minHeight);
        }
    }

    public float getChipCornerRadius() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipCornerRadius();
        }
        return 0.0f;
    }

    public void setChipCornerRadiusResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipCornerRadiusResource(id);
        }
    }

    public void setChipCornerRadius(float chipCornerRadius) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipCornerRadius(chipCornerRadius);
        }
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStrokeColor();
        }
        return null;
    }

    public void setChipStrokeColorResource(@ColorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeColorResource(id);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList chipStrokeColor) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeColor(chipStrokeColor);
        }
    }

    public float getChipStrokeWidth() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStrokeWidth();
        }
        return 0.0f;
    }

    public void setChipStrokeWidthResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeWidthResource(id);
        }
    }

    public void setChipStrokeWidth(float chipStrokeWidth) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStrokeWidth(chipStrokeWidth);
        }
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getRippleColor();
        }
        return null;
    }

    public void setRippleColorResource(@ColorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setRippleColorResource(id);
        }
    }

    public void setRippleColor(@Nullable ColorStateList rippleColor) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setRippleColor(rippleColor);
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        return this.chipDrawable != null ? this.chipDrawable.getText() : "";
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence text, TextView.BufferType type) {
        if (this.chipDrawable == null) {
            return;
        }
        if (text == null) {
            text = "";
        }
        CharSequence unicodeWrappedText = BidiFormatter.getInstance().unicodeWrap(text);
        super.setText(this.chipDrawable.shouldDrawText() ? null : unicodeWrappedText, type);
        if (this.chipDrawable != null) {
            this.chipDrawable.setText(text);
        }
    }

    @Deprecated
    public void setChipTextResource(@StringRes int id) {
        setText(getResources().getString(id));
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence chipText) {
        setText(chipText);
    }

    @Nullable
    private TextAppearance getTextAppearance() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextAppearance();
        }
        return null;
    }

    private void updateTextPaintDrawState(TextAppearance textAppearance) {
        TextPaint textPaint = getPaint();
        textPaint.drawableState = this.chipDrawable.getState();
        textAppearance.updateDrawState(getContext(), textPaint, this.fontCallback);
    }

    public void setTextAppearanceResource(@StyleRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(id);
        }
        setTextAppearance(getContext(), id);
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearance(textAppearance);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.fontCallback);
            updateTextPaintDrawState(textAppearance);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int resId) {
        super.setTextAppearance(context, resId);
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(resId);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(context, getPaint(), this.fontCallback);
            updateTextPaintDrawState(getTextAppearance());
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int resId) {
        super.setTextAppearance(resId);
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextAppearanceResource(resId);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.fontCallback);
            updateTextPaintDrawState(getTextAppearance());
        }
    }

    public boolean isChipIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isChipIconVisible();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public void setChipIconVisible(@BoolRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconVisible(id);
        }
    }

    public void setChipIconVisible(boolean chipIconVisible) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconVisible(chipIconVisible);
        }
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int id) {
        setChipIconVisible(id);
    }

    @Deprecated
    public void setChipIconEnabled(boolean chipIconEnabled) {
        setChipIconVisible(chipIconEnabled);
    }

    @Nullable
    public Drawable getChipIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIcon();
        }
        return null;
    }

    public void setChipIconResource(@DrawableRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconResource(id);
        }
    }

    public void setChipIcon(@Nullable Drawable chipIcon) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIcon(chipIcon);
        }
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIconTint();
        }
        return null;
    }

    public void setChipIconTintResource(@ColorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconTintResource(id);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList chipIconTint) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconTint(chipIconTint);
        }
    }

    public float getChipIconSize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipIconSize();
        }
        return 0.0f;
    }

    public void setChipIconSizeResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconSizeResource(id);
        }
    }

    public void setChipIconSize(float chipIconSize) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipIconSize(chipIconSize);
        }
    }

    public boolean isCloseIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isCloseIconVisible();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public void setCloseIconVisible(@BoolRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconVisible(id);
        }
    }

    public void setCloseIconVisible(boolean closeIconVisible) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconVisible(closeIconVisible);
        }
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int id) {
        setCloseIconVisible(id);
    }

    @Deprecated
    public void setCloseIconEnabled(boolean closeIconEnabled) {
        setCloseIconVisible(closeIconEnabled);
    }

    @Nullable
    public Drawable getCloseIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIcon();
        }
        return null;
    }

    public void setCloseIconResource(@DrawableRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconResource(id);
        }
    }

    public void setCloseIcon(@Nullable Drawable closeIcon) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIcon(closeIcon);
        }
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconTint();
        }
        return null;
    }

    public void setCloseIconTintResource(@ColorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconTintResource(id);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList closeIconTint) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconTint(closeIconTint);
        }
    }

    public float getCloseIconSize() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconSize();
        }
        return 0.0f;
    }

    public void setCloseIconSizeResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconSizeResource(id);
        }
    }

    public void setCloseIconSize(float closeIconSize) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconSize(closeIconSize);
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence closeIconContentDescription) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconContentDescription(closeIconContentDescription);
        }
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconContentDescription();
        }
        return null;
    }

    public boolean isCheckable() {
        return this.chipDrawable != null && this.chipDrawable.isCheckable();
    }

    public void setCheckableResource(@BoolRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckableResource(id);
        }
    }

    public void setCheckable(boolean checkable) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckable(checkable);
        }
    }

    public boolean isCheckedIconVisible() {
        return this.chipDrawable != null && this.chipDrawable.isCheckedIconVisible();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public void setCheckedIconVisible(@BoolRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconVisible(id);
        }
    }

    public void setCheckedIconVisible(boolean checkedIconVisible) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconVisible(checkedIconVisible);
        }
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int id) {
        setCheckedIconVisible(id);
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean checkedIconEnabled) {
        setCheckedIconVisible(checkedIconEnabled);
    }

    @Nullable
    public Drawable getCheckedIcon() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCheckedIcon();
        }
        return null;
    }

    public void setCheckedIconResource(@DrawableRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIconResource(id);
        }
    }

    public void setCheckedIcon(@Nullable Drawable checkedIcon) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCheckedIcon(checkedIcon);
        }
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getShowMotionSpec();
        }
        return null;
    }

    public void setShowMotionSpecResource(@AnimatorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setShowMotionSpecResource(id);
        }
    }

    public void setShowMotionSpec(@Nullable MotionSpec showMotionSpec) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setShowMotionSpec(showMotionSpec);
        }
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getHideMotionSpec();
        }
        return null;
    }

    public void setHideMotionSpecResource(@AnimatorRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setHideMotionSpecResource(id);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec hideMotionSpec) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setHideMotionSpec(hideMotionSpec);
        }
    }

    public float getChipStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipStartPadding();
        }
        return 0.0f;
    }

    public void setChipStartPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStartPaddingResource(id);
        }
    }

    public void setChipStartPadding(float chipStartPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipStartPadding(chipStartPadding);
        }
    }

    public float getIconStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getIconStartPadding();
        }
        return 0.0f;
    }

    public void setIconStartPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconStartPaddingResource(id);
        }
    }

    public void setIconStartPadding(float iconStartPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconStartPadding(iconStartPadding);
        }
    }

    public float getIconEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getIconEndPadding();
        }
        return 0.0f;
    }

    public void setIconEndPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconEndPaddingResource(id);
        }
    }

    public void setIconEndPadding(float iconEndPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setIconEndPadding(iconEndPadding);
        }
    }

    public float getTextStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextStartPadding();
        }
        return 0.0f;
    }

    public void setTextStartPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextStartPaddingResource(id);
        }
    }

    public void setTextStartPadding(float textStartPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextStartPadding(textStartPadding);
        }
    }

    public float getTextEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getTextEndPadding();
        }
        return 0.0f;
    }

    public void setTextEndPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextEndPaddingResource(id);
        }
    }

    public void setTextEndPadding(float textEndPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setTextEndPadding(textEndPadding);
        }
    }

    public float getCloseIconStartPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    public void setCloseIconStartPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconStartPaddingResource(id);
        }
    }

    public void setCloseIconStartPadding(float closeIconStartPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconStartPadding(closeIconStartPadding);
        }
    }

    public float getCloseIconEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public void setCloseIconEndPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconEndPaddingResource(id);
        }
    }

    public void setCloseIconEndPadding(float closeIconEndPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setCloseIconEndPadding(closeIconEndPadding);
        }
    }

    public float getChipEndPadding() {
        if (this.chipDrawable != null) {
            return this.chipDrawable.getChipEndPadding();
        }
        return 0.0f;
    }

    public void setChipEndPaddingResource(@DimenRes int id) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipEndPaddingResource(id);
        }
    }

    public void setChipEndPadding(float chipEndPadding) {
        if (this.chipDrawable != null) {
            this.chipDrawable.setChipEndPadding(chipEndPadding);
        }
    }
}

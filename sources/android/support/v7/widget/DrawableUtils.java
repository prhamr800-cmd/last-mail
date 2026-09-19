package android.support.v7.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.WrappedDrawable;
import android.support.v7.graphics.drawable.DrawableWrapper;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r12) {
        /*
            java.lang.Class<?> r0 = android.support.v7.widget.DrawableUtils.sInsetsClazz
            if (r0 == 0) goto La4
            android.graphics.drawable.Drawable r0 = android.support.v4.graphics.drawable.DrawableCompat.unwrap(r12)     // Catch: java.lang.Exception -> L9c
            r12 = r0
            java.lang.Class r0 = r12.getClass()     // Catch: java.lang.Exception -> L9c
            java.lang.String r1 = "getOpticalInsets"
            r2 = 0
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L9c
            java.lang.reflect.Method r0 = r0.getMethod(r1, r3)     // Catch: java.lang.Exception -> L9c
            java.lang.Object[] r1 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L9c
            java.lang.Object r1 = r0.invoke(r12, r1)     // Catch: java.lang.Exception -> L9c
            if (r1 == 0) goto L9b
            android.graphics.Rect r3 = new android.graphics.Rect     // Catch: java.lang.Exception -> L9c
            r3.<init>()     // Catch: java.lang.Exception -> L9c
            java.lang.Class<?> r4 = android.support.v7.widget.DrawableUtils.sInsetsClazz     // Catch: java.lang.Exception -> L9c
            java.lang.reflect.Field[] r4 = r4.getFields()     // Catch: java.lang.Exception -> L9c
            int r5 = r4.length     // Catch: java.lang.Exception -> L9c
            r6 = 0
        L2b:
            if (r6 >= r5) goto L9a
            r7 = r4[r6]     // Catch: java.lang.Exception -> L9c
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Exception -> L9c
            r9 = -1
            int r10 = r8.hashCode()     // Catch: java.lang.Exception -> L9c
            r11 = -1383228885(0xffffffffad8d9a2b, float:-1.6098308E-11)
            if (r10 == r11) goto L6c
            r11 = 115029(0x1c155, float:1.6119E-40)
            if (r10 == r11) goto L61
            r11 = 3317767(0x32a007, float:4.649182E-39)
            if (r10 == r11) goto L57
            r11 = 108511772(0x677c21c, float:4.6598146E-35)
            if (r10 == r11) goto L4d
            goto L76
        L4d:
            java.lang.String r10 = "right"
            boolean r8 = r8.equals(r10)     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L76
            r8 = 2
            goto L77
        L57:
            java.lang.String r10 = "left"
            boolean r8 = r8.equals(r10)     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L76
            r8 = 0
            goto L77
        L61:
            java.lang.String r10 = "top"
            boolean r8 = r8.equals(r10)     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L76
            r8 = 1
            goto L77
        L6c:
            java.lang.String r10 = "bottom"
            boolean r8 = r8.equals(r10)     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L76
            r8 = 3
            goto L77
        L76:
            r8 = -1
        L77:
            switch(r8) {
                case 0: goto L90;
                case 1: goto L89;
                case 2: goto L82;
                case 3: goto L7b;
                default: goto L7a;
            }     // Catch: java.lang.Exception -> L9c
        L7a:
            goto L97
        L7b:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L9c
            r3.bottom = r8     // Catch: java.lang.Exception -> L9c
            goto L97
        L82:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L9c
            r3.right = r8     // Catch: java.lang.Exception -> L9c
            goto L97
        L89:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L9c
            r3.top = r8     // Catch: java.lang.Exception -> L9c
            goto L97
        L90:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L9c
            r3.left = r8     // Catch: java.lang.Exception -> L9c
        L97:
            int r6 = r6 + 1
            goto L2b
        L9a:
            return r3
        L9b:
            goto La4
        L9c:
            r0 = move-exception
            java.lang.String r1 = "DrawableUtils"
            java.lang.String r2 = "Couldn't obtain the optical insets. Ignoring."
            android.util.Log.e(r1, r2)
        La4:
            android.graphics.Rect r0 = android.support.v7.widget.DrawableUtils.INSETS_NONE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    static void fixDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof WrappedDrawable) {
                return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
            }
            if (drawable instanceof DrawableWrapper) {
                return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof ScaleDrawable) {
                return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        Drawable.ConstantState state = drawable.getConstantState();
        if (state instanceof DrawableContainer.DrawableContainerState) {
            DrawableContainer.DrawableContainerState containerState = (DrawableContainer.DrawableContainerState) state;
            for (Drawable child : containerState.getChildren()) {
                if (!canSafelyMutateDrawable(child)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] originalState = drawable.getState();
        if (originalState == null || originalState.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(originalState);
    }

    public static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        if (value == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (value == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (value == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (value) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return defaultMode;
        }
    }
}

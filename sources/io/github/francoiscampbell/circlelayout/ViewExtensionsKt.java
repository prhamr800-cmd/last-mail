package io.github.francoiscampbell.circlelayout;

import android.view.View;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: ViewExtensions.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 0}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u001a\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"radius", "", "Landroid/view/View;", "getRadius", "(Landroid/view/View;)I", "layoutFromCenter", "", Parameters.CONTEXT_ENCODED, "cy", "circlelayout-compileReleaseKotlin"}, k = 2, mv = {1, 1, 1})
public final class ViewExtensionsKt {
    public static final int getRadius(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return Math.max(receiver.getMeasuredWidth(), receiver.getMeasuredHeight()) / 2;
    }

    public static final void layoutFromCenter(@NotNull View receiver, int cx, int cy) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        int left = cx - (receiver.getMeasuredWidth() / 2);
        int top = cy - (receiver.getMeasuredHeight() / 2);
        int right = receiver.getMeasuredWidth() + left;
        int bottom = receiver.getMeasuredHeight() + top;
        receiver.layout(left, top, right, bottom);
    }
}

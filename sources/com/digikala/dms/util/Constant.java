package com.digikala.dms.util;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: Constant.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/digikala/dms/util/Constant;", "", "()V", "Companion", "app_release"}, k = 1, mv = {1, 1, 11})
public final class Constant {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String EXTRA_REASON_TYPE_CANCEL = "cancel";

    @NotNull
    private static final String EXTRA_REASON_TYPE_RETURN = "cancel";

    @NotNull
    private static final String EXTRA_SCAN_FOR_DELETE = "scan_for_delete";

    @NotNull
    private static final String EXTRA_SCAN_FOR_INSERT = "scan_for_insert";

    /* JADX INFO: compiled from: Constant.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/digikala/dms/util/Constant$Companion;", "", "()V", "EXTRA_REASON_TYPE_CANCEL", "", "getEXTRA_REASON_TYPE_CANCEL", "()Ljava/lang/String;", "EXTRA_REASON_TYPE_RETURN", "getEXTRA_REASON_TYPE_RETURN", "EXTRA_SCAN_FOR_DELETE", "getEXTRA_SCAN_FOR_DELETE", "EXTRA_SCAN_FOR_INSERT", "getEXTRA_SCAN_FOR_INSERT", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @NotNull
        public final String getEXTRA_REASON_TYPE_CANCEL() {
            return Constant.EXTRA_REASON_TYPE_CANCEL;
        }

        @NotNull
        public final String getEXTRA_REASON_TYPE_RETURN() {
            return Constant.EXTRA_REASON_TYPE_RETURN;
        }

        @NotNull
        public final String getEXTRA_SCAN_FOR_DELETE() {
            return Constant.EXTRA_SCAN_FOR_DELETE;
        }

        @NotNull
        public final String getEXTRA_SCAN_FOR_INSERT() {
            return Constant.EXTRA_SCAN_FOR_INSERT;
        }
    }
}

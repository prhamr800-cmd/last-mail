package kotlin.internal;

import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TypeCastException;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\b\u0010\b\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"IMPLEMENTATIONS", "Lkotlin/internal/PlatformImplementations;", "apiVersionIsAtLeast", "", "major", "", "minor", "patch", "getJavaVersion", "kotlin-stdlib"}, k = 2, mv = {1, 1, 9})
public final class PlatformImplementationsKt {

    @JvmField
    @NotNull
    public static final PlatformImplementations IMPLEMENTATIONS;

    /* JADX WARN: Removed duplicated region for block: B:30:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            r0 = 0
            int r1 = getJavaVersion()
            r2 = 65544(0x10008, float:9.1847E-41)
            if (r1 < r2) goto L3c
        Lb:
            java.lang.String r2 = "kotlin.internal.jdk8.JDK8PlatformImplementations"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L22
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.ClassNotFoundException -> L22
            if (r2 == 0) goto L1a
            kotlin.internal.PlatformImplementations r2 = (kotlin.internal.PlatformImplementations) r2     // Catch: java.lang.ClassNotFoundException -> L22
            goto L78
        L1a:
            kotlin.TypeCastException r2 = new kotlin.TypeCastException     // Catch: java.lang.ClassNotFoundException -> L22
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"
            r2.<init>(r3)     // Catch: java.lang.ClassNotFoundException -> L22
            throw r2     // Catch: java.lang.ClassNotFoundException -> L22
        L22:
            r2 = move-exception
            java.lang.String r2 = "kotlin.internal.JRE8PlatformImplementations"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L3b
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.ClassNotFoundException -> L3b
            if (r2 == 0) goto L33
            kotlin.internal.PlatformImplementations r2 = (kotlin.internal.PlatformImplementations) r2     // Catch: java.lang.ClassNotFoundException -> L3b
            goto L78
        L33:
            kotlin.TypeCastException r2 = new kotlin.TypeCastException     // Catch: java.lang.ClassNotFoundException -> L3b
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"
            r2.<init>(r3)     // Catch: java.lang.ClassNotFoundException -> L3b
            throw r2     // Catch: java.lang.ClassNotFoundException -> L3b
        L3b:
            r2 = move-exception
        L3c:
            r2 = 65543(0x10007, float:9.1845E-41)
            if (r1 < r2) goto L73
        L42:
            java.lang.String r2 = "kotlin.internal.jdk7.JDK7PlatformImplementations"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L59
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.ClassNotFoundException -> L59
            if (r2 == 0) goto L51
            kotlin.internal.PlatformImplementations r2 = (kotlin.internal.PlatformImplementations) r2     // Catch: java.lang.ClassNotFoundException -> L59
            goto L78
        L51:
            kotlin.TypeCastException r2 = new kotlin.TypeCastException     // Catch: java.lang.ClassNotFoundException -> L59
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"
            r2.<init>(r3)     // Catch: java.lang.ClassNotFoundException -> L59
            throw r2     // Catch: java.lang.ClassNotFoundException -> L59
        L59:
            r2 = move-exception
            java.lang.String r2 = "kotlin.internal.JRE7PlatformImplementations"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L72
            java.lang.Object r2 = r2.newInstance()     // Catch: java.lang.ClassNotFoundException -> L72
            if (r2 == 0) goto L6a
            kotlin.internal.PlatformImplementations r2 = (kotlin.internal.PlatformImplementations) r2     // Catch: java.lang.ClassNotFoundException -> L72
            goto L78
        L6a:
            kotlin.TypeCastException r2 = new kotlin.TypeCastException     // Catch: java.lang.ClassNotFoundException -> L72
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"
            r2.<init>(r3)     // Catch: java.lang.ClassNotFoundException -> L72
            throw r2     // Catch: java.lang.ClassNotFoundException -> L72
        L72:
            r2 = move-exception
        L73:
            kotlin.internal.PlatformImplementations r2 = new kotlin.internal.PlatformImplementations
            r2.<init>()
        L78:
            kotlin.internal.PlatformImplementationsKt.IMPLEMENTATIONS = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementationsKt.<clinit>():void");
    }

    private static final int getJavaVersion() {
        String version = System.getProperty("java.specification.version");
        if (version == null) {
            return 65542;
        }
        int firstDot = StringsKt.indexOf$default((CharSequence) version, '.', 0, false, 6, (Object) null);
        if (firstDot < 0) {
            try {
                return 65536 * Integer.parseInt(version);
            } catch (NumberFormatException e) {
                return 65542;
            }
        }
        int secondDot = StringsKt.indexOf$default((CharSequence) version, '.', firstDot + 1, false, 4, (Object) null);
        if (secondDot < 0) {
            secondDot = version.length();
        }
        if (version != null) {
            String firstPart = version.substring(0, firstDot);
            Intrinsics.checkExpressionValueIsNotNull(firstPart, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            int i = firstDot + 1;
            if (version != null) {
                String secondPart = version.substring(i, secondDot);
                Intrinsics.checkExpressionValueIsNotNull(secondPart, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                try {
                    return Integer.parseInt(secondPart) + (Integer.parseInt(firstPart) * 65536);
                } catch (NumberFormatException e2) {
                    return 65542;
                }
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    @SinceKotlin(version = "1.2")
    @PublishedApi
    public static final boolean apiVersionIsAtLeast(int major, int minor, int patch) {
        return KotlinVersion.CURRENT.isAtLeast(major, minor, patch);
    }
}

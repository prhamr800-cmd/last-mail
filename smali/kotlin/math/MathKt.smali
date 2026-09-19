###### Class kotlin.math.MathKt (kotlin.math.MathKt)
.class public final Lkotlin/math/MathKt;
.super Ljava/lang/Object;
.source "MathJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMathJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathJVM.kt\nkotlin/math/MathKt\n*L\n1#1,1247:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u00087\u001a\u0011\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010!\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u0014H\u0087\u0008\u001a\u0011\u0010!\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0017H\u0087\u0008\u001a\u0011\u0010$\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010$\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0007\u001a\u0011\u0010%\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010&\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010&\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0010\u0010\'\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\'\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010(\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010(\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0019\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0019\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0010\u0010+\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0007\u001a\u0011\u0010+\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010,\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010,\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010-\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010-\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010.\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010.\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010/\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010/\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u00100\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u00100\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u00101\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u00101\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0019\u00102\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u0001H\u0087\u0008\u001a\u0019\u00102\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u00103\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u00103\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u00104\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u00104\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0018\u00105\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u00106\u001a\u00020\u0001H\u0007\u001a\u0018\u00105\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00112\u0006\u00106\u001a\u00020\u0011H\u0007\u001a\u0011\u00107\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u00107\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0010\u00108\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0007\u001a\u0010\u00108\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0007\u001a\u0019\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u0001H\u0087\u0008\u001a\u0019\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0011H\u0087\u0008\u001a\u0019\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u0014H\u0087\u0008\u001a\u0019\u00109\u001a\u00020\u00172\u0006\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u0017H\u0087\u0008\u001a\u0019\u0010<\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u0001H\u0087\u0008\u001a\u0019\u0010<\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0011H\u0087\u0008\u001a\u0019\u0010<\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u0014H\u0087\u0008\u001a\u0019\u0010<\u001a\u00020\u00172\u0006\u0010:\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u0017H\u0087\u0008\u001a\u0011\u0010=\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010=\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010\u001a\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010>\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010>\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010?\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010?\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010@\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010@\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010A\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010A\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0011\u0010B\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0011\u0010B\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0010\u0010C\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0007\u001a\u0010\u0010C\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0007\u001a\u0015\u0010D\u001a\u00020\u0001*\u00020\u00012\u0006\u0010E\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010D\u001a\u00020\u0011*\u00020\u00112\u0006\u0010E\u001a\u00020\u0011H\u0087\u0008\u001a\r\u0010F\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010F\u001a\u00020\u0011*\u00020\u0011H\u0087\u0008\u001a\u0015\u0010G\u001a\u00020\u0001*\u00020\u00012\u0006\u0010H\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010G\u001a\u00020\u0011*\u00020\u00112\u0006\u0010H\u001a\u00020\u0011H\u0087\u0008\u001a\r\u0010I\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010I\u001a\u00020\u0011*\u00020\u0011H\u0087\u0008\u001a\u0015\u0010J\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010J\u001a\u00020\u0001*\u00020\u00012\u0006\u0010#\u001a\u00020\u0014H\u0087\u0008\u001a\u0015\u0010J\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0087\u0008\u001a\u0015\u0010J\u001a\u00020\u0011*\u00020\u00112\u0006\u0010#\u001a\u00020\u0014H\u0087\u0008\u001a\u000c\u0010K\u001a\u00020\u0014*\u00020\u0001H\u0007\u001a\u000c\u0010K\u001a\u00020\u0014*\u00020\u0011H\u0007\u001a\u000c\u0010L\u001a\u00020\u0017*\u00020\u0001H\u0007\u001a\u000c\u0010L\u001a\u00020\u0017*\u00020\u0011H\u0007\u001a\u0015\u0010M\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010M\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0014H\u0087\u0008\u001a\u0015\u0010M\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0087\u0008\u001a\u0015\u0010M\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0014H\u0087\u0008\"\u0016\u0010\u0000\u001a\u00020\u00018\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0005\u001a\u00020\u00018\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u001f\u0010\u000c\u001a\u00020\u0001*\u00020\u00018\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u001f\u0010\u000c\u001a\u00020\u0011*\u00020\u00118\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0013\"\u001f\u0010\u000c\u001a\u00020\u0014*\u00020\u00148\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0015\u001a\u0004\u0008\u000f\u0010\u0016\"\u001f\u0010\u000c\u001a\u00020\u0017*\u00020\u00178\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0018\u001a\u0004\u0008\u000f\u0010\u0019\"\u001f\u0010\u001a\u001a\u00020\u0001*\u00020\u00018\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u000e\u001a\u0004\u0008\u001c\u0010\u0010\"\u001f\u0010\u001a\u001a\u00020\u0011*\u00020\u00118\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u0012\u001a\u0004\u0008\u001c\u0010\u0013\"\u001e\u0010\u001a\u001a\u00020\u0014*\u00020\u00148FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u001c\u0010\u0016\"\u001e\u0010\u001a\u001a\u00020\u0014*\u00020\u00178FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001b\u0010\u0018\u001a\u0004\u0008\u001c\u0010\u001d\"\u001f\u0010\u001e\u001a\u00020\u0001*\u00020\u00018\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u000e\u001a\u0004\u0008 \u0010\u0010\"\u001f\u0010\u001e\u001a\u00020\u0011*\u00020\u00118\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0012\u001a\u0004\u0008 \u0010\u0013\u00a8\u0006N"
    }
    d2 = {
        "E",
        "",
        "E$annotations",
        "()V",
        "LN2",
        "PI",
        "PI$annotations",
        "epsilon",
        "taylor_2_bound",
        "taylor_n_bound",
        "upper_taylor_2_bound",
        "upper_taylor_n_bound",
        "absoluteValue",
        "absoluteValue$annotations",
        "(D)V",
        "getAbsoluteValue",
        "(D)D",
        "",
        "(F)V",
        "(F)F",
        "",
        "(I)V",
        "(I)I",
        "",
        "(J)V",
        "(J)J",
        "sign",
        "sign$annotations",
        "getSign",
        "(J)I",
        "ulp",
        "ulp$annotations",
        "getUlp",
        "abs",
        "x",
        "n",
        "acos",
        "acosh",
        "asin",
        "asinh",
        "atan",
        "atan2",
        "y",
        "atanh",
        "ceil",
        "cos",
        "cosh",
        "exp",
        "expm1",
        "floor",
        "hypot",
        "ln",
        "ln1p",
        "log",
        "base",
        "log10",
        "log2",
        "max",
        "a",
        "b",
        "min",
        "round",
        "sin",
        "sinh",
        "sqrt",
        "tan",
        "tanh",
        "truncate",
        "IEEErem",
        "divisor",
        "nextDown",
        "nextTowards",
        "to",
        "nextUp",
        "pow",
        "roundToInt",
        "roundToLong",
        "withSign",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "MathKt"
.end annotation


# static fields
.field public static final E:D = 2.718281828459045

.field private static final LN2:D

.field public static final PI:D = 3.141592653589793

.field private static final epsilon:D

.field private static final taylor_2_bound:D

.field private static final taylor_n_bound:D

.field private static final upper_taylor_2_bound:D

.field private static final upper_taylor_n_bound:D


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/MathKt;->LN2:D

    .line 35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/MathKt;->epsilon:D

    .line 36
    sget-wide v0, Lkotlin/math/MathKt;->epsilon:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/MathKt;->taylor_2_bound:D

    .line 37
    sget-wide v0, Lkotlin/math/MathKt;->taylor_2_bound:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/MathKt;->taylor_n_bound:D

    .line 38
    const/4 v0, 0x1

    int-to-double v0, v0

    sget-wide v2, Lkotlin/math/MathKt;->taylor_2_bound:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v0, v2

    sput-wide v2, Lkotlin/math/MathKt;->upper_taylor_2_bound:D

    .line 39
    sget-wide v2, Lkotlin/math/MathKt;->taylor_n_bound:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    sput-wide v0, Lkotlin/math/MathKt;->upper_taylor_n_bound:D

    return-void
.end method

.method public static synthetic E$annotations()V
    .registers 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    return-void
.end method

.method private static final IEEErem(DD)D
    .registers 7
    .param p0, "$receiver"    # D
    .param p2, "divisor"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 508
    .local v0, "$i$f$IEEErem":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final IEEErem(FF)F
    .registers 7
    .param p0, "$receiver"    # F
    .param p1, "divisor"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1032
    .local v0, "$i$f$IEEErem":I
    float-to-double v1, p0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static synthetic PI$annotations()V
    .registers 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    return-void
.end method

.method private static final abs(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 433
    .local v0, "$i$f$abs":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final abs(F)F
    .registers 3
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 957
    .local v0, "$i$f$abs":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1
.end method

.method private static final abs(I)I
    .registers 3
    .param p0, "n"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1153
    .local v0, "$i$f$abs":I
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method private static final abs(J)J
    .registers 5
    .param p0, "n"    # J
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1206
    .local v0, "$i$f$abs":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static synthetic absoluteValue$annotations(D)V
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic absoluteValue$annotations(F)V
    .registers 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic absoluteValue$annotations(I)V
    .registers 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic absoluteValue$annotations(J)V
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method private static final acos(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 90
    .local v0, "$i$f$acos":I
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final acos(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 671
    .local v0, "$i$f$acos":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final acosh(D)D
    .registers 10
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 212
    nop

    .line 213
    const/4 v0, 0x1

    int-to-double v0, v0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_e

    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNaN()D

    move-result-wide v0

    goto :goto_5b

    .line 215
    :cond_e
    sget-wide v2, Lkotlin/math/MathKt;->upper_taylor_2_bound:D

    cmpl-double v4, p0, v2

    if-lez v4, :cond_1c

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lkotlin/math/MathKt;->LN2:D

    add-double/2addr v0, v2

    goto :goto_5b

    .line 219
    :cond_1c
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, p0, v0

    sget-wide v4, Lkotlin/math/MathKt;->taylor_n_bound:D

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_37

    .line 220
    mul-double v2, p0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_5b

    .line 223
    :cond_37
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 225
    .local v0, "y":D
    move-wide v2, v0

    .line 226
    .local v2, "result":D
    sget-wide v4, Lkotlin/math/MathKt;->taylor_2_bound:D

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_53

    .line 228
    mul-double v4, v0, v0

    mul-double v4, v4, v0

    const/16 v6, 0xc

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 231
    :cond_53
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v4, v2

    .line 212
    .end local v0    # "y":D
    .end local v2    # "result":D
    :goto_5b
    nop

    .line 233
    return-wide v0
.end method

.method private static final acosh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 765
    .local v0, "$i$f$acosh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->acosh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final asin(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$f$asin":I
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final asin(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 660
    .local v0, "$i$f$asin":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final asinh(D)D
    .registers 9
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 174
    nop

    .line 175
    sget-wide v0, Lkotlin/math/MathKt;->taylor_n_bound:D

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_44

    .line 176
    sget-wide v0, Lkotlin/math/MathKt;->upper_taylor_n_bound:D

    const/4 v2, 0x1

    cmpl-double v3, p0, v0

    if-lez v3, :cond_33

    .line 177
    sget-wide v0, Lkotlin/math/MathKt;->upper_taylor_2_bound:D

    cmpl-double v3, p0, v0

    if-lez v3, :cond_1c

    .line 179
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lkotlin/math/MathKt;->LN2:D

    add-double/2addr v0, v2

    goto :goto_32

    .line 182
    :cond_1c
    const/4 v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, p0, v0

    int-to-double v5, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v0

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 177
    :goto_32
    goto :goto_43

    .line 185
    :cond_33
    mul-double v0, p0, p0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 176
    :goto_43
    goto :goto_69

    .line 187
    :cond_44
    sget-wide v0, Lkotlin/math/MathKt;->taylor_n_bound:D

    neg-double v0, v0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_52

    neg-double v0, p0

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->asinh(D)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_69

    .line 190
    :cond_52
    move-wide v0, p0

    .line 191
    .local v0, "result":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lkotlin/math/MathKt;->taylor_2_bound:D

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_68

    .line 193
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    const/4 v4, 0x6

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 195
    :cond_68
    nop

    .line 174
    .end local v0    # "result":D
    :goto_69
    nop

    .line 197
    return-wide v0
.end method

.method private static final asinh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 751
    .local v0, "$i$f$asinh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->asinh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final atan(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 101
    .local v0, "$i$f$atan":I
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final atan(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 682
    .local v0, "$i$f$atan":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final atan2(DD)D
    .registers 7
    .param p0, "y"    # D
    .param p2, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$atan2":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final atan2(FF)F
    .registers 7
    .param p0, "y"    # F
    .param p1, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 702
    .local v0, "$i$f$atan2":I
    float-to-double v1, p0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final atanh(D)D
    .registers 9
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-wide v2, Lkotlin/math/MathKt;->taylor_n_bound:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_21

    .line 249
    move-wide v0, p0

    .line 250
    .local v0, "result":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lkotlin/math/MathKt;->taylor_2_bound:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_20

    .line 251
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    const/4 v4, 0x3

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 253
    :cond_20
    return-wide v0

    .line 255
    .end local v0    # "result":D
    :cond_21
    const/4 v0, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const/4 v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static final atanh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 780
    .local v0, "$i$f$atanh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->atanh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final ceil(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 383
    .local v0, "$i$f$ceil":I
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final ceil(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 907
    .local v0, "$i$f$ceil":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final cos(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$cos":I
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final cos(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 640
    .local v0, "$i$f$cos":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final cosh(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 144
    .local v0, "$i$f$cosh":I
    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final cosh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 725
    .local v0, "$i$f$cosh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final exp(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$exp":I
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final exp(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 813
    .local v0, "$i$f$exp":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final expm1(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 305
    .local v0, "$i$f$expm1":I
    invoke-static {p0, p1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final expm1(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 829
    .local v0, "$i$f$expm1":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final floor(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 395
    .local v0, "$i$f$floor":I
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final floor(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 919
    .local v0, "$i$f$floor":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final getAbsoluteValue(D)D
    .registers 5
    .param p0, "$receiver"    # D

    const/4 v0, 0x0

    .line 520
    .local v0, "$i$f$getAbsoluteValue":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final getAbsoluteValue(F)F
    .registers 3
    .param p0, "$receiver"    # F

    const/4 v0, 0x0

    .line 1044
    .local v0, "$i$f$getAbsoluteValue":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1
.end method

.method private static final getAbsoluteValue(I)I
    .registers 3
    .param p0, "$receiver"    # I

    const/4 v0, 0x0

    .line 1179
    .local v0, "$i$f$getAbsoluteValue":I
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method private static final getAbsoluteValue(J)J
    .registers 5
    .param p0, "$receiver"    # J

    const/4 v0, 0x0

    .line 1232
    .local v0, "$i$f$getAbsoluteValue":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final getSign(D)D
    .registers 5
    .param p0, "$receiver"    # D

    const/4 v0, 0x0

    .line 533
    .local v0, "$i$f$getSign":I
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final getSign(F)F
    .registers 3
    .param p0, "$receiver"    # F

    const/4 v0, 0x0

    .line 1057
    .local v0, "$i$f$getSign":I
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    return v1
.end method

.method public static final getSign(I)I
    .registers 2
    .param p0, "$receiver"    # I

    .line 1188
    nop

    .line 1189
    if-gez p0, :cond_5

    const/4 v0, -0x1

    goto :goto_a

    .line 1190
    :cond_5
    if-lez p0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    .line 1191
    :cond_9
    const/4 v0, 0x0

    .line 1188
    :goto_a
    nop

    .line 1192
    return v0
.end method

.method public static final getSign(J)I
    .registers 5
    .param p0, "$receiver"    # J

    .line 1241
    nop

    .line 1242
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 v0, -0x1

    goto :goto_10

    .line 1243
    :cond_9
    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    .line 1244
    :cond_f
    const/4 v0, 0x0

    .line 1241
    :goto_10
    nop

    .line 1245
    return v0
.end method

.method private static final getUlp(D)D
    .registers 5
    .param p0, "$receiver"    # D

    const/4 v0, 0x0

    .line 562
    .local v0, "$i$f$getUlp":I
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final getUlp(F)F
    .registers 3
    .param p0, "$receiver"    # F

    const/4 v0, 0x0

    .line 1086
    .local v0, "$i$f$getUlp":I
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v1

    return v1
.end method

.method private static final hypot(DD)D
    .registers 7
    .param p0, "x"    # D
    .param p2, "y"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 267
    .local v0, "$i$f$hypot":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final hypot(FF)F
    .registers 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 791
    .local v0, "$i$f$hypot":I
    float-to-double v1, p0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final ln(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 336
    .local v0, "$i$f$ln":I
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final ln(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 860
    .local v0, "$i$f$ln":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final ln1p(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 371
    .local v0, "$i$f$ln1p":I
    invoke-static {p0, p1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final ln1p(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 895
    .local v0, "$i$f$ln1p":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final log(DD)D
    .registers 8
    .param p0, "x"    # D
    .param p2, "base"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 321
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-lez v2, :cond_17

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-nez v2, :cond_d

    goto :goto_17

    .line 322
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0

    .line 321
    :cond_17
    :goto_17
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNaN()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final log(FF)F
    .registers 6
    .param p0, "x"    # F
    .param p1, "base"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 845
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_c

    goto :goto_19

    .line 846
    :cond_c
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 845
    :cond_19
    :goto_19
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {v0}, Lkotlin/jvm/internal/FloatCompanionObject;->getNaN()F

    move-result v0

    return v0
.end method

.method private static final log10(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 345
    .local v0, "$i$f$log10":I
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final log10(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 869
    .local v0, "$i$f$log10":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final log2(D)D
    .registers 6
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 353
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lkotlin/math/MathKt;->LN2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final log2(F)F
    .registers 5
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 877
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lkotlin/math/MathKt;->LN2:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static final max(DD)D
    .registers 7
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 465
    .local v0, "$i$f$max":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final max(FF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 989
    .local v0, "$i$f$max":I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private static final max(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1167
    .local v0, "$i$f$max":I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static final max(JJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1220
    .local v0, "$i$f$max":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final min(DD)D
    .registers 7
    .param p0, "a"    # D
    .param p2, "b"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 457
    .local v0, "$i$f$min":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final min(FF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 981
    .local v0, "$i$f$min":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private static final min(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1160
    .local v0, "$i$f$min":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private static final min(JJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1213
    .local v0, "$i$f$min":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private static final nextDown(D)D
    .registers 5
    .param p0, "$receiver"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 575
    .local v0, "$i$f$nextDown":I
    sget-object v1, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v1}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNEGATIVE_INFINITY()D

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final nextDown(F)F
    .registers 4
    .param p0, "$receiver"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1099
    .local v0, "$i$f$nextDown":I
    sget-object v1, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {v1}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNEGATIVE_INFINITY()D

    move-result-wide v1

    invoke-static {p0, v1, v2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v1

    return v1
.end method

.method private static final nextTowards(DD)D
    .registers 7
    .param p0, "$receiver"    # D
    .param p2, "to"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 587
    .local v0, "$i$f$nextTowards":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final nextTowards(FF)F
    .registers 5
    .param p0, "$receiver"    # F
    .param p1, "to"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1111
    .local v0, "$i$f$nextTowards":I
    float-to-double v1, p1

    invoke-static {p0, v1, v2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v1

    return v1
.end method

.method private static final nextUp(D)D
    .registers 5
    .param p0, "$receiver"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 569
    .local v0, "$i$f$nextUp":I
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final nextUp(F)F
    .registers 3
    .param p0, "$receiver"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1093
    .local v0, "$i$f$nextUp":I
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v1

    return v1
.end method

.method private static final pow(DD)D
    .registers 7
    .param p0, "$receiver"    # D
    .param p2, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 483
    .local v0, "$i$f$pow":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final pow(DI)D
    .registers 6
    .param p0, "$receiver"    # D
    .param p2, "n"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 492
    .local v0, "$i$f$pow":I
    int-to-double v1, p2

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final pow(FF)F
    .registers 7
    .param p0, "$receiver"    # F
    .param p1, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1007
    .local v0, "$i$f$pow":I
    float-to-double v1, p0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final pow(FI)F
    .registers 7
    .param p0, "$receiver"    # F
    .param p1, "n"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1016
    .local v0, "$i$f$pow":I
    float-to-double v1, p0

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final round(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 420
    .local v0, "$i$f$round":I
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final round(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 944
    .local v0, "$i$f$round":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final roundToInt(D)I
    .registers 7
    .param p0, "$receiver"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 600
    nop

    .line 601
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_21

    .line 602
    const v0, 0x7fffffff

    int-to-double v1, v0

    const/high16 v3, -0x80000000

    cmpl-double v4, p0, v1

    if-lez v4, :cond_12

    goto :goto_1f

    .line 603
    :cond_12
    int-to-double v0, v3

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1a

    .line 600
    const/high16 v0, -0x80000000

    goto :goto_1f

    .line 604
    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 600
    :goto_1f
    nop

    .line 605
    return v0

    .line 601
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final roundToInt(F)I
    .registers 3
    .param p0, "$receiver"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1124
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final roundToLong(D)J
    .registers 4
    .param p0, "$receiver"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 618
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final roundToLong(F)J
    .registers 3
    .param p0, "$receiver"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1137
    float-to-double v0, p0

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final sign(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 446
    .local v0, "$i$f$sign":I
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final sign(F)F
    .registers 3
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 970
    .local v0, "$i$f$sign":I
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    return v1
.end method

.method public static synthetic sign$annotations(D)V
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic sign$annotations(F)V
    .registers 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic sign$annotations(I)V
    .registers 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    return-void
.end method

.method public static synthetic sign$annotations(J)V
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    return-void
.end method

.method private static final sin(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$sin":I
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final sin(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 631
    .local v0, "$i$f$sin":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final sinh(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 133
    .local v0, "$i$f$sinh":I
    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final sinh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 714
    .local v0, "$i$f$sinh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final sqrt(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 277
    .local v0, "$i$f$sqrt":I
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final sqrt(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 801
    .local v0, "$i$f$sqrt":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final tan(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$tan":I
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final tan(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 649
    .local v0, "$i$f$tan":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private static final tanh(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$f$tanh":I
    invoke-static {p0, p1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final tanh(F)F
    .registers 4
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 737
    .local v0, "$i$f$tanh":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final truncate(D)D
    .registers 5
    .param p0, "x"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 406
    nop

    .line 407
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1e

    .line 408
    :cond_e
    const/4 v0, 0x0

    int-to-double v0, v0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_19

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_20

    .line 409
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_20

    .line 407
    :cond_1e
    :goto_1e
    nop

    .line 406
    move-wide v0, p0

    .line 410
    :goto_20
    return-wide v0
.end method

.method public static final truncate(F)F
    .registers 3
    .param p0, "x"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 930
    nop

    .line 931
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_22

    .line 932
    :cond_e
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1b

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_24

    .line 933
    :cond_1b
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_24

    .line 931
    :cond_22
    :goto_22
    nop

    .line 930
    move v0, p0

    .line 934
    :goto_24
    return v0
.end method

.method public static synthetic ulp$annotations(D)V
    .registers 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method public static synthetic ulp$annotations(F)V
    .registers 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    return-void
.end method

.method private static final withSign(DD)D
    .registers 7
    .param p0, "$receiver"    # D
    .param p2, "sign"    # D
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 542
    .local v0, "$i$f$withSign":I
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final withSign(DI)D
    .registers 6
    .param p0, "$receiver"    # D
    .param p2, "sign"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 548
    .local v0, "$i$f$withSign":I
    int-to-double v1, p2

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v1

    return-wide v1
.end method

.method private static final withSign(FF)F
    .registers 4
    .param p0, "$receiver"    # F
    .param p1, "sign"    # F
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1066
    .local v0, "$i$f$withSign":I
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result v1

    return v1
.end method

.method private static final withSign(FI)F
    .registers 4
    .param p0, "$receiver"    # F
    .param p1, "sign"    # I
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    .line 1072
    .local v0, "$i$f$withSign":I
    int-to-float v1, p1

    invoke-static {p0, v1}, Ljava/lang/Math;->copySign(FF)F

    move-result v1

    return v1
.end method

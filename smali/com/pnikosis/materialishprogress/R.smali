###### Class com.pnikosis.materialishprogress.R (com.pnikosis.materialishprogress.R)
.class public final Lcom/pnikosis/materialishprogress/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/R$styleable;,
        Lcom/pnikosis/materialishprogress/R$string;,
        Lcom/pnikosis/materialishprogress/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.pnikosis.materialishprogress.R.attr (com.pnikosis.materialishprogress.R$attr)
.class public final Lcom/pnikosis/materialishprogress/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final matProg_barColor:I = 0x7f04017e

.field public static final matProg_barSpinCycleTime:I = 0x7f04017f

.field public static final matProg_barWidth:I = 0x7f040180

.field public static final matProg_circleRadius:I = 0x7f040181

.field public static final matProg_fillRadius:I = 0x7f040182

.field public static final matProg_linearProgress:I = 0x7f040183

.field public static final matProg_progressIndeterminate:I = 0x7f040184

.field public static final matProg_rimColor:I = 0x7f040185

.field public static final matProg_rimWidth:I = 0x7f040186

.field public static final matProg_spinSpeed:I = 0x7f040187


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.pnikosis.materialishprogress.R.string (com.pnikosis.materialishprogress.R$string)
.class public final Lcom/pnikosis/materialishprogress/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final app_name:I = 0x7f10002a

.field public static final default_progressbar:I = 0x7f100056


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.pnikosis.materialishprogress.R.styleable (com.pnikosis.materialishprogress.R$styleable)
.class public final Lcom/pnikosis/materialishprogress/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ProgressWheel:[I

.field public static final ProgressWheel_matProg_barColor:I = 0x0

.field public static final ProgressWheel_matProg_barSpinCycleTime:I = 0x1

.field public static final ProgressWheel_matProg_barWidth:I = 0x2

.field public static final ProgressWheel_matProg_circleRadius:I = 0x3

.field public static final ProgressWheel_matProg_fillRadius:I = 0x4

.field public static final ProgressWheel_matProg_linearProgress:I = 0x5

.field public static final ProgressWheel_matProg_progressIndeterminate:I = 0x6

.field public static final ProgressWheel_matProg_rimColor:I = 0x7

.field public static final ProgressWheel_matProg_rimWidth:I = 0x8

.field public static final ProgressWheel_matProg_spinSpeed:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel:[I

    return-void

    :array_a
    .array-data 4
        0x7f04017e
        0x7f04017f
        0x7f040180
        0x7f040181
        0x7f040182
        0x7f040183
        0x7f040184
        0x7f040185
        0x7f040186
        0x7f040187
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.wang.avi.R (com.wang.avi.R)
.class public final Lcom/wang/avi/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wang/avi/R$styleable;,
        Lcom/wang/avi/R$style;,
        Lcom/wang/avi/R$string;,
        Lcom/wang/avi/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.wang.avi.R.attr (com.wang.avi.R$attr)
.class public final Lcom/wang/avi/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final indicatorColor:I = 0x7f04011c

.field public static final indicatorName:I = 0x7f04011d

.field public static final maxHeight:I = 0x7f04018c

.field public static final maxWidth:I = 0x7f04018e

.field public static final minHeight:I = 0x7f0401ae

.field public static final minWidth:I = 0x7f0401af


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.wang.avi.R.string (com.wang.avi.R$string)
.class public final Lcom/wang/avi/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final app_name:I = 0x7f10002a


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.wang.avi.R.style (com.wang.avi.R$style)
.class public final Lcom/wang/avi/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final AVLoadingIndicatorView:I = 0x7f110000

.field public static final AVLoadingIndicatorView_Large:I = 0x7f110001

.field public static final AVLoadingIndicatorView_Small:I = 0x7f110002


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.wang.avi.R.styleable (com.wang.avi.R$styleable)
.class public final Lcom/wang/avi/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wang/avi/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AVLoadingIndicatorView:[I

.field public static final AVLoadingIndicatorView_indicatorColor:I = 0x0

.field public static final AVLoadingIndicatorView_indicatorName:I = 0x1

.field public static final AVLoadingIndicatorView_maxHeight:I = 0x2

.field public static final AVLoadingIndicatorView_maxWidth:I = 0x3

.field public static final AVLoadingIndicatorView_minHeight:I = 0x4

.field public static final AVLoadingIndicatorView_minWidth:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/wang/avi/R$styleable;->AVLoadingIndicatorView:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f04011c
        0x7f04011d
        0x7f04018c
        0x7f04018e
        0x7f0401ae
        0x7f0401af
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

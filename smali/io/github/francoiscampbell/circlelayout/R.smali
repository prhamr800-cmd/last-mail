###### Class io.github.francoiscampbell.circlelayout.R (io.github.francoiscampbell.circlelayout.R)
.class public final Lio/github/francoiscampbell/circlelayout/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/francoiscampbell/circlelayout/R$styleable;,
        Lio/github/francoiscampbell/circlelayout/R$id;,
        Lio/github/francoiscampbell/circlelayout/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.github.francoiscampbell.circlelayout.R.attr (io.github.francoiscampbell.circlelayout.R$attr)
.class public final Lio/github/francoiscampbell/circlelayout/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/francoiscampbell/circlelayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final cl_angle:I = 0x7f040088

.field public static final cl_angleOffset:I = 0x7f040089

.field public static final cl_centerView:I = 0x7f04008a

.field public static final cl_direction:I = 0x7f04008b

.field public static final cl_radius:I = 0x7f04008c


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.github.francoiscampbell.circlelayout.R.id (io.github.francoiscampbell.circlelayout.R$id)
.class public final Lio/github/francoiscampbell/circlelayout/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/francoiscampbell/circlelayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final clockwise:I = 0x7f09006d

.field public static final counterClockwise:I = 0x7f090079

.field public static final fitsLargestChild:I = 0x7f0900a3

.field public static final fitsSmallestChild:I = 0x7f0900a4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.github.francoiscampbell.circlelayout.R.styleable (io.github.francoiscampbell.circlelayout.R$styleable)
.class public final Lio/github/francoiscampbell/circlelayout/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/francoiscampbell/circlelayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleLayout:[I

.field public static final CircleLayout_cl_angle:I = 0x0

.field public static final CircleLayout_cl_angleOffset:I = 0x1

.field public static final CircleLayout_cl_centerView:I = 0x2

.field public static final CircleLayout_cl_direction:I = 0x3

.field public static final CircleLayout_cl_radius:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f040088
        0x7f040089
        0x7f04008a
        0x7f04008b
        0x7f04008c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

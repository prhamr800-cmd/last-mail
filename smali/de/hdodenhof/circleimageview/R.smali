###### Class de.hdodenhof.circleimageview.R (de.hdodenhof.circleimageview.R)
.class public final Lde/hdodenhof/circleimageview/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/hdodenhof/circleimageview/R$styleable;,
        Lde/hdodenhof/circleimageview/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class de.hdodenhof.circleimageview.R.attr (de.hdodenhof.circleimageview.R$attr)
.class public final Lde/hdodenhof/circleimageview/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final border_color:I = 0x7f040042

.field public static final border_overlay:I = 0x7f040043

.field public static final border_width:I = 0x7f040044


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class de.hdodenhof.circleimageview.R.styleable (de.hdodenhof.circleimageview.R$styleable)
.class public final Lde/hdodenhof/circleimageview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final CircleImageView_border_color:I = 0x0

.field public static final CircleImageView_border_overlay:I = 0x1

.field public static final CircleImageView_border_width:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f040042
        0x7f040043
        0x7f040044
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

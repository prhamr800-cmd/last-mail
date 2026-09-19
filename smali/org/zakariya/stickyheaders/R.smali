###### Class org.zakariya.stickyheaders.R (org.zakariya.stickyheaders.R)
.class public final Lorg/zakariya/stickyheaders/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zakariya/stickyheaders/R$styleable;,
        Lorg/zakariya/stickyheaders/R$string;,
        Lorg/zakariya/stickyheaders/R$id;,
        Lorg/zakariya/stickyheaders/R$dimen;,
        Lorg/zakariya/stickyheaders/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.R.attr (org.zakariya.stickyheaders.R$attr)
.class public final Lorg/zakariya/stickyheaders/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final layoutManager:I = 0x7f040135

.field public static final reverseLayout:I = 0x7f0401de

.field public static final spanCount:I = 0x7f0401f5

.field public static final stackFromEnd:I = 0x7f0401fb


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.R.dimen (org.zakariya.stickyheaders.R$dimen)
.class public final Lorg/zakariya/stickyheaders/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final item_touch_helper_max_drag_scroll_per_frame:I = 0x7f0700a7

.field public static final item_touch_helper_swipe_escape_max_velocity:I = 0x7f0700a8

.field public static final item_touch_helper_swipe_escape_velocity:I = 0x7f0700a9


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.R.id (org.zakariya.stickyheaders.R$id)
.class public final Lorg/zakariya/stickyheaders/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final item_touch_helper_previous_elevation:I = 0x7f0900f2

.field public static final sectioning_adapter_tag_key_view_viewholder:I = 0x7f090186


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.R.string (org.zakariya.stickyheaders.R$string)
.class public final Lorg/zakariya/stickyheaders/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/R;
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.R.styleable (org.zakariya.stickyheaders.R$styleable)
.class public final Lorg/zakariya/stickyheaders/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/zakariya/stickyheaders/R$styleable;->RecyclerView:[I

    return-void

    :array_a
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0400ea
        0x7f0400eb
        0x7f0400ec
        0x7f0400ed
        0x7f0400ee
        0x7f040135
        0x7f0401de
        0x7f0401f5
        0x7f0401fb
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

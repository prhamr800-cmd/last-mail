###### Class android.support.design.circularreveal.CircularRevealWidget (android.support.design.circularreveal.CircularRevealWidget)
.class public interface abstract Landroid/support/design/circularreveal/CircularRevealWidget;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;,
        Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;,
        Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;,
        Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    }
.end annotation


# virtual methods
.method public abstract buildCircularRevealCache()V
.end method

.method public abstract destroyCircularRevealCache()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .param p1    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class android.support.design.circularreveal.CircularRevealWidget.AnonymousClass1 (android.support.design.circularreveal.CircularRevealWidget$1)
.class synthetic Landroid/support/design/circularreveal/CircularRevealWidget$1;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.design.circularreveal.CircularRevealWidget.CircularRevealEvaluator (android.support.design.circularreveal.CircularRevealWidget$CircularRevealEvaluator)
.class public Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 208
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;

    invoke-direct {v0}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;-><init>()V

    sput-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget$1;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .param p3, "endValue"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 213
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, p2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, p3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 214
    invoke-static {v1, v2, p1}, Landroid/support/design/widget/MathUtils;->lerp(FFF)F

    move-result v1

    iget v2, p2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v3, p3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 215
    invoke-static {v2, v3, p1}, Landroid/support/design/widget/MathUtils;->lerp(FFF)F

    move-result v2

    iget v3, p2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget v4, p3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 216
    invoke-static {v3, v4, p1}, Landroid/support/design/widget/MathUtils;->lerp(FFF)F

    move-result v3

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 217
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 206
    check-cast p2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    check-cast p3, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->evaluate(FLandroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method

###### Class android.support.design.circularreveal.CircularRevealWidget.CircularRevealProperty (android.support.design.circularreveal.CircularRevealWidget$CircularRevealProperty)
.class public Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/design/circularreveal/CircularRevealWidget;",
        "Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/design/circularreveal/CircularRevealWidget;",
            "Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 181
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public get(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 3
    .param p1, "object"    # Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 190
    invoke-interface {p1}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 179
    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->get(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3
    .param p1, "object"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p2, "value"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 195
    invoke-interface {p1, p2}, Landroid/support/design/circularreveal/CircularRevealWidget;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 196
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 179
    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    check-cast p2, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->set(Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method

###### Class android.support.design.circularreveal.CircularRevealWidget.CircularRevealScrimColorProperty (android.support.design.circularreveal.CircularRevealWidget$CircularRevealScrimColorProperty)
.class public Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/design/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/design/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 227
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 231
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    return-void
.end method


# virtual methods
.method public get(Landroid/support/design/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 236
    invoke-interface {p1}, Landroid/support/design/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 225
    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Landroid/support/design/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "object"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 241
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 242
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 225
    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Landroid/support/design/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    return-void
.end method

###### Class android.support.design.circularreveal.CircularRevealWidget.RevealInfo (android.support.design.circularreveal.CircularRevealWidget$RevealInfo)
.class public Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# static fields
.field public static final INVALID_RADIUS:F = 3.4028235E38f


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 148
    iput p2, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 149
    iput p3, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/circularreveal/CircularRevealWidget$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/design/circularreveal/CircularRevealWidget$1;

    .line 132
    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 5
    .param p1, "other"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 153
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v2, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    .line 154
    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .registers 3

    .line 171
    iget v0, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public set(FFF)V
    .registers 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 157
    iput p1, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 158
    iput p2, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 159
    iput p3, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 160
    return-void
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 5
    .param p1, "other"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    .line 163
    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v2, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 164
    return-void
.end method

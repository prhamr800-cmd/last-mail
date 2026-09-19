###### Class com.digikala.dms.view.custom.CustomScrollView (com.digikala.dms.view.custom.CustomScrollView)
.class public Lcom/digikala/dms/view/custom/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# instance fields
.field private enableScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/CustomScrollView;->enableScrolling:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/CustomScrollView;->enableScrolling:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/CustomScrollView;->enableScrolling:Z

    .line 25
    return-void
.end method


# virtual methods
.method public isEnableScrolling()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/digikala/dms/view/custom/CustomScrollView;->enableScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 38
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/CustomScrollView;->isEnableScrolling()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p0}, Lcom/digikala/dms/view/custom/CustomScrollView;->isEnableScrolling()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public setEnableScrolling(Z)V
    .registers 2
    .param p1, "enableScrolling"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/digikala/dms/view/custom/CustomScrollView;->enableScrolling:Z

    .line 21
    return-void
.end method

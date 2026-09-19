###### Class com.digikala.dms.view.custom.TouchableWrapper (com.digikala.dms.view.custom.TouchableWrapper)
.class public Lcom/digikala/dms/view/custom/TouchableWrapper;
.super Landroid/widget/FrameLayout;
.source "TouchableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;
    }
.end annotation


# instance fields
.field private onTouchCallBack:Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    goto :goto_16

    .line 31
    :pswitch_8
    iget-object v0, p0, Lcom/digikala/dms/view/custom/TouchableWrapper;->onTouchCallBack:Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;->onTouch(Z)V

    goto :goto_16

    .line 27
    :pswitch_f
    iget-object v0, p0, Lcom/digikala/dms/view/custom/TouchableWrapper;->onTouchCallBack:Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;->onTouch(Z)V

    .line 28
    nop

    .line 34
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method public setOnTouchCallBack(Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;)V
    .registers 2
    .param p1, "onTouchCallBack"    # Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;

    .line 40
    iput-object p1, p0, Lcom/digikala/dms/view/custom/TouchableWrapper;->onTouchCallBack:Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;

    .line 41
    return-void
.end method

###### Class com.digikala.dms.view.custom.TouchableWrapper.OnTouchCallBack (com.digikala.dms.view.custom.TouchableWrapper$OnTouchCallBack)
.class public interface abstract Lcom/digikala/dms/view/custom/TouchableWrapper$OnTouchCallBack;
.super Ljava/lang/Object;
.source "TouchableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/custom/TouchableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTouchCallBack"
.end annotation


# virtual methods
.method public abstract onTouch(Z)V
.end method

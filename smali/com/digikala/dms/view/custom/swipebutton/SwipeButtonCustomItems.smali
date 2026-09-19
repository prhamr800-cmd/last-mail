###### Class com.digikala.dms.view.custom.swipebutton.SwipeButtonCustomItems (com.digikala.dms.view.custom.swipebutton.SwipeButtonCustomItems)
.class public abstract Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
.super Ljava/lang/Object;
.source "SwipeButtonCustomItems.java"


# instance fields
.field public actionConfirmDistanceFraction:D

.field public actionConfirmText:Ljava/lang/String;

.field public buttonPressText:Ljava/lang/String;

.field public gradientColor1:I

.field public gradientColor2:I

.field public gradientColor2Width:I

.field public gradientColor3:I

.field public postConfirmationColor:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, -0xcccccd

    iput v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor1:I

    .line 6
    const v0, -0x99999a

    iput v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2:I

    .line 7
    const/16 v0, 0x32

    iput v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2Width:I

    .line 8
    const v0, -0x777778

    iput v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor3:I

    .line 9
    iput v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->postConfirmationColor:I

    .line 10
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmDistanceFraction:D

    .line 11
    const-string v0, ">>   SWIPE TO CONFIRM   >> "

    iput-object v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->buttonPressText:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionConfirmDistanceFraction()D
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmDistanceFraction:D

    return-wide v0
.end method

.method public getActionConfirmText()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonPressText()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->buttonPressText:Ljava/lang/String;

    return-object v0
.end method

.method public getGradientColor1()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor1:I

    return v0
.end method

.method public getGradientColor2()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2:I

    return v0
.end method

.method public getGradientColor2Width()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2Width:I

    return v0
.end method

.method public getGradientColor3()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor3:I

    return v0
.end method

.method public getPostConfirmationColor()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->postConfirmationColor:I

    return v0
.end method

.method public onButtonPress()V
    .registers 1

    .line 90
    return-void
.end method

.method public onSwipeCancel()V
    .registers 1

    .line 94
    return-void
.end method

.method public abstract onSwipeConfirm()V
.end method

.method public setActionConfirmDistanceFraction(D)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 3
    .param p1, "actionConfirmDistanceFraction"    # D

    .line 56
    iput-wide p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmDistanceFraction:D

    .line 57
    return-object p0
.end method

.method public setActionConfirmText(Ljava/lang/String;)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "actionConfirmText"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->actionConfirmText:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setButtonPressText(Ljava/lang/String;)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "buttonPressText"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->buttonPressText:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setGradientColor1(I)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "gradientColor1"    # I

    .line 20
    iput p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor1:I

    .line 21
    return-object p0
.end method

.method public setGradientColor2(I)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "gradientColor2"    # I

    .line 29
    iput p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2:I

    .line 30
    return-object p0
.end method

.method public setGradientColor2Width(I)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "gradientColor2Width"    # I

    .line 38
    iput p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor2Width:I

    .line 39
    return-object p0
.end method

.method public setGradientColor3(I)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "gradientColor3"    # I

    .line 47
    iput p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->gradientColor3:I

    .line 48
    return-object p0
.end method

.method public setPostConfirmationColor(I)Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;
    .registers 2
    .param p1, "postConfirmationColor"    # I

    .line 83
    iput p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->postConfirmationColor:I

    .line 84
    return-object p0
.end method

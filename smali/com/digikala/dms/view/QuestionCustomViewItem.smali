###### Class com.digikala.dms.view.QuestionCustomViewItem (com.digikala.dms.view.QuestionCustomViewItem)
.class public Lcom/digikala/dms/view/QuestionCustomViewItem;
.super Ljava/lang/Object;
.source "QuestionCustomViewItem.java"


# instance fields
.field private circle:Landroid/view/View;

.field private id:I

.field private imageView:Landroid/widget/ImageView;

.field private layout:Landroid/widget/RelativeLayout;

.field private selected:Z

.field private textView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private view:Landroid/view/View;

.field private viewIcon:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCircle()Landroid/view/View;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->circle:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->id:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTextView()Lcom/digikala/dms/view/custom/XeiTextView;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->textView:Lcom/digikala/dms/view/custom/XeiTextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewIcon()Landroid/view/View;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->viewIcon:Landroid/view/View;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->selected:Z

    return v0
.end method

.method public setCircle(Landroid/view/View;)V
    .registers 2
    .param p1, "circle"    # Landroid/view/View;

    .line 61
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->circle:Landroid/view/View;

    .line 62
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 77
    iput p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->id:I

    .line 78
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 53
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->imageView:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method public setLayout(Landroid/widget/RelativeLayout;)V
    .registers 2
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .line 85
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->layout:Landroid/widget/RelativeLayout;

    .line 86
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->selected:Z

    .line 70
    return-void
.end method

.method public setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V
    .registers 2
    .param p1, "textView"    # Lcom/digikala/dms/view/custom/XeiTextView;

    .line 37
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->textView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 38
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 29
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->view:Landroid/view/View;

    .line 30
    return-void
.end method

.method public setViewIcon(Landroid/view/View;)V
    .registers 2
    .param p1, "viewIcon"    # Landroid/view/View;

    .line 45
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewItem;->viewIcon:Landroid/view/View;

    .line 46
    return-void
.end method

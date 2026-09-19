###### Class com.digikala.dms.view.RatingViewItem (com.digikala.dms.view.RatingViewItem)
.class public Lcom/digikala/dms/view/RatingViewItem;
.super Ljava/lang/Object;
.source "RatingViewItem.java"


# instance fields
.field private id:I

.field private selected:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/digikala/dms/view/RatingViewItem;->id:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/digikala/dms/view/RatingViewItem;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/digikala/dms/view/RatingViewItem;->selected:Z

    return v0
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 25
    iput p1, p0, Lcom/digikala/dms/view/RatingViewItem;->id:I

    .line 26
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/digikala/dms/view/RatingViewItem;->selected:Z

    .line 42
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 33
    iput-object p1, p0, Lcom/digikala/dms/view/RatingViewItem;->textView:Landroid/widget/TextView;

    .line 34
    return-void
.end method

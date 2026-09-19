###### Class com.digikala.dms.view.QuestionCustomViewHolder (com.digikala.dms.view.QuestionCustomViewHolder)
.class public Lcom/digikala/dms/view/QuestionCustomViewHolder;
.super Ljava/lang/Object;
.source "QuestionCustomViewHolder.java"


# instance fields
.field private context:Landroid/app/Activity;

.field private item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/view/QuestionCustomViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItem:Lcom/digikala/dms/view/QuestionCustomViewItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->context:Landroid/app/Activity;

    .line 41
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 42
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 43
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 44
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 45
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 46
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 47
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 48
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 49
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 50
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 51
    new-instance v0, Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-direct {v0}, Lcom/digikala/dms/view/QuestionCustomViewItem;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 54
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 55
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900f7

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e4

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901b6

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 58
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ef

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900d8

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 60
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f09005e

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 63
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900f8

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e5

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901b7

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 66
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900d9

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 68
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f09005f

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 71
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900fa

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 72
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e7

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901b9

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f2

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900db

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 76
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090061

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 79
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900fb

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 80
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e8

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ba

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 82
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f3

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900dc

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 84
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090062

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 87
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900fc

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 88
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e9

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901bb

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 90
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f4

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900dd

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090063

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 95
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900fd

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 96
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ea

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901bc

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 98
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f5

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900de

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 100
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090064

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 103
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900fe

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 104
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901eb

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901bd

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 106
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f6

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900df

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 108
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090065

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 111
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900ff

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 112
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ec

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901be

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 114
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f7

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900e0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 116
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090066

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 119
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090100

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 120
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ed

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901bf

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 122
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f8

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900e1

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 124
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090067

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 127
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090101

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 128
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901ee

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901c0

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 130
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f9

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900e2

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 132
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090068

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setId(I)V

    .line 135
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900f9

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setLayout(Landroid/widget/RelativeLayout;)V

    .line 136
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901e6

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901b8

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setTextView(Lcom/digikala/dms/view/custom/XeiTextView;)V

    .line 138
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0901f1

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setViewIcon(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f0900da

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setImageView(Landroid/widget/ImageView;)V

    .line 140
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    const v1, 0x7f090060

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/QuestionCustomViewItem;->setCircle(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item0:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item1:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item2:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item3:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item4:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item5:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item6:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item7:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item8:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item9:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->item10:Lcom/digikala/dms/view/QuestionCustomViewItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/view/QuestionCustomViewItem;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()Lcom/digikala/dms/view/QuestionCustomViewItem;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->selectedItem:Lcom/digikala/dms/view/QuestionCustomViewItem;

    return-object v0
.end method

.method public setSelectedItem(Lcom/digikala/dms/view/QuestionCustomViewItem;)V
    .registers 2
    .param p1, "selectedItem"    # Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 164
    iput-object p1, p0, Lcom/digikala/dms/view/QuestionCustomViewHolder;->selectedItem:Lcom/digikala/dms/view/QuestionCustomViewItem;

    .line 165
    return-void
.end method

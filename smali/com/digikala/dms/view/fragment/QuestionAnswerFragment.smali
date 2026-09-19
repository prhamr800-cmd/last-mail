###### Class com.digikala.dms.view.fragment.QuestionAnswerFragment (com.digikala.dms.view.fragment.QuestionAnswerFragment)
.class public Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;
.super Landroid/support/v4/app/Fragment;
.source "QuestionAnswerFragment.java"


# static fields
.field public static final ARG_COMPLETE_FLAG:Ljava/lang/String; = "complete"

.field public static final ARG_PARTIAL_FLAG:Ljava/lang/String; = "partial"

.field private static final TAG_REQUEST:Ljava/lang/String;


# instance fields
.field private flag:Ljava/lang/String;

.field private radioOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rb1:Landroid/widget/RadioButton;

.field rb2:Landroid/widget/RadioButton;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field rg:Landroid/widget/RadioGroup;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->radioOptions:Ljava/util/ArrayList;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;
    .registers 4
    .param p0, "flag"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;-><init>()V

    .line 46
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "complete"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method

.method private setupViews()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 80
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-direct {v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public addRadioButtons(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p2, "radio":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "row":I
    :goto_2
    const/4 v2, 0x1

    if-ge v1, v2, :cond_a0

    .line 105
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    const v3, 0x7f090108

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 106
    .local v2, "llMain":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    const v4, 0x7f0901d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 107
    .local v3, "textView":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 112
    .local v5, "radioGroup":Landroid/widget/RadioGroup;
    iget-object v6, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    const v7, 0x7f09014c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_74

    .line 118
    new-instance v7, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 119
    .local v7, "rdbtn":Landroid/widget/RadioButton;
    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setId(I)V

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Radio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 117
    .end local v7    # "rdbtn":Landroid/widget/RadioButton;
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 123
    .end local v6    # "i":I
    :cond_74
    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_83

    .line 124
    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    :cond_83
    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_92

    .line 127
    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    :cond_92
    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    .line 130
    .local v6, "radioButtonID":I
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    .end local v2    # "llMain":Landroid/widget/LinearLayout;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "radioGroup":Landroid/widget/RadioGroup;
    .end local v6    # "radioButtonID":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 134
    .end local v1    # "row":I
    :cond_a0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 58
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->flag:Ljava/lang/String;

    .line 60
    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 67
    const v0, 0x7f0c004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->radioOptions:Ljava/util/ArrayList;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->radioOptions:Ljava/util/ArrayList;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->radioOptions:Ljava/util/ArrayList;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v0, "title "

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->radioOptions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->addRadioButtons(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->setupViews()V

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/QuestionAnswerFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .registers 1

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 100
    return-void
.end method

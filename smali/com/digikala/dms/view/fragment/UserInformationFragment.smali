###### Class com.digikala.dms.view.fragment.UserInformationFragment (com.digikala.dms.view.fragment.UserInformationFragment)
.class public Lcom/digikala/dms/view/fragment/UserInformationFragment;
.super Landroid/support/v4/app/Fragment;
.source "UserInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;
    }
.end annotation


# static fields
.field public static final ARG_COMPLETE_FLAG:Ljava/lang/String; = "complete"

.field public static final ARG_PARTIAL_FLAG:Ljava/lang/String; = "partial"

.field private static final ARG_PAYMENT_METHOD:Ljava/lang/String; = "payment_method"


# instance fields
.field private PaymentMethod:Ljava/lang/String;

.field private adapter:Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

.field private cardSpinner:Landroid/widget/Spinner;

.field private cardTypeIdSelected:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private mListener:Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->cardTypeIdSelected:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/fragment/UserInformationFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->cardTypeIdSelected:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->adapter:Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->flag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->PaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->mListener:Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    return-object v0
.end method

.method private getCardTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 120
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/digikala/dms/view/fragment/UserInformationFragment;
    .registers 5
    .param p0, "flag"    # Ljava/lang/String;
    .param p1, "PaymentMethod"    # Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;-><init>()V

    .line 51
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/UserInformationFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "complete"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "payment_method"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 126
    instance-of v0, p1, Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    if-eqz v0, :cond_d

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->mListener:Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    .line 132
    return-void

    .line 129
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnStateButtonClickListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getCardTypes()Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 64
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->flag:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payment_method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->PaymentMethod:Ljava/lang/String;

    .line 67
    :cond_24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    const v0, 0x7f0c0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .registers 2

    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->mListener:Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    .line 138
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->cardSpinner:Landroid/widget/Spinner;

    .line 80
    new-instance v0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getCardTypes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->adapter:Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

    .line 81
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->cardSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->adapter:Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment;->cardSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/digikala/dms/view/fragment/UserInformationFragment$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment$1;-><init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiEditText;

    .line 96
    .local v0, "cardNumber":Lcom/digikala/dms/view/custom/XeiEditText;
    const v1, 0x7f09006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiEditText;

    .line 98
    .local v1, "comment":Lcom/digikala/dms/view/custom/XeiEditText;
    const v2, 0x7f090043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 99
    .local v2, "backButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/digikala/dms/view/fragment/UserInformationFragment$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/UserInformationFragment$2;-><init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v3, 0x7f090038

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiButton;

    .line 108
    .local v3, "applyButton":Lcom/digikala/dms/view/custom/XeiButton;
    new-instance v4, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;-><init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;Lcom/digikala/dms/view/custom/XeiEditText;Lcom/digikala/dms/view/custom/XeiEditText;)V

    invoke-virtual {v3, v4}, Lcom/digikala/dms/view/custom/XeiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

###### Class com.digikala.dms.view.fragment.UserInformationFragment.AnonymousClass1 (com.digikala.dms.view.fragment.UserInformationFragment$1)
.class Lcom/digikala/dms/view/fragment/UserInformationFragment$1;
.super Ljava/lang/Object;
.source "UserInformationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/UserInformationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 83
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$1;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 86
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$1;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$1;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$100(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$002(Lcom/digikala/dms/view/fragment/UserInformationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 91
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.digikala.dms.view.fragment.UserInformationFragment.AnonymousClass2 (com.digikala.dms.view.fragment.UserInformationFragment$2)
.class Lcom/digikala/dms/view/fragment/UserInformationFragment$2;
.super Ljava/lang/Object;
.source "UserInformationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/UserInformationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 99
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/activity/ShipmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/ShipmentActivity;->setToZero(Z)V

    .line 103
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$2;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 104
    return-void
.end method

###### Class com.digikala.dms.view.fragment.UserInformationFragment.AnonymousClass3 (com.digikala.dms.view.fragment.UserInformationFragment$3)
.class Lcom/digikala/dms/view/fragment/UserInformationFragment$3;
.super Ljava/lang/Object;
.source "UserInformationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/UserInformationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

.field final synthetic val$cardNumber:Lcom/digikala/dms/view/custom/XeiEditText;

.field final synthetic val$comment:Lcom/digikala/dms/view/custom/XeiEditText;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/UserInformationFragment;Lcom/digikala/dms/view/custom/XeiEditText;Lcom/digikala/dms/view/custom/XeiEditText;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/UserInformationFragment;

    .line 108
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->val$cardNumber:Lcom/digikala/dms/view/custom/XeiEditText;

    iput-object p3, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->val$comment:Lcom/digikala/dms/view/custom/XeiEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->hideKeyboard(Landroid/app/Activity;)V

    .line 112
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$400(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$200(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$000(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->val$cardNumber:Lcom/digikala/dms/view/custom/XeiEditText;

    invoke-virtual {v0}, Lcom/digikala/dms/view/custom/XeiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->val$comment:Lcom/digikala/dms/view/custom/XeiEditText;

    invoke-virtual {v0}, Lcom/digikala/dms/view/custom/XeiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/UserInformationFragment$3;->this$0:Lcom/digikala/dms/view/fragment/UserInformationFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/UserInformationFragment;->access$300(Lcom/digikala/dms/view/fragment/UserInformationFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;->onApplyButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

###### Class com.digikala.dms.view.fragment.UserInformationFragment.OnApplyButtonUserInformationClickListener (com.digikala.dms.view.fragment.UserInformationFragment$OnApplyButtonUserInformationClickListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/UserInformationFragment$OnApplyButtonUserInformationClickListener;
.super Ljava/lang/Object;
.source "UserInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/UserInformationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnApplyButtonUserInformationClickListener"
.end annotation


# virtual methods
.method public abstract onApplyButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

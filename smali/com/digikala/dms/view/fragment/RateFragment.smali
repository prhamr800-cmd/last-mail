###### Class com.digikala.dms.view.fragment.RateFragment (com.digikala.dms.view.fragment.RateFragment)
.class public Lcom/digikala/dms/view/fragment/RateFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RateFragment.java"


# static fields
.field private static final EXTRA_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final TAG:Ljava/lang/String; = "RateFragment"

.field private static df2:Ljava/text/DecimalFormat;

.field private static userIdString:Ljava/lang/String;


# instance fields
.field delta:Landroid/widget/TextView;

.field deltaIcon:Landroid/widget/ImageView;

.field private rateValue:Ljava/lang/String;

.field ratingBar:Landroid/widget/RatingBar;

.field ratio:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/view/fragment/RateFragment;->df2:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/DecimalFormat;
    .registers 1

    .line 27
    sget-object v0, Lcom/digikala/dms/view/fragment/RateFragment;->df2:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/view/fragment/RateFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/RateFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RateFragment;->rateValue:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/digikala/dms/view/fragment/RateFragment;
    .registers 5
    .param p0, "userId"    # Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-object p0, Lcom/digikala/dms/view/fragment/RateFragment;->userIdString:Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/digikala/dms/view/fragment/RateFragment;

    invoke-direct {v1}, Lcom/digikala/dms/view/fragment/RateFragment;-><init>()V

    .line 43
    .local v1, "fragment":Lcom/digikala/dms/view/fragment/RateFragment;
    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/fragment/RateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    const-string v2, "RateFragment"

    const-string v3, "newInstance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 86
    const-string v0, "RateFragment"

    const-string v1, "Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/RateFragment;->userIdString:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/digikala/dms/view/fragment/RateFragment;->userIdString:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 89
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RateFragment;->dismiss()V

    .line 92
    :cond_1e
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/RateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/RateFragment;->ratingBar:Landroid/widget/RatingBar;

    .line 96
    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/RateFragment;->deltaIcon:Landroid/widget/ImageView;

    .line 97
    const v2, 0x7f0901dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/RateFragment;->delta:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0901de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/RateFragment;->ratio:Landroid/widget/TextView;

    .line 100
    const-string v2, ""

    new-instance v3, Lcom/digikala/dms/view/fragment/RateFragment$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/RateFragment$1;-><init>(Lcom/digikala/dms/view/fragment/RateFragment;)V

    new-instance v4, Lcom/digikala/dms/view/fragment/RateFragment$2;

    invoke-direct {v4, p0}, Lcom/digikala/dms/view/fragment/RateFragment$2;-><init>(Lcom/digikala/dms/view/fragment/RateFragment;)V

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/webservice/WebApi;->getRateRequest(Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 156
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/RateFragment;->ratingBar:Landroid/widget/RatingBar;

    new-instance v3, Lcom/digikala/dms/view/fragment/RateFragment$3;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/RateFragment$3;-><init>(Lcom/digikala/dms/view/fragment/RateFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onPause()V
    .registers 1

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 74
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 63
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 64
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 68
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

###### Class com.digikala.dms.view.fragment.RateFragment.AnonymousClass1 (com.digikala.dms.view.fragment.RateFragment$1)
.class Lcom/digikala/dms/view/fragment/RateFragment$1;
.super Ljava/lang/Object;
.source "RateFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RateFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Lcom/digikala/dms/model/domain/Rate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/RateFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RateFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/RateFragment;

    .line 100
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 142
    const-string v0, "Rate"

    const-string v1, "errorMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/domain/Rate;)V
    .registers 9
    .param p1, "response"    # Lcom/digikala/dms/model/domain/Rate;

    .line 103
    if-eqz p1, :cond_b3

    .line 104
    if-eqz p1, :cond_10

    .line 114
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 116
    :cond_10
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getDelta()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_23

    .line 117
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->deltaIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_23
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getDelta()D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_36

    .line 120
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->deltaIcon:Landroid/widget/ImageView;

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_40

    .line 122
    :cond_36
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->deltaIcon:Landroid/widget/ImageView;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_40
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->delta:Landroid/widget/TextView;

    invoke-static {}, Lcom/digikala/dms/view/fragment/RateFragment;->access$000()Ljava/text/DecimalFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getDelta()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_6b

    .line 128
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->ratio:Landroid/widget/TextView;

    const-string/jumbo v1, "\u0636\u0639\u06cc\u0641"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_6b
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v0

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_87

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_87

    .line 131
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->ratio:Landroid/widget/TextView;

    const-string/jumbo v1, "\u0645\u062a\u0648\u0633\u0637"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_87
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_99

    .line 134
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$1;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    iget-object v0, v0, Lcom/digikala/dms/view/fragment/RateFragment;->ratio:Landroid/widget/TextView;

    const-string/jumbo v1, "\u0639\u0627\u0644\u06cc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_99
    const-string v0, "Rate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Rate;->getRate()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_b3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 100
    check-cast p1, Lcom/digikala/dms/model/domain/Rate;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/RateFragment$1;->onResponse(Lcom/digikala/dms/model/domain/Rate;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.RateFragment.AnonymousClass2 (com.digikala.dms.view.fragment.RateFragment$2)
.class Lcom/digikala/dms/view/fragment/RateFragment$2;
.super Ljava/lang/Object;
.source "RateFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RateFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/RateFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RateFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/RateFragment;

    .line 144
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RateFragment$2;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V
    .registers 3
    .param p2, "loadDataOnResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "*>;Z)V"
        }
    .end annotation

    .line 148
    .local p1, "request":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<*>;"
    return-void
.end method

.method public reloadRequests()V
    .registers 1

    .line 153
    return-void
.end method

###### Class com.digikala.dms.view.fragment.RateFragment.AnonymousClass3 (com.digikala.dms.view.fragment.RateFragment$3)
.class Lcom/digikala/dms/view/fragment/RateFragment$3;
.super Ljava/lang/Object;
.source "RateFragment.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/RateFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/RateFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/RateFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/RateFragment;

    .line 156
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/RateFragment$3;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 6
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "v"    # F
    .param p3, "b"    # Z

    .line 159
    const-string/jumbo v0, "v"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/RateFragment$3;->this$0:Lcom/digikala/dms/view/fragment/RateFragment;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/RateFragment;->access$102(Lcom/digikala/dms/view/fragment/RateFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    return-void
.end method

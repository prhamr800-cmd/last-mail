###### Class com.digikala.dms.view.fragment.LoginFragment (com.digikala.dms.view.fragment.LoginFragment)
.class public Lcom/digikala/dms/view/fragment/LoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;
    }
.end annotation


# static fields
.field public static final EXTRA_DISTRIBUTION_CENTER_ID:Ljava/lang/String; = "extra_distribution_center_id"

.field public static final EXTRA_DRIVER_ID:Ljava/lang/String; = "extra_driver_id"

.field public static final EXTRA_TIME_INTERVAL:Ljava/lang/String; = "extra_time_interval"

.field private static final MAX_LINES_TIL_ERROR:I = 0x2

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String;

.field private static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private mDeliveryIdEditText:Landroid/widget/EditText;

.field private mDeliveryIdTextInputLayout:Landroid/support/design/widget/TextInputLayout;

.field private mFragmentChanger:Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

.field private mLoginButton:Landroid/widget/Button;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

.field private mVersionTextView:Lcom/digikala/dms/view/custom/XeiTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_DEBUG:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeAuthToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/fragment/LoginFragment;Lcom/digikala/dms/model/design/TrackingType;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;
    .param p1, "x1"    # Lcom/digikala/dms/model/design/TrackingType;

    .line 64
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeTrackingType(Lcom/digikala/dms/model/design/TrackingType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/digikala/dms/model/domain/Courier;)Lcom/digikala/dms/model/domain/Courier;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/model/domain/Courier;

    .line 64
    invoke-static {p0}, Lcom/digikala/dms/view/fragment/LoginFragment;->updateCourierTable(Lcom/digikala/dms/model/domain/Courier;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-static {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment;->sendRegistrationFirebaseTokenToServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/fragment/LoginFragment;)Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mFragmentChanger:Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 64
    sget-object v0, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/fragment/LoginFragment;)Landroid/support/design/widget/TextInputLayout;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/digikala/dms/view/fragment/LoginFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;

    .line 64
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mLoginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 64
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeRejectReasonItem(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/LoginFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 64
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeUnprocessedReasonItem(Ljava/util/List;)V

    return-void
.end method

.method public static checkDeliveryLogin(Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;)V
    .registers 6
    .param p0, "deliveryLoggedInListener"    # Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;

    .line 173
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 174
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isLoggedIn"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 175
    .local v1, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-nez v2, :cond_23

    .line 176
    invoke-interface {p0}, Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;->thereIsNotAnyDeliveryLoggedIn()V

    goto :goto_3b

    .line 177
    :cond_23
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_34

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-interface {p0, v2}, Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;->deliveryIsLoggedIn(Lcom/digikala/dms/model/domain/Courier;)V

    goto :goto_3b

    .line 180
    :cond_34
    sget-object v2, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There exist more than one logged in delivery!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_3b
    return-void
.end method

.method private login()V
    .registers 10

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 187
    .local v0, "CVersion":I
    const-string v1, "CVersion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "deliveryName":Ljava/lang/String;
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "password":Ljava/lang/String;
    const-string v4, "2.2.3"

    sget-object v5, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v6, Lcom/digikala/dms/view/fragment/LoginFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment$1;-><init>(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Lcom/digikala/dms/helper/webservice/WebApi;->makeLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 238
    return-void
.end method

.method public static logout()V
    .registers 4

    .line 241
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v2, Lcom/digikala/dms/view/fragment/LoginFragment$2;

    invoke-direct {v2}, Lcom/digikala/dms/view/fragment/LoginFragment$2;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/digikala/dms/helper/webservice/WebApi;->makeLogoutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 335
    return-void
.end method

.method private makeTextInputLayoutErrorScrollable(Landroid/support/design/widget/TextInputLayout;I)V
    .registers 6
    .param p1, "textInputLayout"    # Landroid/support/design/widget/TextInputLayout;
    .param p2, "maxLines"    # I

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 426
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_27

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 430
    :cond_27
    return-void
.end method

.method public static newInstance()Lcom/digikala/dms/view/fragment/LoginFragment;
    .registers 1

    .line 98
    new-instance v0, Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;-><init>()V

    return-object v0
.end method

.method private static sendRegistrationFirebaseTokenToServer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "courierId"    # Ljava/lang/String;
    .param p1, "refreshedToken"    # Ljava/lang/String;

    .line 343
    return-void
.end method

.method private setTypefaceToTextInputLayoutError(Landroid/support/design/widget/TextInputLayout;Landroid/graphics/Typeface;)V
    .registers 7
    .param p1, "textInputLayout"    # Landroid/support/design/widget/TextInputLayout;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .line 408
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 409
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_31

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 414
    :cond_31
    return-void
.end method

.method private storeAuthToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "authToken"    # Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/digikala/dms/util/Util;->setDeliveryAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public static storeCardTypes(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p0, "cardTypes":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/CardType;>;"
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 479
    .local v0, "realm":Lio/realm/Realm;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/CardType;

    .line 480
    .local v2, "cardType":Lcom/digikala/dms/model/domain/CardType;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 482
    const-class v3, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/CardType;

    .line 483
    .local v3, "cardTypeRealm":Lcom/digikala/dms/model/domain/CardType;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/CardType;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/CardType;->setId(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/CardType;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/CardType;->setTitle(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 487
    .end local v2    # "cardType":Lcom/digikala/dms/model/domain/CardType;
    .end local v3    # "cardTypeRealm":Lcom/digikala/dms/model/domain/CardType;
    goto :goto_8

    .line 488
    :cond_31
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 489
    return-void
.end method

.method public static storeDeliveryId(Ljava/lang/String;)V
    .registers 2
    .param p0, "deliveryId"    # Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/digikala/dms/util/Util;->setDeliveryId(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static storeDistributionPointId(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 364
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/digikala/dms/util/Util;->setDistributionPointId(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    :cond_d
    return-void
.end method

.method private storeQuestionAnswer(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/design/QuestionAnswer;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p1, "questionAnswers":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/design/QuestionAnswer;>;"
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 524
    .local v0, "realm":Lio/realm/Realm;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 525
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 526
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 527
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 528
    .local v2, "questionAnswer":Lcom/digikala/dms/model/design/QuestionAnswer;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 529
    const-class v3, Lcom/digikala/dms/model/design/QuestionAnswer;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/design/QuestionAnswer;

    .line 530
    .local v3, "questionAnswerObj":Lcom/digikala/dms/model/design/QuestionAnswer;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a9

    .line 531
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3b
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getAnswers()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v6, v7, :cond_72

    .line 532
    const-class v7, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v0, v7}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/design/Answer;

    .line 533
    .local v7, "answer":Lcom/digikala/dms/model/design/Answer;
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getAnswers()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/Answer;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/digikala/dms/model/design/Answer;->setId(I)V

    .line 534
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getAnswers()Lio/realm/RealmList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/Answer;->getAnswer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/digikala/dms/model/design/Answer;->setAnswer(Ljava/lang/String;)V

    .line 531
    .end local v7    # "answer":Lcom/digikala/dms/model/design/Answer;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 536
    .end local v6    # "j":I
    :cond_72
    new-instance v6, Lcom/digikala/dms/model/design/Question;

    invoke-direct {v6}, Lcom/digikala/dms/model/design/Question;-><init>()V

    .line 537
    .local v6, "question":Lcom/digikala/dms/model/design/Question;
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getQuestion()Lcom/digikala/dms/model/design/Question;

    move-result-object v7

    invoke-virtual {v7}, Lcom/digikala/dms/model/design/Question;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/digikala/dms/model/design/Question;->setId(I)V

    .line 538
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getQuestion()Lcom/digikala/dms/model/design/Question;

    move-result-object v7

    invoke-virtual {v7}, Lcom/digikala/dms/model/design/Question;->getQuestion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/digikala/dms/model/design/Question;->setQuestion(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getQuestion()Lcom/digikala/dms/model/design/Question;

    move-result-object v7

    invoke-virtual {v7}, Lcom/digikala/dms/model/design/Question;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/digikala/dms/model/design/Question;->setType(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getQuestion()Lcom/digikala/dms/model/design/Question;

    move-result-object v7

    invoke-virtual {v7}, Lcom/digikala/dms/model/design/Question;->getRequired()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/digikala/dms/model/design/Question;->setRequired(Ljava/lang/Boolean;)V

    .line 541
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 530
    .end local v6    # "question":Lcom/digikala/dms/model/design/Question;
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 543
    .end local v5    # "i":I
    :cond_a9
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getAnswers()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/design/QuestionAnswer;->setAnswers(Lio/realm/RealmList;)V

    .line 544
    invoke-virtual {v2}, Lcom/digikala/dms/model/design/QuestionAnswer;->getQuestion()Lcom/digikala/dms/model/design/Question;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/design/QuestionAnswer;->setQuestion(Lcom/digikala/dms/model/design/Question;)V

    .line 545
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 546
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 547
    .end local v2    # "questionAnswer":Lcom/digikala/dms/model/design/QuestionAnswer;
    .end local v3    # "questionAnswerObj":Lcom/digikala/dms/model/design/QuestionAnswer;
    goto/16 :goto_1b

    .line 548
    :cond_bf
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 549
    return-void
.end method

.method private storeRejectReasonItem(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p1, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 493
    .local v0, "realm":Lio/realm/Realm;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 494
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 495
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/RejectReason;

    .line 497
    .local v2, "rejectReason":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 498
    const-class v3, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/RejectReason;

    .line 499
    .local v3, "rejectReasonObj":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/RejectReason;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/RejectReason;->setId(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/RejectReason;->setTitle(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/RejectReason;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/RejectReason;->setType(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 503
    .end local v2    # "rejectReason":Lcom/digikala/dms/model/domain/RejectReason;
    .end local v3    # "rejectReasonObj":Lcom/digikala/dms/model/domain/RejectReason;
    goto :goto_1b

    .line 504
    :cond_4b
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 505
    return-void
.end method

.method private storeTrackingType(Lcom/digikala/dms/model/design/TrackingType;)V
    .registers 3
    .param p1, "trackingType"    # Lcom/digikala/dms/model/design/TrackingType;

    .line 359
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/digikala/dms/util/Util;->setCourierTrackingType(Landroid/content/Context;Lcom/digikala/dms/model/design/TrackingType;)V

    .line 360
    return-void
.end method

.method private storeUnprocessedReasonItem(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p1, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/UnprocessedReason;>;"
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 509
    .local v0, "realm":Lio/realm/Realm;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 510
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 511
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 512
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 513
    .local v2, "rejectReason":Lcom/digikala/dms/model/domain/UnprocessedReason;
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 514
    const-class v3, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 515
    .local v3, "rejectReasonObj":Lcom/digikala/dms/model/domain/UnprocessedReason;
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/UnprocessedReason;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/UnprocessedReason;->setId(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/UnprocessedReason;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/UnprocessedReason;->setTitle(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 518
    .end local v2    # "rejectReason":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .end local v3    # "rejectReasonObj":Lcom/digikala/dms/model/domain/UnprocessedReason;
    goto :goto_1b

    .line 519
    :cond_44
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 520
    return-void
.end method

.method private static updateCourierTable(Lcom/digikala/dms/model/domain/Courier;)Lcom/digikala/dms/model/domain/Courier;
    .registers 6
    .param p0, "courier"    # Lcom/digikala/dms/model/domain/Courier;

    .line 373
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 374
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 375
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5a

    .line 376
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 377
    const-class v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    .line 378
    .local v2, "newCourier":Lcom/digikala/dms/model/domain/Courier;
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/digikala/dms/model/domain/Courier;->setId(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/digikala/dms/model/domain/Courier;->setName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/digikala/dms/model/domain/Courier;->setUserName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/digikala/dms/model/domain/Courier;->setAvatarUrl(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getDistributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 385
    .local v4, "distributionCenter":Lcom/digikala/dms/model/domain/DistributionCenter;
    invoke-virtual {v2, v4}, Lcom/digikala/dms/model/domain/Courier;->setDistributionCenter(Lcom/digikala/dms/model/domain/DistributionCenter;)V

    .line 386
    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Courier;->setIsLoggedIn(Z)V

    .line 387
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 388
    return-object v2

    .line 389
    .end local v2    # "newCourier":Lcom/digikala/dms/model/domain/Courier;
    .end local v4    # "distributionCenter":Lcom/digikala/dms/model/domain/DistributionCenter;
    :cond_5a
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_84

    .line 390
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 391
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v4, v3}, Lcom/digikala/dms/model/domain/Courier;->setIsLoggedIn(Z)V

    .line 392
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/model/domain/Courier;->setUserName(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 394
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    return-object v2

    .line 396
    :cond_84
    sget-object v2, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There are more than one similar courier in the Courier table!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getConstantValueResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "deliveryId"    # Ljava/lang/String;

    .line 445
    sget-object v0, Lcom/digikala/dms/view/fragment/LoginFragment;->TAG_REQUEST:Ljava/lang/String;

    new-instance v1, Lcom/digikala/dms/view/fragment/LoginFragment$3;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/LoginFragment$3;-><init>(Lcom/digikala/dms/view/fragment/LoginFragment;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/digikala/dms/helper/webservice/WebApi;->getConstantValueResponse(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 474
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 137
    instance-of v0, p1, Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    if-eqz v0, :cond_d

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mFragmentChanger:Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    .line 142
    return-void

    .line 140
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement XeiFragment.FragmentChanger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "clickedView"    # Landroid/view/View;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900ae

    if-eq v0, v1, :cond_a

    goto :goto_77

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 157
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f100060

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 159
    :cond_31
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 160
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f100061

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 162
    :cond_4d
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 163
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mLoginButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/LoginFragment;->login()V

    .line 170
    :cond_77
    :goto_77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    const v0, 0x7f0c0044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 106
    .local v1, "internalViewNode":Landroid/widget/LinearLayout;
    const v2, 0x7f0900b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 107
    const v2, 0x7f0900b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TextInputLayout;

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 108
    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 109
    .local v2, "errorMsgTypeface":Landroid/graphics/Typeface;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0, v3, v2}, Lcom/digikala/dms/view/fragment/LoginFragment;->setTypefaceToTextInputLayoutError(Landroid/support/design/widget/TextInputLayout;Landroid/graphics/Typeface;)V

    .line 110
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0, v3, v2}, Lcom/digikala/dms/view/fragment/LoginFragment;->setTypefaceToTextInputLayoutError(Landroid/support/design/widget/TextInputLayout;Landroid/graphics/Typeface;)V

    .line 111
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/digikala/dms/view/fragment/LoginFragment;->makeTextInputLayoutErrorScrollable(Landroid/support/design/widget/TextInputLayout;I)V

    .line 112
    const v3, 0x7f0900af

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    .line 113
    const v3, 0x7f0900b0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 114
    const v3, 0x7f0900ae

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mLoginButton:Landroid/widget/Button;

    .line 115
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x7f0900b3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mVersionTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 117
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mVersionTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f100081

    invoke-virtual {p0, v5}, Lcom/digikala/dms/view/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/digikala/dms/util/Util;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    if-eqz p3, :cond_b2

    .line 120
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    const-string/jumbo v4, "username"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    const-string v4, "password"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_b2
    return-object v0
.end method

.method public onDetach()V
    .registers 2

    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mFragmentChanger:Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string/jumbo v0, "username"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mDeliveryIdEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "password"

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

###### Class com.digikala.dms.view.fragment.LoginFragment.AnonymousClass1 (com.digikala.dms.view.fragment.LoginFragment$1)
.class Lcom/digikala/dms/view/fragment/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/LoginFragment;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Lcom/digikala/dms/model/design/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

.field final synthetic val$deliveryName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/LoginFragment;

    .line 191
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->val$deliveryName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 228
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->val$deliveryName:Ljava/lang/String;

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logInEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->val$deliveryName:Ljava/lang/String;

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->logInEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$600(Lcom/digikala/dms/view/fragment/LoginFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$700(Lcom/digikala/dms/view/fragment/LoginFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not Login: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/design/LoginResult;)V
    .registers 7
    .param p1, "response"    # Lcom/digikala/dms/model/design/LoginResult;

    .line 194
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->val$deliveryName:Ljava/lang/String;

    const-string v1, "Success"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logInEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->val$deliveryName:Ljava/lang/String;

    const-string v1, "Success"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->logInEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Courier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/crashlytics/CrashlyticsHelper;->logUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$000(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeDeliveryId(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getTrackingType()Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$100(Lcom/digikala/dms/view/fragment/LoginFragment;Lcom/digikala/dms/model/design/TrackingType;)V

    .line 204
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getConstantValueResponse(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$200(Lcom/digikala/dms/model/domain/Courier;)Lcom/digikala/dms/model/domain/Courier;

    move-result-object v0

    .line 206
    .local v0, "courier":Lcom/digikala/dms/model/domain/Courier;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getCourier()Lcom/digikala/dms/model/domain/Courier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getDistributionCenter()Lcom/digikala/dms/model/domain/DistributionCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/DistributionCenter;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeDistributionPointId(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/LoginResult;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/digikala/dms/util/Util;->setServerDateTimeResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->getShipmentNextStepIsPriority(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 211
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/fragment/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 212
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_129

    .line 213
    :cond_c9
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    if-eqz v1, :cond_10a

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_10a

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-lez v1, :cond_10a

    .line 214
    const-string v1, "bug_login"

    const-string v2, "login"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v3}, Lcom/digikala/dms/view/fragment/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/fragment/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_129

    .line 218
    :cond_10a
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$400(Lcom/digikala/dms/view/fragment/LoginFragment;)Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    move-result-object v1

    if-eqz v1, :cond_120

    .line 219
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$400(Lcom/digikala/dms/view/fragment/LoginFragment;)Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;

    move-result-object v1

    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->newInstance()Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;->changeFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_129

    .line 221
    :cond_120
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not change Fragment: mFragmentChanger is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_129
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 191
    check-cast p1, Lcom/digikala/dms/model/design/LoginResult;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment$1;->onResponse(Lcom/digikala/dms/model/design/LoginResult;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.LoginFragment.AnonymousClass2 (com.digikala.dms.view.fragment.LoginFragment$2)
.class final Lcom/digikala/dms/view/fragment/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 327
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Logout Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 10
    .param p1, "successfullyLogout"    # Ljava/lang/Boolean;

    .line 244
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/core/ForegroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 252
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/digikala/dms/core/GpsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, "gpsService":Landroid/content/Intent;
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 255
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Success"

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Success"

    invoke-static {v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 259
    .local v2, "tempRealm":Lio/realm/Realm;
    const-class v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "isLoggedIn"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    .line 260
    .local v3, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 261
    invoke-virtual {v3}, Lio/realm/RealmResults;->size()I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_8e

    .line 262
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v5, v4}, Lcom/digikala/dms/model/domain/Courier;->setIsLoggedIn(Z)V

    .line 265
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_8e
    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 291
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 294
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/util/Util;->setDeliveryAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/util/Util;->setDeliveryId(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/util/Util;->setBachId(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/util/Util;->setDistributionPointId(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/digikala/dms/util/Util;->setCourierTrackingType(Landroid/content/Context;Lcom/digikala/dms/model/design/TrackingType;)V

    .line 304
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v4

    .line 305
    .local v4, "realm":Lio/realm/Realm;
    new-instance v5, Lcom/digikala/dms/view/fragment/LoginFragment$2$1;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/LoginFragment$2$1;-><init>(Lcom/digikala/dms/view/fragment/LoginFragment$2;)V

    invoke-virtual {v4, v5}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 312
    invoke-virtual {v4}, Lio/realm/Realm;->close()V

    .line 314
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v5, "intent":Landroid/content/Intent;
    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 317
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .end local v1    # "gpsService":Landroid/content/Intent;
    .end local v2    # "tempRealm":Lio/realm/Realm;
    .end local v3    # "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    .end local v4    # "realm":Lio/realm/Realm;
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_115

    .line 318
    :cond_f2
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->logOutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsuccessful Logout Process!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_115
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 241
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment$2;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.LoginFragment.AnonymousClass2.AnonymousClass1 (com.digikala.dms.view.fragment.LoginFragment$2$1)
.class Lcom/digikala/dms/view/fragment/LoginFragment$2$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/LoginFragment$2;->onResponse(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/LoginFragment$2;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/LoginFragment$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/LoginFragment$2;

    .line 305
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$2$1;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 308
    const-class v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 309
    .local v0, "rows":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/CardType;>;"
    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 310
    return-void
.end method

###### Class com.digikala.dms.view.fragment.LoginFragment.AnonymousClass3 (com.digikala.dms.view.fragment.LoginFragment$3)
.class Lcom/digikala/dms/view/fragment/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/LoginFragment;->getConstantValueResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Lcom/digikala/dms/model/design/ConstantValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/LoginFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/LoginFragment;

    .line 445
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/LoginFragment$3;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 469
    if-eqz p1, :cond_9

    .line 470
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_9
    return-void
.end method

.method public onResponse(Lcom/digikala/dms/model/design/ConstantValue;)V
    .registers 4
    .param p1, "response"    # Lcom/digikala/dms/model/design/ConstantValue;

    .line 448
    if-eqz p1, :cond_30

    .line 449
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getCredentials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 450
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getCredentials()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeCardTypes(Ljava/util/List;)V

    .line 452
    :cond_f
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getCancellationReasons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 453
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$3;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getCancellationReasons()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$800(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/util/List;)V

    .line 456
    :cond_1e
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getUnprocessedReasons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 457
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/LoginFragment$3;->this$0:Lcom/digikala/dms/view/fragment/LoginFragment;

    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getUnprocessedReasons()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/view/fragment/LoginFragment;->access$900(Lcom/digikala/dms/view/fragment/LoginFragment;Ljava/util/List;)V

    .line 460
    :cond_2d
    invoke-virtual {p1}, Lcom/digikala/dms/model/design/ConstantValue;->getAnswersPerQuestion()Ljava/util/List;

    .line 465
    :cond_30
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 445
    check-cast p1, Lcom/digikala/dms/model/design/ConstantValue;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/LoginFragment$3;->onResponse(Lcom/digikala/dms/model/design/ConstantValue;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.LoginFragment.OnCheckDeliveryLoginListener (com.digikala.dms.view.fragment.LoginFragment$OnCheckDeliveryLoginListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;
.super Ljava/lang/Object;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckDeliveryLoginListener"
.end annotation


# virtual methods
.method public abstract deliveryIsLoggedIn(Lcom/digikala/dms/model/domain/Courier;)V
.end method

.method public abstract thereIsNotAnyDeliveryLoggedIn()V
.end method

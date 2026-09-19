###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity (com.digikala.dms.view.activity.NewShipmentPriorityActivity)
.class public final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;,
        Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewShipmentPriorityActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewShipmentPriorityActivity.kt\ncom/digikala/dms/view/activity/NewShipmentPriorityActivity\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,265:1\n60#2:266\n31#2,23:267\n60#2:290\n31#2,23:291\n60#2:314\n31#2,23:315\n*E\n*S KotlinDebug\n*F\n+ 1 NewShipmentPriorityActivity.kt\ncom/digikala/dms/view/activity/NewShipmentPriorityActivity\n*L\n137#1:266\n137#1,23:267\n146#1:290\n146#1,23:291\n149#1:314\n149#1,23:315\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0002!\"B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0008\u0010\u001e\u001a\u00020\u0010H\u0002J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "()V",
        "isPopupOpen",
        "",
        "()Z",
        "setPopupOpen",
        "(Z)V",
        "mPopupWindow",
        "Landroid/widget/PopupWindow;",
        "getMPopupWindow",
        "()Landroid/widget/PopupWindow;",
        "setMPopupWindow",
        "(Landroid/widget/PopupWindow;)V",
        "createActionBarMenu",
        "",
        "loadDeliveryProfile",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPageScrollStateChanged",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "showPopupWindows",
        "updateTabLayout",
        "allOrdersCount",
        "Companion",
        "PriorityPagerAdapter",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

.field private static mSwipedShipment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static offlineShipmentCount:I

.field private static pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

.field public static priority_submit_button:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private isPopupOpen:Z

.field private mPopupWindow:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mSwipedShipment:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMSwipedShipment$cp()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mSwipedShipment:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getOfflineShipmentCount$cp()I
    .registers 1

    .line 37
    sget v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->offlineShipmentCount:I

    return v0
.end method

.method public static final synthetic access$getPagerAdapter$cp()Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    if-nez v0, :cond_9

    const-string v1, "pagerAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static final synthetic access$getPriority_submit_button$cp()Landroid/widget/Button;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    sget-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->priority_submit_button:Landroid/widget/Button;

    if-nez v0, :cond_9

    const-string v1, "priority_submit_button"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static final synthetic access$setMSwipedShipment$cp(Ljava/util/ArrayList;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    sput-object p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mSwipedShipment:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setOfflineShipmentCount$cp(I)V
    .registers 1
    .param p0, "<set-?>"    # I

    .line 37
    sput p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->offlineShipmentCount:I

    return-void
.end method

.method public static final synthetic access$setPagerAdapter$cp(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;)V
    .registers 1
    .param p0, "<set-?>"    # Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    sput-object p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    return-void
.end method

.method public static final synthetic access$setPriority_submit_button$cp(Landroid/widget/Button;)V
    .registers 1
    .param p0, "<set-?>"    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 37
    sput-object p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->priority_submit_button:Landroid/widget/Button;

    return-void
.end method

.method public static final synthetic access$showPopupWindows(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 1
    .param p0, "$this"    # Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    .line 37
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->showPopupWindows()V

    return-void
.end method

.method private final createActionBarMenu()V
    .registers 3

    .line 252
    sget v0, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_logoutBtn:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v1, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method private final loadDeliveryProfile()V
    .registers 23

    .line 133
    move-object/from16 v1, p0

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 134
    .local v2, "realm":Lio/realm/Realm;
    const-class v0, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v3, "isLoggedIn"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    .line 135
    .local v3, "loggedInDeliveries":Lio/realm/RealmResults;
    invoke-virtual {v3}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-ne v0, v4, :cond_193

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/digikala/dms/model/domain/Courier;

    .line 137
    .local v6, "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    sget v0, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_deliveryName:I

    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v7, "appbarMain_xeiTextView_deliveryName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x20

    if-eqz v6, :cond_88

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_88

    .local v9, "$receiver$iv":Ljava/lang/String;
    move v10, v5

    .line 266
    .local v10, "$i$f$trim":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    .local v11, "$receiver$iv$iv":Ljava/lang/CharSequence;
    move v12, v5

    .line 267
    .local v12, "$i$f$trim":I
    const/4 v13, 0x0

    .line 268
    .local v13, "startIndex$iv$iv":I
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    sub-int/2addr v14, v4

    .line 269
    .local v14, "endIndex$iv$iv":I
    move v15, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v14, v13

    const/4 v13, 0x0

    .line 271
    .local v13, "startFound$iv$iv":Z
    .local v14, "startIndex$iv$iv":I
    .local v15, "endIndex$iv$iv":I
    :goto_52
    if-gt v14, v15, :cond_7d

    .line 272
    if-nez v13, :cond_59

    move/from16 v17, v14

    goto :goto_5b

    :cond_59
    move/from16 v17, v15

    :goto_5b
    move/from16 v18, v17

    .line 273
    .local v18, "index$iv$iv":I
    move/from16 v8, v18

    .end local v18    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 137
    .local v4, "it":C
    .local v16, "$i$a$1$trim":I
    if-gt v4, v7, :cond_67

    const/4 v4, 0x1

    goto :goto_68

    :cond_67
    const/4 v4, 0x0

    .end local v4    # "it":C
    .end local v16    # "$i$a$1$trim":I
    :goto_68
    move/from16 v17, v4

    .line 275
    .local v17, "match$iv$iv":Z
    if-nez v13, :cond_74

    .line 276
    if-nez v17, :cond_71

    .line 277
    const/4 v4, 0x1

    .line 286
    move v13, v4

    goto :goto_79

    .line 279
    :cond_71
    add-int/lit8 v14, v14, 0x1

    goto :goto_79

    .line 282
    :cond_74
    if-nez v17, :cond_77

    .line 283
    goto :goto_7d

    .line 285
    .restart local v16    # "$i$a$1$trim":I
    :cond_77
    add-int/lit8 v15, v15, -0x1

    .line 286
    .end local v8    # "index$iv$iv":I
    .end local v17    # "match$iv$iv":Z
    :goto_79
    nop

    .line 271
    nop

    .line 269
    const/4 v4, 0x1

    goto :goto_52

    .line 289
    .end local v16    # "$i$a$1$trim":I
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v15, 0x1

    invoke-interface {v11, v14, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 266
    .end local v11    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    .end local v12    # "$i$f$trim":I
    .end local v13    # "startFound$iv$iv":Z
    .end local v14    # "startIndex$iv$iv":I
    .end local v15    # "endIndex$iv$iv":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8d

    .end local v9    # "$receiver$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trim":I
    :cond_88
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_8d
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v0, "0"

    .line 139
    .local v0, "userName":Ljava/lang/String;
    if-eqz v6, :cond_9b

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v8

    goto :goto_9c

    :cond_9b
    const/4 v8, 0x0

    :goto_9c
    if-eqz v8, :cond_a9

    .line 140
    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getUserName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "loggedInCourier.userName"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_bf

    .line 141
    :cond_a9
    if-eqz v6, :cond_b0

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_b1

    :cond_b0
    const/4 v8, 0x0

    :goto_b1
    if-eqz v8, :cond_be

    .line 142
    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "loggedInCourier.id"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_bf

    .line 145
    :cond_be
    move-object v4, v0

    .line 146
    .end local v0    # "userName":Ljava/lang/String;
    .local v4, "userName":Ljava/lang/String;
    :goto_bf
    sget v0, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_deliveryId:I

    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v8, "appbarMain_xeiTextView_deliveryId"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    .local v8, "$receiver$iv":Ljava/lang/String;
    move v9, v5

    .line 290
    .local v9, "$i$f$trim":I
    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    .line 291
    .restart local v10    # "$i$f$trim":I
    .restart local v11    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 292
    .local v13, "startIndex$iv$iv":I
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .line 293
    .local v14, "endIndex$iv$iv":I
    move v15, v12

    const/4 v12, 0x0

    .line 295
    .local v12, "startFound$iv$iv":Z
    :goto_da
    if-gt v13, v14, :cond_ff

    .line 296
    if-nez v12, :cond_e0

    move v15, v13

    goto :goto_e1

    :cond_e0
    move v15, v14

    .line 297
    .local v15, "index$iv$iv":I
    :goto_e1
    invoke-interface {v11, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 146
    .local v5, "it":C
    .local v17, "$i$a$2$trim":I
    if-gt v5, v7, :cond_e9

    const/4 v5, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v5, 0x0

    .line 299
    .end local v17    # "$i$a$2$trim":I
    .local v5, "match$iv$iv":Z
    :goto_ea
    if-nez v12, :cond_f3

    .line 300
    if-nez v5, :cond_f0

    .line 301
    const/4 v12, 0x1

    goto :goto_fa

    .line 303
    :cond_f0
    add-int/lit8 v13, v13, 0x1

    goto :goto_fa

    .line 306
    :cond_f3
    if-nez v5, :cond_f8

    .line 307
    nop

    .line 313
    move v15, v5

    goto :goto_ff

    .line 309
    .restart local v17    # "$i$a$2$trim":I
    :cond_f8
    add-int/lit8 v14, v14, -0x1

    .line 310
    .end local v5    # "match$iv$iv":Z
    .end local v15    # "index$iv$iv":I
    :goto_fa
    nop

    .line 295
    nop

    .line 293
    move v15, v5

    const/4 v5, 0x0

    goto :goto_da

    .line 313
    .end local v17    # "$i$a$2$trim":I
    :cond_ff
    :goto_ff
    add-int/lit8 v5, v14, 0x1

    invoke-interface {v11, v13, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 290
    .end local v10    # "$i$f$trim":I
    .end local v11    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    .end local v12    # "startFound$iv$iv":Z
    .end local v13    # "startIndex$iv$iv":I
    .end local v14    # "endIndex$iv$iv":I
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .end local v8    # "$receiver$iv":Ljava/lang/String;
    .end local v9    # "$i$f$trim":I
    invoke-static {v5}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, v8

    .line 147
    .local v5, "avatarUrl":Ljava/lang/String;
    nop

    .line 148
    nop

    .line 149
    if-eqz v6, :cond_16a

    :try_start_117
    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16a

    const/4 v8, 0x0

    .local v0, "$receiver$iv":Ljava/lang/String;
    move v10, v8

    .line 314
    .restart local v10    # "$i$f$trim":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    .line 315
    .restart local v9    # "$i$f$trim":I
    .restart local v11    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 316
    .local v12, "startIndex$iv$iv":I
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 317
    .local v13, "endIndex$iv$iv":I
    move/from16 v16, v15

    move v15, v13

    move v13, v12

    const/4 v12, 0x0

    .line 319
    .local v12, "startFound$iv$iv":Z
    .local v13, "startIndex$iv$iv":I
    .local v15, "endIndex$iv$iv":I
    :goto_12e
    if-gt v13, v15, :cond_15b

    .line 320
    if-nez v12, :cond_135

    move/from16 v17, v13

    goto :goto_137

    :cond_135
    move/from16 v17, v15

    :goto_137
    move/from16 v19, v17

    .line 321
    .local v19, "index$iv$iv":I
    move/from16 v8, v19

    .end local v19    # "index$iv$iv":I
    .local v8, "index$iv$iv":I
    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move/from16 v21, v17

    .line 149
    .local v16, "$i$a$3$trim":I
    .local v21, "it":C
    move/from16 v14, v21

    .end local v21    # "it":C
    .local v14, "it":C
    if-gt v14, v7, :cond_147

    const/4 v14, 0x1

    goto :goto_148

    :cond_147
    const/4 v14, 0x0

    .line 323
    .end local v16    # "$i$a$3$trim":I
    .local v14, "match$iv$iv":Z
    :goto_148
    if-nez v12, :cond_151

    .line 324
    if-nez v14, :cond_14e

    .line 325
    const/4 v12, 0x1

    goto :goto_156

    .line 327
    :cond_14e
    add-int/lit8 v13, v13, 0x1

    goto :goto_156

    .line 330
    :cond_151
    if-nez v14, :cond_154

    .line 331
    goto :goto_15b

    .line 333
    .restart local v16    # "$i$a$3$trim":I
    :cond_154
    add-int/lit8 v15, v15, -0x1

    .line 334
    .end local v8    # "index$iv$iv":I
    .end local v14    # "match$iv$iv":Z
    :goto_156
    nop

    .line 319
    nop

    .line 317
    const/4 v8, 0x0

    const/4 v14, 0x1

    goto :goto_12e

    .line 337
    .end local v16    # "$i$a$3$trim":I
    :cond_15b
    :goto_15b
    add-int/lit8 v7, v15, 0x1

    invoke-interface {v11, v13, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 314
    .end local v9    # "$i$f$trim":I
    .end local v11    # "$receiver$iv$iv":Ljava/lang/CharSequence;
    .end local v12    # "startFound$iv$iv":Z
    .end local v13    # "startIndex$iv$iv":I
    .end local v15    # "endIndex$iv$iv":I
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$receiver$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trim":I
    if-eqz v0, :cond_16a

    goto :goto_170

    .line 150
    :catch_168
    move-exception v0

    goto :goto_16d

    .line 149
    :cond_16a
    const-string v0, ""
    :try_end_16c
    .catch Ljava/lang/NullPointerException; {:try_start_117 .. :try_end_16c} :catch_168

    goto :goto_170

    .line 150
    :goto_16d
    nop

    .line 151
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v0, ""

    .line 148
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_170
    nop

    .line 154
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .local v0, "avatarUrl":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17d

    const/16 v20, 0x1

    goto :goto_17f

    :cond_17d
    const/16 v20, 0x0

    :goto_17f
    if-nez v20, :cond_193

    .line 155
    if-eqz v6, :cond_188

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/Courier;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    goto :goto_189

    :cond_188
    const/4 v8, 0x0

    :goto_189
    new-instance v5, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;

    invoke-direct {v5, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    check-cast v5, Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    invoke-static {v8, v5}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->downloadAndMemoryCacheBitmap(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 171
    .end local v0    # "avatarUrl":Ljava/lang/String;
    .end local v4    # "userName":Ljava/lang/String;
    .end local v6    # "loggedInCourier":Lcom/digikala/dms/model/domain/Courier;
    :cond_193
    return-void
.end method

.method private final showPopupWindows()V
    .registers 12

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->isPopupOpen:Z

    .line 211
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b9

    check-cast v1, Landroid/view/LayoutInflater;

    .line 213
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, "popupView":Landroid/view/View;
    const v3, 0x7f09018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 216
    .local v3, "settingLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f09010a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 217
    .local v4, "logoutLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f090174

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 219
    .local v5, "scanLayout":Landroid/widget/LinearLayout;
    const-string v6, "scanLayout"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    new-instance v6, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v6, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance v6, Landroid/widget/PopupWindow;

    .line 235
    nop

    .line 236
    nop

    .line 234
    const/4 v7, -0x2

    invoke-direct {v6, v2, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 238
    iget-object v6, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5f

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 239
    :cond_5f
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    if-eqz v0, :cond_67

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 241
    :cond_67
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9a

    sget v7, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_logoutBtn:I

    invoke-virtual {p0, v7}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/view/custom/XeiTextView;

    sget v8, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_logoutBtn:I

    invoke-virtual {p0, v8}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v9, "appbarMain_xeiTextView_logoutBtn"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/digikala/dms/view/custom/XeiTextView;->getWidth()I

    move-result v8

    neg-int v8, v8

    sget v9, Lcom/digikala/dms/R$id;->appbarMain_xeiTextView_logoutBtn:I

    invoke-virtual {p0, v9}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string v10, "appbarMain_xeiTextView_logoutBtn"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/digikala/dms/view/custom/XeiTextView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 243
    :cond_9a
    sget v0, Lcom/digikala/dms/R$id;->dark_layer:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v7, "dark_layer"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget v0, Lcom/digikala/dms/R$id;->dark_layer:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void

    .line 211
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "popupView":Landroid/view/View;
    .end local v3    # "settingLayout":Landroid/widget/LinearLayout;
    .end local v4    # "logoutLayout":Landroid/widget/LinearLayout;
    .end local v5    # "scanLayout":Landroid/widget/LinearLayout;
    :cond_b9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_9
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public final getMPopupWindow()Landroid/widget/PopupWindow;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public final isPopupOpen()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->isPopupOpen:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->setContentView(I)V

    .line 53
    sget v0, Lcom/digikala/dms/R$id;->priority_submit_btn:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "priority_submit_btn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->priority_submit_button:Landroid/widget/Button;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mSwipedShipment:Ljava/util/ArrayList;

    .line 56
    sget v0, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 58
    new-instance v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;-><init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;Landroid/support/v4/app/FragmentManager;)V

    sput-object v0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    .line 59
    sget v0, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "priority_activity_vp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    if-nez v1, :cond_54

    const-string v2, "pagerAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_54
    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    sget v0, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "priority_activity_vp"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 63
    sget v0, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    sget v1, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 64
    const/4 v0, 0x0

    sget v1, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    const-string v2, "appbarMain_tabLayout_mainPages"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ltz v1, :cond_b5

    .line 65
    .local v0, "i":I
    :goto_91
    sget v2, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 66
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_b0

    sget-object v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    if-nez v3, :cond_a8

    const-string v4, "pagerAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a8
    invoke-virtual {v3, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->getTabView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    nop

    .line 64
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_b0
    if-eq v0, v1, :cond_b5

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 69
    .end local v0    # "i":I
    :cond_b5
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->createActionBarMenu()V

    .line 70
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->loadDeliveryProfile()V

    .line 71
    sget v0, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$onCreate$1;

    invoke-direct {v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$onCreate$1;-><init>()V

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 124
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 127
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2
    .param p1, "position"    # I

    .line 130
    return-void
.end method

.method public final setMPopupWindow(Landroid/widget/PopupWindow;)V
    .registers 2
    .param p1, "<set-?>"    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final setPopupOpen(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->isPopupOpen:Z

    return-void
.end method

.method public final updateTabLayout(I)V
    .registers 11
    .param p1, "allOrdersCount"    # I

    .line 100
    sget v0, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "it":Landroid/support/design/widget/TabLayout;
    const/4 v1, 0x0

    move v2, v1

    .line 101
    .local v2, "$i$a$1$let":I
    sget v3, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v3}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    sget v4, Lcom/digikala/dms/R$id;->priority_activity_vp:I

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 102
    sget v3, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v3}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    const-string v4, "appbarMain_tabLayout_mainPages"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v3

    if-ltz v3, :cond_93

    const/4 v4, 0x0

    .line 103
    .local v1, "i":I
    :goto_2f
    sget v5, Lcom/digikala/dms/R$id;->appbarMain_tabLayout_mainPages:I

    invoke-virtual {p0, v5}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 104
    .local v5, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v5, :cond_4d

    sget-object v6, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->pagerAdapter:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    if-nez v6, :cond_46

    const-string v7, "pagerAdapter"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_46
    invoke-virtual {v6, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->getTabView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 105
    :cond_4d
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    goto :goto_55

    :cond_54
    const/4 v6, 0x0

    .line 106
    .local v4, "$i$a$1$apply":I
    .local v6, "$receiver":Landroid/view/View;
    :goto_55
    packed-switch v1, :pswitch_data_96

    .end local v4    # "$i$a$1$apply":I
    .end local v6    # "$receiver":Landroid/view/View;
    goto :goto_8b

    .line 111
    .restart local v4    # "$i$a$1$apply":I
    .restart local v6    # "$receiver":Landroid/view/View;
    :pswitch_59
    if-eqz v6, :cond_6f

    sget v7, Lcom/digikala/dms/R$id;->tab_layout_name_count:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/view/custom/XeiTextView;

    if-eqz v7, :cond_6f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    :cond_6f
    goto :goto_8b

    .line 108
    .end local v4    # "$i$a$1$apply":I
    :pswitch_70
    if-eqz v6, :cond_8b

    sget v7, Lcom/digikala/dms/R$id;->tab_layout_name_count:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/view/custom/XeiTextView;

    if-eqz v7, :cond_8b

    sget-object v8, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->mSwipedShipment:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v6    # "$receiver":Landroid/view/View;
    :cond_8b
    :goto_8b
    nop

    .line 117
    nop

    .line 105
    nop

    .line 102
    .end local v5    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eq v1, v3, :cond_93

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 119
    .end local v0    # "it":Landroid/support/design/widget/TabLayout;
    .end local v1    # "i":I
    .end local v2    # "$i$a$1$let":I
    :cond_93
    nop

    .line 100
    nop

    .line 121
    return-void

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_70
        :pswitch_59
    .end packed-switch
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.Companion (com.digikala.dms.view.activity.NewShipmentPriorityActivity$Companion)
.class public final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00060\u0011R\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;",
        "",
        "()V",
        "mSwipedShipment",
        "Ljava/util/ArrayList;",
        "Lcom/digikala/dms/model/domain/Shipment;",
        "getMSwipedShipment",
        "()Ljava/util/ArrayList;",
        "setMSwipedShipment",
        "(Ljava/util/ArrayList;)V",
        "offlineShipmentCount",
        "",
        "getOfflineShipmentCount",
        "()I",
        "setOfflineShipmentCount",
        "(I)V",
        "pagerAdapter",
        "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;",
        "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;",
        "priority_submit_button",
        "Landroid/widget/Button;",
        "getPriority_submit_button",
        "()Landroid/widget/Button;",
        "setPriority_submit_button",
        "(Landroid/widget/Button;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 39
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMSwipedShipment()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    invoke-static {}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$getMSwipedShipment$cp()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getOfflineShipmentCount()I
    .registers 2

    .line 43
    invoke-static {}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$getOfflineShipmentCount$cp()I

    move-result v0

    return v0
.end method

.method public final getPriority_submit_button()Landroid/widget/Button;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    invoke-static {}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$getPriority_submit_button$cp()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final setMSwipedShipment(Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$setMSwipedShipment$cp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setOfflineShipmentCount(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 43
    invoke-static {p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$setOfflineShipmentCount$cp(I)V

    return-void
.end method

.method public final setPriority_submit_button(Landroid/widget/Button;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/widget/Button;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$setPriority_submit_button$cp(Landroid/widget/Button;)V

    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.PriorityPagerAdapter (com.digikala.dms.view.activity.NewShipmentPriorityActivity$PriorityPagerAdapter)
.class public final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "NewShipmentPriorityActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PriorityPagerAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0019H\u0016J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001f\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\"\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;",
        "Landroid/support/v4/app/FragmentStatePagerAdapter;",
        "fm",
        "Landroid/support/v4/app/FragmentManager;",
        "(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;Landroid/support/v4/app/FragmentManager;)V",
        "registeredFragments",
        "Landroid/util/SparseArray;",
        "Landroid/support/v4/app/Fragment;",
        "getRegisteredFragments",
        "()Landroid/util/SparseArray;",
        "setRegisteredFragments",
        "(Landroid/util/SparseArray;)V",
        "titleArray",
        "",
        "",
        "getTitleArray",
        "()[Ljava/lang/String;",
        "setTitleArray",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "destroyItem",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "position",
        "",
        "object",
        "",
        "getCount",
        "getItem",
        "getRegisteredFragment",
        "pos",
        "getTabView",
        "Landroid/view/View;",
        "instantiateItem",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

.field private titleArray:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .param p1, "$outer"    # Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 175
    invoke-virtual {p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getStringArray\u2026.array.priority_tab_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->titleArray:[Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 197
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 178
    if-eqz p1, :cond_b

    .line 180
    sget-object v0, Lcom/digikala/dms/view/fragment/SwipePriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;->newInstance()Lcom/digikala/dms/view/fragment/SwipePriorityFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_13

    .line 179
    :cond_b
    sget-object v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->Companion:Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;->newInstance()Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 178
    :goto_13
    nop

    .line 181
    return-object v0
.end method

.method public final getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "pos"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getRegisteredFragments()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getTabView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "v":Landroid/view/View;
    const-string/jumbo v1, "v"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/digikala/dms/R$id;->tab_layout_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string/jumbo v2, "v.tab_layout_name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->titleArray:[Ljava/lang/String;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget v1, Lcom/digikala/dms/R$id;->tab_layout_name_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/view/custom/XeiTextView;

    const-string/jumbo v2, "v.tab_layout_name_count"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->Companion:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;

    invoke-virtual {v2}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;->getMSwipedShipment()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object v0
.end method

.method public final getTitleArray()[Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->titleArray:[Ljava/lang/String;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 185
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    return-object v0

    .line 184
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_13
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.Fragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRegisteredFragments(Landroid/util/SparseArray;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    return-void
.end method

.method public final setTitleArray([Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->titleArray:[Ljava/lang/String;

    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.AnonymousClass1 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$createActionBarMenu$1)
.class final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->createActionBarMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "it"    # Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->isPopupOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 254
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getMPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 255
    :cond_13
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->setPopupOpen(Z)V

    goto :goto_1f

    .line 257
    :cond_1a
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$createActionBarMenu$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$showPopupWindows(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V

    .line 258
    :goto_1f
    nop

    .line 259
    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.AnonymousClass4 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$loadDeliveryProfile$4)
.class public final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->loadDeliveryProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008R\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4",
        "Lcom/android/volley/toolbox/ImageLoader$ImageListener;",
        "onErrorResponse",
        "",
        "error",
        "Lcom/android/volley/VolleyError;",
        "onResponse",
        "response",
        "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
        "Lcom/android/volley/toolbox/ImageLoader;",
        "isImmediate",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 2
    .param p1, "$outer"    # Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 7
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "isImmediate"    # Z

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2f

    .line 159
    iget-object v1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    sget v2, Lcom/digikala/dms/R$id;->appbarMain_circleImageView_avatar:I

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    sget v2, Lcom/digikala/dms/R$id;->appbarMain_circleImageView_avatar:I

    invoke-virtual {v1, v2}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$loadDeliveryProfile$4;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    check-cast v2, Landroid/content/Context;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_2f
    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.C00531 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$onCreate$1)
.class public final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$onCreate$1;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/digikala/dms/view/activity/NewShipmentPriorityActivity$onCreate$1",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 74
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 77
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .line 81
    nop

    .line 82
    if-nez p1, :cond_2a

    .line 83
    :try_start_3
    invoke-static {}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$getPagerAdapter$cp()Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 84
    nop

    .line 86
    nop

    .line 84
    nop

    .line 85
    nop

    .line 84
    invoke-static {}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->access$getPagerAdapter$cp()Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_21

    check-cast v0, Lcom/digikala/dms/view/fragment/DragPriorityFragment;

    .line 86
    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/DragPriorityFragment;->updatePriorityAdapterData()V

    goto :goto_2a

    .line 85
    :cond_21
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.digikala.dms.view.fragment.DragPriorityFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_29

    .line 90
    :catch_29
    move-exception v0

    .line 92
    :cond_2a
    :goto_2a
    nop

    .line 94
    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.ViewOnClickListenerC00541 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$showPopupWindows$1)
.class final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "it"    # Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->setPopupOpen(Z)V

    .line 222
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getMPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 223
    :cond_11
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$1;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.AnonymousClass2 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$showPopupWindows$2)
.class final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "it"    # Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->setShipmentNextStepIsPriority(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 229
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getMPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 230
    :cond_19
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$2;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->setPopupOpen(Z)V

    .line 231
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    .line 232
    return-void
.end method

###### Class com.digikala.dms.view.activity.NewShipmentPriorityActivity.AnonymousClass3 (com.digikala.dms.view.activity.NewShipmentPriorityActivity$showPopupWindows$3)
.class final Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;
.super Ljava/lang/Object;
.source "NewShipmentPriorityActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "it"    # Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->setPopupOpen(Z)V

    .line 246
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->getMPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    :cond_11
    iget-object v0, p0, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$showPopupWindows$3;->this$0:Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    sget v1, Lcom/digikala/dms/R$id;->dark_layer:I

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "dark_layer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    return-void
.end method

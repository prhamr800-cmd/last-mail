###### Class com.digikala.dms.view.custom.XeiEditText (com.digikala.dms.view.custom.XeiEditText)
.class public Lcom/digikala/dms/view/custom/XeiEditText;
.super Landroid/widget/EditText;
.source "XeiEditText.java"


# static fields
.field private static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field private static final LANGUAGE_PERSIAN:Ljava/lang/String; = "fa"

.field private static final LOCALE_AUTO:I = 0x0

.field private static final LOCALE_EN_US:I = 0x1

.field private static final LOCALE_FA_IR:I = 0x2

.field private static final LOCALE_HYBRID:I = 0x3

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_NORMAL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/digikala/dms/view/custom/XeiEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/digikala/dms/view/custom/XeiEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/digikala/dms/view/custom/XeiEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    if-eqz p2, :cond_5

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/digikala/dms/view/custom/XeiEditText;->setLocaleTypeface(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    :cond_5
    return-void
.end method

.method private setLocaleTypeface(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    sget-object v0, Lcom/digikala/dms/R$styleable;->XeiLocaledView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 56
    .local v2, "localeEnum":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 57
    .local v1, "styleFlag":I
    invoke-static {}, Lcom/digikala/dms/helper/TypeFaceHelper;->getInstance()Lcom/digikala/dms/helper/TypeFaceHelper;

    move-result-object v3

    .line 59
    .local v3, "typeFaceHelper":Lcom/digikala/dms/helper/TypeFaceHelper;
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    packed-switch v2, :pswitch_data_94

    .end local v1    # "styleFlag":I
    .end local v2    # "localeEnum":I
    .end local v3    # "typeFaceHelper":Lcom/digikala/dms/helper/TypeFaceHelper;
    goto/16 :goto_8f

    .line 95
    .restart local v1    # "styleFlag":I
    .restart local v2    # "localeEnum":I
    .restart local v3    # "typeFaceHelper":Lcom/digikala/dms/helper/TypeFaceHelper;
    :pswitch_1d
    packed-switch v1, :pswitch_data_9e

    goto :goto_31

    .line 100
    :pswitch_21
    invoke-virtual {v3, v4}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_31

    .line 97
    :pswitch_29
    invoke-virtual {v3, v5}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    nop

    .line 103
    :goto_31
    goto :goto_8f

    .line 85
    :pswitch_32
    packed-switch v1, :pswitch_data_a6

    goto :goto_46

    .line 90
    :pswitch_36
    invoke-virtual {v3, v6}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_46

    .line 87
    :pswitch_3e
    invoke-virtual {v3, v7}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    nop

    .line 93
    :goto_46
    goto :goto_8f

    .line 61
    :pswitch_47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "language":Ljava/lang/String;
    const-string v9, "en"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 63
    packed-switch v1, :pswitch_data_ae

    goto :goto_6b

    .line 68
    :pswitch_5b
    invoke-virtual {v3, v6}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6b

    .line 65
    :pswitch_63
    invoke-virtual {v3, v7}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    nop

    .line 69
    :goto_6b
    goto :goto_8f

    .line 71
    :cond_6c
    const-string v6, "fa"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 72
    packed-switch v1, :pswitch_data_b6

    goto :goto_88

    .line 77
    :pswitch_78
    invoke-virtual {v3, v4}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_88

    .line 74
    :pswitch_80
    invoke-virtual {v3, v5}, Lcom/digikala/dms/helper/TypeFaceHelper;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/digikala/dms/view/custom/XeiEditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_87} :catch_8e
    .catchall {:try_start_7 .. :try_end_87} :catchall_89

    .line 75
    nop

    .line 78
    :goto_88
    goto :goto_8f

    .line 111
    .end local v1    # "styleFlag":I
    .end local v2    # "localeEnum":I
    .end local v3    # "typeFaceHelper":Lcom/digikala/dms/helper/TypeFaceHelper;
    .end local v8    # "language":Ljava/lang/String;
    :catchall_89
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 108
    :catch_8e
    move-exception v1

    .line 111
    :cond_8f
    :goto_8f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    nop

    .line 114
    return-void

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_47
        :pswitch_32
        :pswitch_1d
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_21
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_36
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5b
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_80
        :pswitch_78
    .end packed-switch
.end method

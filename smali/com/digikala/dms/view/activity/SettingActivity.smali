###### Class com.digikala.dms.view.activity.SettingActivity (com.digikala.dms.view.activity.SettingActivity)
.class public Lcom/digikala/dms/view/activity/SettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingActivity.java"


# instance fields
.field private changePassword:Landroid/widget/LinearLayout;

.field private darkLayout:Landroid/view/View;

.field private firstSpinnerListenerCalled:Z

.field private isPopupOpen:Z

.field private languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field private popupWindow:Landroid/widget/PopupWindow;

.field tagRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->isPopupOpen:Z

    .line 43
    const-class v0, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->tagRequest:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 39
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->showPopupWindows()V

    return-void
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 39
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->showChangePasswordDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/activity/SettingActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/activity/SettingActivity;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/digikala/dms/view/activity/SettingActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/digikala/dms/view/activity/SettingActivity;->isPopupOpen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/activity/SettingActivity;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/digikala/dms/view/activity/SettingActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 39
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->darkLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 39
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->hideKeyboard()V

    return-void
.end method

.method private hideKeyboard()V
    .registers 5

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_16

    .line 269
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 274
    .end local v0    # "view":Landroid/view/View;
    :cond_16
    goto :goto_18

    .line 272
    :catch_17
    move-exception v0

    .line 275
    :goto_18
    return-void
.end method

.method private setLocale(Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 114
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 115
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 116
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 117
    return-void
.end method

.method private showChangePasswordDialog()V
    .registers 23

    .line 189
    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    move-object/from16 v12, p0

    invoke-direct {v0, v12, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 190
    .local v0, "changePassDialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 191
    const v2, 0x7f0c002b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 194
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v14, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 195
    .local v14, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Landroid/view/Window;->setLayout(II)V

    .line 197
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 200
    .local v1, "changePassword_btn":Landroid/widget/Button;
    const v2, 0x7f09005b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/pnikosis/materialishprogress/ProgressWheel;

    .line 202
    .local v15, "progressWheel":Lcom/pnikosis/materialishprogress/ProgressWheel;
    const v2, 0x7f090132

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/EditText;

    .line 203
    .local v16, "oldPassword_et":Landroid/widget/EditText;
    const v2, 0x7f09012b

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/EditText;

    .line 204
    .local v17, "newPassword_et":Landroid/widget/EditText;
    const v2, 0x7f090129

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/EditText;

    .line 206
    .local v18, "newPassword_confirm_et":Landroid/widget/EditText;
    const v2, 0x7f09012c

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/support/design/widget/TextInputLayout;

    .line 207
    .local v19, "newPassword_inputLayout":Landroid/support/design/widget/TextInputLayout;
    const v2, 0x7f090133

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/support/design/widget/TextInputLayout;

    .line 208
    .local v20, "oldPassword_inputLayout":Landroid/support/design/widget/TextInputLayout;
    const v2, 0x7f09012a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/support/design/widget/TextInputLayout;

    .line 210
    .local v21, "confirm_newPassword_inputLayout":Landroid/support/design/widget/TextInputLayout;
    new-instance v11, Lcom/digikala/dms/view/activity/SettingActivity$6;

    move-object v2, v11

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    move-object v10, v15

    move-object v12, v11

    move-object v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/digikala/dms/view/activity/SettingActivity$6;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Lcom/pnikosis/materialishprogress/ProgressWheel;Landroid/app/Dialog;)V

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 262
    return-void
.end method

.method private showPopupWindows()V
    .registers 12

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->isPopupOpen:Z

    .line 125
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 128
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "popupView":Landroid/view/View;
    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, "persianTextView":Landroid/widget/TextView;
    const v4, 0x7f090092

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "englishTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f030000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "languageKey":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "language":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    aget-object v8, v6, v0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v8, Lcom/digikala/dms/view/activity/SettingActivity$3;

    invoke-direct {v8, p0, v5}, Lcom/digikala/dms/view/activity/SettingActivity$3;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v8, Lcom/digikala/dms/view/activity/SettingActivity$4;

    invoke-direct {v8, p0, v5}, Lcom/digikala/dms/view/activity/SettingActivity$4;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;[Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-direct {v8, v2, v9, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lcom/digikala/dms/view/activity/SettingActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 171
    iget-object v8, p0, Lcom/digikala/dms/view/activity/SettingActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 172
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 174
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    iget-object v9, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v9}, Lcom/digikala/dms/view/custom/XeiTextView;->getWidth()I

    move-result v9

    neg-int v9, v9

    iget-object v10, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    invoke-virtual {v10}, Lcom/digikala/dms/view/custom/XeiTextView;->getHeight()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 176
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->darkLayout:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->darkLayout:Landroid/view/View;

    new-instance v7, Lcom/digikala/dms/view/activity/SettingActivity$5;

    invoke-direct {v7, p0}, Lcom/digikala/dms/view/activity/SettingActivity$5;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->darkLayout:Landroid/view/View;

    .line 56
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 57
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->changePassword:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    new-instance v1, Lcom/digikala/dms/view/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/activity/SettingActivity$1;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "languageKey":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "language":[Ljava/lang/String;
    invoke-static {p0}, Lcom/digikala/dms/util/Util;->getLanguageFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "savedLanguage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 71
    .local v3, "defaultSelectedPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4d
    array-length v5, v0

    if-ge v4, v5, :cond_5c

    .line 72
    aget-object v5, v0, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 73
    move v3, v4

    .line 71
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 77
    .end local v4    # "i":I
    :cond_5c
    iget-object v4, p0, Lcom/digikala/dms/view/activity/SettingActivity;->languageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, p0, Lcom/digikala/dms/view/activity/SettingActivity;->changePassword:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/digikala/dms/view/activity/SettingActivity$2;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/activity/SettingActivity$2;-><init>(Lcom/digikala/dms/view/activity/SettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public toolbarBackOnClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/SettingActivity;->onBackPressed()V

    .line 121
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass1 (com.digikala.dms.view.activity.SettingActivity$1)
.class Lcom/digikala/dms/view/activity/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 58
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$1;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$1;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->access$000(Lcom/digikala/dms/view/activity/SettingActivity;)V

    .line 62
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass2 (com.digikala.dms.view.activity.SettingActivity$2)
.class Lcom/digikala/dms/view/activity/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 103
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$2;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$2;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->access$100(Lcom/digikala/dms/view/activity/SettingActivity;)V

    .line 107
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass3 (com.digikala.dms.view.activity.SettingActivity$3)
.class Lcom/digikala/dms/view/activity/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;

.field final synthetic val$languageKey:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 139
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->val$languageKey:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 142
    const-string v0, "Change Language"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->settingActivityEvent(Ljava/lang/String;)V

    .line 143
    const-string v0, "Change Language"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->settingActivityEvent(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->val$languageKey:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/SettingActivity;->access$200(Lcom/digikala/dms/view/activity/SettingActivity;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->val$languageKey:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->saveLanguageToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    const-class v2, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$3;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/SettingActivity;->finish()V

    .line 150
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass4 (com.digikala.dms.view.activity.SettingActivity$4)
.class Lcom/digikala/dms/view/activity/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;

.field final synthetic val$languageKey:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 153
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->val$languageKey:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 156
    const-string v0, "Change Language"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->settingActivityEvent(Ljava/lang/String;)V

    .line 157
    const-string v0, "Change Language"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->settingActivityEvent(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->val$languageKey:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/SettingActivity;->access$200(Lcom/digikala/dms/view/activity/SettingActivity;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->val$languageKey:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->saveLanguageToSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    const-class v2, Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/digikala/dms/view/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$4;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/SettingActivity;->finish()V

    .line 164
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass5 (com.digikala.dms.view.activity.SettingActivity$5)
.class Lcom/digikala/dms/view/activity/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->showPopupWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 177
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$5;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$5;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/view/activity/SettingActivity;->access$302(Lcom/digikala/dms/view/activity/SettingActivity;Z)Z

    .line 181
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$5;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->access$400(Lcom/digikala/dms/view/activity/SettingActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$5;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-static {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->access$500(Lcom/digikala/dms/view/activity/SettingActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass6 (com.digikala.dms.view.activity.SettingActivity$6)
.class Lcom/digikala/dms/view/activity/SettingActivity$6;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity;->showChangePasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/SettingActivity;

.field final synthetic val$changePassDialog:Landroid/app/Dialog;

.field final synthetic val$confirm_newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

.field final synthetic val$newPassword_confirm_et:Landroid/widget/EditText;

.field final synthetic val$newPassword_et:Landroid/widget/EditText;

.field final synthetic val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

.field final synthetic val$oldPassword_et:Landroid/widget/EditText;

.field final synthetic val$oldPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

.field final synthetic val$progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout;Lcom/pnikosis/materialishprogress/ProgressWheel;Landroid/app/Dialog;)V
    .registers 10
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/SettingActivity;

    .line 210
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iput-object p2, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_et:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_confirm_et:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iput-object p6, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iput-object p7, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$confirm_newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iput-object p8, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iput-object p9, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$changePassDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "oldPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "newPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_confirm_et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "newPassword_confirm":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/digikala/dms/view/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "deliveryId":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$confirm_newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const v2, 0x7f10005c

    if-eqz v1, :cond_52

    .line 223
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->requestFocus()Z

    .line 224
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$oldPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v3, v2}, Lcom/digikala/dms/view/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 225
    :cond_52
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 226
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->requestFocus()Z

    .line 227
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iget-object v3, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v3, v2}, Lcom/digikala/dms/view/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 228
    :cond_69
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_84

    .line 229
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->requestFocus()Z

    .line 230
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    const v3, 0x7f10007f

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 231
    :cond_84
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 232
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$confirm_newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->requestFocus()Z

    .line 233
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$confirm_newPassword_inputLayout:Landroid/support/design/widget/TextInputLayout;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    const v3, 0x7f10009f

    invoke-virtual {v2, v3}, Lcom/digikala/dms/view/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_bd

    .line 235
    :cond_9e
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-static {v1}, Lcom/digikala/dms/view/activity/SettingActivity;->access$600(Lcom/digikala/dms/view/activity/SettingActivity;)V

    .line 236
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v4, v1, Lcom/digikala/dms/view/activity/SettingActivity;->tagRequest:Ljava/lang/String;

    new-instance v5, Lcom/digikala/dms/view/activity/SettingActivity$6$1;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/activity/SettingActivity$6$1;-><init>(Lcom/digikala/dms/view/activity/SettingActivity$6;)V

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, v0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/digikala/dms/helper/webservice/WebApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 259
    :goto_bd
    return-void
.end method

###### Class com.digikala.dms.view.activity.SettingActivity.AnonymousClass6.AnonymousClass1 (com.digikala.dms.view.activity.SettingActivity$6$1)
.class Lcom/digikala/dms/view/activity/SettingActivity$6$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/SettingActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/SettingActivity$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/activity/SettingActivity$6;

    .line 237
    iput-object p1, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u062e\u0637\u0627\u06cc\u06cc \u067e\u06cc\u0634 \u0622\u0645\u062f\u0647\u060c \u062f\u0648\u0628\u0627\u0631\u0647 \u0627\u0645\u062a\u062d\u0627\u0646 \u06a9\u0646\u06cc\u062f."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 240
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 242
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->val$changePassDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity;->tagRequest:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " if statement response is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\u0631\u0645\u0632 \u0639\u0628\u0648\u0631 \u0628\u0627 \u0645\u0648\u0641\u0642\u06cc\u062a \u0639\u0648\u0636 \u0634\u062f."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->logout()V

    goto :goto_73

    .line 247
    :cond_47
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity;->tagRequest:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " else statement response is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->this$1:Lcom/digikala/dms/view/activity/SettingActivity$6;

    iget-object v0, v0, Lcom/digikala/dms/view/activity/SettingActivity$6;->this$0:Lcom/digikala/dms/view/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\u062e\u0637\u0627\u06cc\u06cc \u067e\u06cc\u0634 \u0622\u0645\u062f\u0647\u060c \u062f\u0648\u0628\u0627\u0631\u0647 \u0627\u0645\u062a\u062d\u0627\u0646 \u06a9\u0646\u06cc\u062f."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    :goto_73
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 237
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/activity/SettingActivity$6$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

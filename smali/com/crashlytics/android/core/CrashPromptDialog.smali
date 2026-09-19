###### Class com.crashlytics.android.core.CrashPromptDialog (com.crashlytics.android.core.CrashPromptDialog)
.class Lcom/crashlytics/android/core/CrashPromptDialog;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;,
        Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog$Builder;

.field private final latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;
    .param p2, "latch"    # Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    .line 133
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    .line 134
    return-void
.end method

.method public static create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;
    .param p2, "alwaysSendCallback"    # Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    .line 50
    new-instance v0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V

    .line 51
    .local v0, "latch":Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
    new-instance v1, Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/DialogStringResolver;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V

    .line 52
    .local v1, "stringResolver":Lcom/crashlytics/android/core/DialogStringResolver;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/crashlytics/android/core/CrashPromptDialog;->createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v3

    .line 56
    .local v3, "scrollView":Landroid/widget/ScrollView;
    new-instance v4, Lcom/crashlytics/android/core/CrashPromptDialog$1;

    invoke-direct {v4, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$1;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 67
    .local v4, "sendClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getSendButtonTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    iget-boolean v5, p1, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showCancelButton:Z

    if-eqz v5, :cond_45

    .line 73
    new-instance v5, Lcom/crashlytics/android/core/CrashPromptDialog$2;

    invoke-direct {v5, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$2;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 81
    .local v5, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getCancelButtonTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    .end local v5    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_45
    iget-boolean v5, p1, Lio/fabric/sdk/android/services/settings/PromptSettingsData;->showAlwaysSendButton:Z

    if-eqz v5, :cond_55

    .line 86
    new-instance v5, Lcom/crashlytics/android/core/CrashPromptDialog$3;

    invoke-direct {v5, p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$3;-><init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    .line 95
    .local v5, "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1}, Lcom/crashlytics/android/core/DialogStringResolver;->getAlwaysSendButtonTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    .end local v5    # "alwaysSendClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_55
    new-instance v5, Lcom/crashlytics/android/core/CrashPromptDialog;

    invoke-direct {v5, v2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog;-><init>(Landroid/app/AlertDialog$Builder;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V

    return-object v5
.end method

.method private static createDialogView(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, "density":F
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v1

    .line 109
    .local v1, "textViewPadding":I
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 111
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v3, 0x1030044

    invoke-virtual {v2, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 117
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "scrollView":Landroid/widget/ScrollView;
    const/16 v4, 0xe

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v0, v7}, Lcom/crashlytics/android/core/CrashPromptDialog;->dipsToPixels(FI)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 120
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 121
    return-object v3
.end method

.method private static dipsToPixels(FI)I
    .registers 3
    .param p0, "density"    # F
    .param p1, "dips"    # I

    .line 125
    int-to-float v0, p1

    mul-float v0, v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public await()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->await()V

    .line 148
    return-void
.end method

.method public getOptIn()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->getOptIn()Z

    move-result v0

    return v0
.end method

.method public show()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 141
    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass1 (com.crashlytics.android.core.CrashPromptDialog$1)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$1;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$1;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 60
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$1;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass2 (com.crashlytics.android.core.CrashPromptDialog$2)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$2;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 77
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AnonymousClass3 (com.crashlytics.android.core.CrashPromptDialog$3)
.class final Lcom/crashlytics/android/core/CrashPromptDialog$3;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 90
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;->sendUserReportsWithoutPrompting(Z)V

    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.AlwaysSendCallback (com.crashlytics.android.core.CrashPromptDialog$AlwaysSendCallback)
.class interface abstract Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AlwaysSendCallback"
.end annotation


# virtual methods
.method public abstract sendUserReportsWithoutPrompting(Z)V
.end method

###### Class com.crashlytics.android.core.CrashPromptDialog.OptInLatch (com.crashlytics.android.core.CrashPromptDialog$OptInLatch)
.class Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptInLatch"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private send:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/crashlytics/android/core/CrashPromptDialog$1;

    .line 24
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>()V

    return-void
.end method


# virtual methods
.method await()V
    .registers 2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 42
    goto :goto_7

    .line 40
    :catch_6
    move-exception v0

    .line 43
    :goto_7
    return-void
.end method

.method getOptIn()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    return v0
.end method

.method setOptIn(Z)V
    .registers 3
    .param p1, "optIn"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 30
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    return-void
.end method

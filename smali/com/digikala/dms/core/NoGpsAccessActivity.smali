###### Class com.digikala.dms.core.NoGpsAccessActivity (com.digikala.dms.core.NoGpsAccessActivity)
.class public Lcom/digikala/dms/core/NoGpsAccessActivity;
.super Landroid/app/Activity;
.source "NoGpsAccessActivity.java"


# static fields
.field public static instance:Lcom/digikala/dms/core/NoGpsAccessActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/core/NoGpsAccessActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 15
    invoke-direct {p0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->buildAlertMessageNoGps()V

    return-void
.end method

.method private buildAlertMessageNoGps()V
    .registers 5

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Your GPS seems to be disabled, do you want to enable it?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lcom/digikala/dms/core/NoGpsAccessActivity$3;

    invoke-direct {v3, p0}, Lcom/digikala/dms/core/NoGpsAccessActivity$3;-><init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lcom/digikala/dms/core/NoGpsAccessActivity$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/core/NoGpsAccessActivity$2;-><init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 82
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;
    .registers 1

    .line 29
    sget-object v0, Lcom/digikala/dms/core/NoGpsAccessActivity;->instance:Lcom/digikala/dms/core/NoGpsAccessActivity;

    return-object v0
.end method

.method private setupViews()V
    .registers 3

    .line 33
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, "turnOn":Landroid/widget/Button;
    new-instance v1, Lcom/digikala/dms/core/NoGpsAccessActivity$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/core/NoGpsAccessActivity$1;-><init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sput-object p0, Lcom/digikala/dms/core/NoGpsAccessActivity;->instance:Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 23
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->setupViews()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 46
    sput-object p0, Lcom/digikala/dms/core/NoGpsAccessActivity;->instance:Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 48
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 60
    return-void
.end method

###### Class com.digikala.dms.core.NoGpsAccessActivity.AnonymousClass1 (com.digikala.dms.core.NoGpsAccessActivity$1)
.class Lcom/digikala/dms/core/NoGpsAccessActivity$1;
.super Ljava/lang/Object;
.source "NoGpsAccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/NoGpsAccessActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/core/NoGpsAccessActivity$1;->this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/digikala/dms/core/NoGpsAccessActivity$1;->this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-static {v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->access$000(Lcom/digikala/dms/core/NoGpsAccessActivity;)V

    .line 38
    return-void
.end method

###### Class com.digikala.dms.core.NoGpsAccessActivity.AnonymousClass2 (com.digikala.dms.core.NoGpsAccessActivity$2)
.class Lcom/digikala/dms/core/NoGpsAccessActivity$2;
.super Ljava/lang/Object;
.source "NoGpsAccessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/NoGpsAccessActivity;->buildAlertMessageNoGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 76
    iput-object p1, p0, Lcom/digikala/dms/core/NoGpsAccessActivity$2;->this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 79
    return-void
.end method

###### Class com.digikala.dms.core.NoGpsAccessActivity.AnonymousClass3 (com.digikala.dms.core.NoGpsAccessActivity$3)
.class Lcom/digikala/dms/core/NoGpsAccessActivity$3;
.super Ljava/lang/Object;
.source "NoGpsAccessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/NoGpsAccessActivity;->buildAlertMessageNoGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/NoGpsAccessActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/core/NoGpsAccessActivity;

    .line 71
    iput-object p1, p0, Lcom/digikala/dms/core/NoGpsAccessActivity$3;->this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 73
    iget-object v0, p0, Lcom/digikala/dms/core/NoGpsAccessActivity$3;->this$0:Lcom/digikala/dms/core/NoGpsAccessActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/core/NoGpsAccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

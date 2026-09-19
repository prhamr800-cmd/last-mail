###### Class com.digikala.dms.view.activity.LauncherActivity (com.digikala.dms.view.activity.LauncherActivity)
.class public Lcom/digikala/dms/view/activity/LauncherActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;


# static fields
.field private static final MY_PERMISSIONS_REQUEST:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkLogin()V
    .registers 2

    .line 141
    new-instance v0, Lcom/digikala/dms/view/activity/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/digikala/dms/view/activity/LauncherActivity$1;-><init>(Lcom/digikala/dms/view/activity/LauncherActivity;)V

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->checkDeliveryLogin(Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;)V

    .line 165
    return-void
.end method

.method private storageAllowed()V
    .registers 4

    .line 107
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 109
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 110
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_25

    .line 118
    :cond_21
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->checkLogin()V

    .line 120
    return-void

    .line 112
    :cond_25
    :goto_25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public changeFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09001c

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 60
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 63
    .end local v0    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_14

    .line 61
    :catch_13
    move-exception v0

    .line 64
    :goto_14
    return-void
.end method

.method public checkPermission()V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->storageAllowed()V

    .line 101
    return-void
.end method

.method public downloadComplete(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2e

    .line 82
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.digikala.dms.provider"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, "data":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->newInstance()Lcom/digikala/dms/view/fragment/LoginFragment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/digikala/dms/view/activity/LauncherActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 88
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_52

    .line 89
    :cond_2e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->newInstance()Lcom/digikala/dms/view/fragment/LoginFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_52
    return-void
.end method

.method public forceUpdate()V
    .registers 4

    .line 72
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 75
    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->newInstance()Lcom/digikala/dms/view/fragment/LoginFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->setContentView(I)V

    .line 47
    invoke-static {p0}, Lcom/digikala/dms/util/DownloadManager;->init(Landroid/app/Activity;)V

    .line 48
    invoke-static {p0}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->setOnForceUpdateReceived(Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;)V

    .line 49
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->storageAllowed()V

    .line 51
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 125
    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    .line 138
    return-void

    .line 128
    :cond_5
    array-length v0, p3

    if-lez v0, :cond_11

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_11

    .line 130
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->checkLogin()V

    goto :goto_14

    .line 132
    :cond_11
    invoke-virtual {p0}, Lcom/digikala/dms/view/activity/LauncherActivity;->finish()V

    .line 134
    :goto_14
    return-void
.end method

.method public optionalUpdate()V
    .registers 3

    .line 169
    const-string v0, "Optional Update"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method

###### Class com.digikala.dms.view.activity.LauncherActivity.AnonymousClass1 (com.digikala.dms.view.activity.LauncherActivity$1)
.class Lcom/digikala/dms/view/activity/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/digikala/dms/view/fragment/LoginFragment$OnCheckDeliveryLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/activity/LauncherActivity;->checkLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/activity/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/activity/LauncherActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/activity/LauncherActivity;

    .line 141
    iput-object p1, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliveryIsLoggedIn(Lcom/digikala/dms/model/domain/Courier;)V
    .registers 6
    .param p1, "loggedInCourier"    # Lcom/digikala/dms/model/domain/Courier;

    .line 144
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/LoginFragment;->storeDeliveryId(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getShipmentNextStepIsPriority(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 146
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    const-class v3, Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->finish()V

    goto :goto_68

    .line 148
    :cond_27
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 149
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 150
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 151
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/Courier;->isBatchFinalized()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 153
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    const-class v3, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-virtual {v0}, Lcom/digikala/dms/view/activity/LauncherActivity;->finish()V

    goto :goto_68

    .line 156
    :cond_5f
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-static {}, Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;->newInstance()Lcom/digikala/dms/view/fragment/AssignedShipmentsFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 158
    :goto_68
    return-void
.end method

.method public thereIsNotAnyDeliveryLoggedIn()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/digikala/dms/view/activity/LauncherActivity$1;->this$0:Lcom/digikala/dms/view/activity/LauncherActivity;

    invoke-static {}, Lcom/digikala/dms/view/fragment/LoginFragment;->newInstance()Lcom/digikala/dms/view/fragment/LoginFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/activity/LauncherActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 163
    return-void
.end method

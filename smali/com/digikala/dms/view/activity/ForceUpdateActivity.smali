###### Class com.digikala.dms.view.activity.ForceUpdateActivity (com.digikala.dms.view.activity.ForceUpdateActivity)
.class public Lcom/digikala/dms/view/activity/ForceUpdateActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ForceUpdateActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/ForceUpdateActivity;->setContentView(I)V

    .line 14
    return-void
.end method

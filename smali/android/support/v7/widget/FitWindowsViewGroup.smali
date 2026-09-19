###### Class android.support.v7.widget.FitWindowsViewGroup (android.support.v7.widget.FitWindowsViewGroup)
.class public interface abstract Landroid/support/v7/widget/FitWindowsViewGroup;
.super Ljava/lang/Object;
.source "FitWindowsViewGroup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
    }
.end annotation


# virtual methods
.method public abstract setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
.end method

###### Class android.support.v7.widget.FitWindowsViewGroup.OnFitSystemWindowsListener (android.support.v7.widget.FitWindowsViewGroup$OnFitSystemWindowsListener)
.class public interface abstract Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
.super Ljava/lang/Object;
.source "FitWindowsViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FitWindowsViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFitSystemWindowsListener"
.end annotation


# virtual methods
.method public abstract onFitSystemWindows(Landroid/graphics/Rect;)V
.end method

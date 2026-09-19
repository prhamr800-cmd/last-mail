###### Class android.support.v7.view.menu.MenuView (android.support.v7.view.menu.MenuView)
.class public interface abstract Landroid/support/v7/view/menu/MenuView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuView$ItemView;
    }
.end annotation


# virtual methods
.method public abstract getWindowAnimations()I
.end method

.method public abstract initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
.end method

###### Class android.support.v7.view.menu.MenuView.ItemView (android.support.v7.view.menu.MenuView$ItemView)
.class public interface abstract Landroid/support/v7/view/menu/MenuView$ItemView;
.super Ljava/lang/Object;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemView"
.end annotation


# virtual methods
.method public abstract getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
.end method

.method public abstract initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
.end method

.method public abstract prefersCondensedTitle()Z
.end method

.method public abstract setCheckable(Z)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcut(ZC)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract showsIcon()Z
.end method

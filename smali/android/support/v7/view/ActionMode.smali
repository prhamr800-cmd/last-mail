###### Class android.support.v7.view.ActionMode (android.support.v7.view.ActionMode)
.class public abstract Landroid/support/v7/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/support/v7/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/support/v7/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/support/v7/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2
    .param p1, "titleOptional"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/support/v7/view/ActionMode;->mTitleOptionalHint:Z

    .line 135
    return-void
.end method

###### Class android.support.v7.view.ActionMode.Callback (android.support.v7.view.ActionMode$Callback)
.class public interface abstract Landroid/support/v7/view/ActionMode$Callback;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end method

.method public abstract onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
.end method

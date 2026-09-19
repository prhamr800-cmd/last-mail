###### Class rx.android.view.ViewActions (rx.android.view.ViewActions)
.class public final Lrx/android/view/ViewActions;
.super Ljava/lang/Object;
.source "ViewActions.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActivated(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 55
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lrx/android/view/ViewActions$2;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$2;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setClickable(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 71
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lrx/android/view/ViewActions$3;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setEnabled(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lrx/android/view/ViewActions$1;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setFocusable(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 87
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lrx/android/view/ViewActions$4;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$4;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setSelected(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 103
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lrx/android/view/ViewActions$5;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$5;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setText(Landroid/widget/TextView;)Lrx/functions/Action1;
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 162
    const-string v0, "textView"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    new-instance v0, Lrx/android/view/ViewActions$7;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$7;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static setTextResource(Landroid/widget/TextView;)Lrx/functions/Action1;
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 180
    const-string v0, "textView"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lrx/android/view/ViewActions$8;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$8;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static setVisibility(Landroid/view/View;)Lrx/functions/Action1;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 122
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lrx/android/view/ViewActions;->setVisibility(Landroid/view/View;I)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method public static setVisibility(Landroid/view/View;I)Lrx/functions/Action1;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibilityOnFalse"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 137
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "Binding false to VISIBLE has no effect and is thus disallowed."

    invoke-static {v0, v1}, Lrx/android/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 141
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x8

    if-ne p1, v0, :cond_17

    goto :goto_2e

    .line 142
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid visibility value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2e
    :goto_2e
    new-instance v0, Lrx/android/view/ViewActions$6;

    invoke-direct {v0, p0, p1}, Lrx/android/view/ViewActions$6;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

###### Class rx.android.view.ViewActions.AnonymousClass1 (rx.android.view.ViewActions$1)
.class final Lrx/android/view/ViewActions$1;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setEnabled(Landroid/view/View;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View;

    .line 40
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$1;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass2 (rx.android.view.ViewActions$2)
.class final Lrx/android/view/ViewActions$2;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setActivated(Landroid/view/View;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View;

    .line 56
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 60
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 56
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$2;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass3 (rx.android.view.ViewActions$3)
.class final Lrx/android/view/ViewActions$3;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setClickable(Landroid/view/View;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View;

    .line 72
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clickable"    # Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 76
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 72
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$3;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass4 (rx.android.view.ViewActions$4)
.class final Lrx/android/view/ViewActions$4;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setFocusable(Landroid/view/View;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View;

    .line 88
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "focusable"    # Ljava/lang/Boolean;

    .line 91
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 92
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 88
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$4;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass5 (rx.android.view.ViewActions$5)
.class final Lrx/android/view/ViewActions$5;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setSelected(Landroid/view/View;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/View;

    .line 104
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Ljava/lang/Boolean;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 108
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 104
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$5;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass6 (rx.android.view.ViewActions$6)
.class final Lrx/android/view/ViewActions$6;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setVisibility(Landroid/view/View;I)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$visibilityOnFalse:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;

    .line 144
    iput p2, p0, Lrx/android/view/ViewActions$6;->val$visibilityOnFalse:I

    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    iget v0, p0, Lrx/android/view/ViewActions$6;->val$visibilityOnFalse:I

    .line 148
    .local v0, "visibility":I
    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 144
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lrx/android/view/ViewActions$6;->call(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass7 (rx.android.view.ViewActions$7)
.class final Lrx/android/view/ViewActions$7;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setText(Landroid/widget/TextView;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/widget/TextView;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/TextView;

    .line 163
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 163
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lrx/android/view/ViewActions$7;->call(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public call(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

###### Class rx.android.view.ViewActions.AnonymousClass8 (rx.android.view.ViewActions$8)
.class final Lrx/android/view/ViewActions$8;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setTextResource(Landroid/widget/TextView;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1<",
        "Landroid/widget/TextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/TextView;

    .line 181
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lrx/android/view/ViewActions$8;->call(Landroid/widget/TextView;Ljava/lang/Integer;)V

    return-void
.end method

.method public call(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "resId"    # Ljava/lang/Integer;

    .line 184
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 185
    return-void
.end method

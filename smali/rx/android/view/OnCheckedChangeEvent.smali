###### Class rx.android.view.OnCheckedChangeEvent (rx.android.view.OnCheckedChangeEvent)
.class public abstract Lrx/android/view/OnCheckedChangeEvent;
.super Ljava/lang/Object;
.source "OnCheckedChangeEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/CompoundButton;)Lrx/android/view/OnCheckedChangeEvent;
    .registers 2
    .param p0, "view"    # Landroid/widget/CompoundButton;

    .line 25
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lrx/android/view/OnCheckedChangeEvent;->create(Landroid/widget/CompoundButton;Z)Lrx/android/view/OnCheckedChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/widget/CompoundButton;Z)Lrx/android/view/OnCheckedChangeEvent;
    .registers 3
    .param p0, "view"    # Landroid/widget/CompoundButton;
    .param p1, "value"    # Z

    .line 29
    new-instance v0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;

    invoke-direct {v0, p0, p1}, Lrx/android/view/AutoValue_OnCheckedChangeEvent;-><init>(Landroid/widget/CompoundButton;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract value()Z
.end method

.method public abstract view()Landroid/widget/CompoundButton;
.end method

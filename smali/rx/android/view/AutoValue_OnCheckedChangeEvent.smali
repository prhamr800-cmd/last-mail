###### Class rx.android.view.AutoValue_OnCheckedChangeEvent (rx.android.view.AutoValue_OnCheckedChangeEvent)
.class final Lrx/android/view/AutoValue_OnCheckedChangeEvent;
.super Lrx/android/view/OnCheckedChangeEvent;
.source "AutoValue_OnCheckedChangeEvent.java"


# instance fields
.field private final value:Z

.field private final view:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .line 12
    invoke-direct {p0}, Lrx/android/view/OnCheckedChangeEvent;-><init>()V

    .line 13
    if-eqz p1, :cond_a

    .line 16
    iput-object p1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    .line 17
    iput-boolean p2, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    .line 18
    return-void

    .line 14
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 41
    return v0

    .line 43
    :cond_4
    instance-of v1, p1, Lrx/android/view/OnCheckedChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 44
    move-object v1, p1

    check-cast v1, Lrx/android/view/OnCheckedChangeEvent;

    .line 45
    .local v1, "that":Lrx/android/view/OnCheckedChangeEvent;
    iget-object v3, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Lrx/android/view/OnCheckedChangeEvent;->view()Landroid/widget/CompoundButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    invoke-virtual {v1}, Lrx/android/view/OnCheckedChangeEvent;->value()Z

    move-result v4

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 48
    .end local v1    # "that":Lrx/android/view/OnCheckedChangeEvent;
    :cond_23
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "h":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 55
    iget-object v2, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 56
    mul-int v0, v0, v1

    .line 57
    iget-boolean v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    if-eqz v1, :cond_16

    const/16 v1, 0x4cf

    goto :goto_18

    :cond_16
    const/16 v1, 0x4d5

    :goto_18
    xor-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCheckedChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->value:Z

    return v0
.end method

.method public view()Landroid/widget/CompoundButton;
    .registers 2

    .line 22
    iget-object v0, p0, Lrx/android/view/AutoValue_OnCheckedChangeEvent;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method

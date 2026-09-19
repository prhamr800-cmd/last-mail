###### Class rx.android.widget.AutoValue_OnTextChangeEvent (rx.android.widget.AutoValue_OnTextChangeEvent)
.class final Lrx/android/widget/AutoValue_OnTextChangeEvent;
.super Lrx/android/widget/OnTextChangeEvent;
.source "AutoValue_OnTextChangeEvent.java"


# instance fields
.field private final text:Ljava/lang/CharSequence;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 12
    invoke-direct {p0}, Lrx/android/widget/OnTextChangeEvent;-><init>()V

    .line 13
    if-eqz p1, :cond_14

    .line 16
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    .line 17
    if-eqz p2, :cond_c

    .line 20
    iput-object p2, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    .line 21
    return-void

    .line 18
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 44
    return v0

    .line 46
    :cond_4
    instance-of v1, p1, Lrx/android/widget/OnTextChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 47
    move-object v1, p1

    check-cast v1, Lrx/android/widget/OnTextChangeEvent;

    .line 48
    .local v1, "that":Lrx/android/widget/OnTextChangeEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Lrx/android/widget/OnTextChangeEvent;->view()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lrx/android/widget/OnTextChangeEvent;->text()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    .line 51
    .end local v1    # "that":Lrx/android/widget/OnTextChangeEvent;
    :cond_27
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, "h":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 58
    iget-object v2, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 59
    mul-int v0, v0, v1

    .line 60
    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public text()Ljava/lang/CharSequence;
    .registers 2

    .line 30
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnTextChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/widget/TextView;
    .registers 2

    .line 25
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnTextChangeEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method

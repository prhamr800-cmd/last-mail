###### Class rx.android.view.AutoValue_OnClickEvent (rx.android.view.AutoValue_OnClickEvent)
.class final Lrx/android/view/AutoValue_OnClickEvent;
.super Lrx/android/view/OnClickEvent;
.source "AutoValue_OnClickEvent.java"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lrx/android/view/OnClickEvent;-><init>()V

    .line 11
    if-eqz p1, :cond_8

    .line 14
    iput-object p1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    .line 15
    return-void

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 31
    if-ne p1, p0, :cond_4

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_4
    instance-of v0, p1, Lrx/android/view/OnClickEvent;

    if-eqz v0, :cond_16

    .line 35
    move-object v0, p1

    check-cast v0, Lrx/android/view/OnClickEvent;

    .line 36
    .local v0, "that":Lrx/android/view/OnClickEvent;
    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0}, Lrx/android/view/OnClickEvent;->view()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 38
    .end local v0    # "that":Lrx/android/view/OnClickEvent;
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 43
    const/4 v0, 0x1

    .line 44
    .local v0, "h":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 45
    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClickEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/View;
    .registers 2

    .line 19
    iget-object v0, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    return-object v0
.end method

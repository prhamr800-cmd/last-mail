###### Class rx.android.widget.AutoValue_OnItemClickEvent (rx.android.widget.AutoValue_OnItemClickEvent)
.class final Lrx/android/widget/AutoValue_OnItemClickEvent;
.super Lrx/android/widget/OnItemClickEvent;
.source "AutoValue_OnItemClickEvent.java"


# instance fields
.field private final id:J

.field private final parent:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private final position:I

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 17
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lrx/android/widget/OnItemClickEvent;-><init>()V

    .line 18
    if-eqz p1, :cond_18

    .line 21
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    .line 22
    if-eqz p2, :cond_10

    .line 25
    iput-object p2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    .line 26
    iput p3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    .line 27
    iput-wide p4, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    .line 28
    return-void

    .line 23
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 63
    return v0

    .line 65
    :cond_4
    instance-of v1, p1, Lrx/android/widget/OnItemClickEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 66
    move-object v1, p1

    check-cast v1, Lrx/android/widget/OnItemClickEvent;

    .line 67
    .local v1, "that":Lrx/android/widget/OnItemClickEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Lrx/android/widget/OnItemClickEvent;->parent()Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    invoke-virtual {v1}, Lrx/android/widget/OnItemClickEvent;->view()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    invoke-virtual {v1}, Lrx/android/widget/OnItemClickEvent;->position()I

    move-result v4

    if-ne v3, v4, :cond_37

    iget-wide v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    invoke-virtual {v1}, Lrx/android/widget/OnItemClickEvent;->id()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0

    .line 72
    .end local v1    # "that":Lrx/android/widget/OnItemClickEvent;
    :cond_39
    return v2
.end method

.method public hashCode()I
    .registers 8

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "h":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 79
    iget-object v2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 80
    mul-int v0, v0, v1

    .line 81
    iget-object v2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 82
    mul-int v0, v0, v1

    .line 83
    iget v2, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    xor-int/2addr v0, v2

    .line 84
    mul-int v0, v0, v1

    .line 85
    int-to-long v1, v0

    iget-wide v3, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    iget-wide v5, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 86
    return v0
.end method

.method public id()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    return-wide v0
.end method

.method public parent()Landroid/widget/AdapterView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public position()I
    .registers 2

    .line 42
    iget v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnItemClickEvent{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->parent:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/View;
    .registers 2

    .line 37
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnItemClickEvent;->view:Landroid/view/View;

    return-object v0
.end method

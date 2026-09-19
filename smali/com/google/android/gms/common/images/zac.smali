###### Class com.google.android.gms.common.images.zac (com.google.android.gms.common.images.zac)
.class public final Lcom/google/android/gms/common/images/zac;
.super Lcom/google/android/gms/common/images/zaa;


# instance fields
.field private zanb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zac;->zanb:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zac;->zanb:Ljava/lang/ref/WeakReference;

    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/common/images/zac;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 11
    return v1

    .line 12
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 13
    return v0

    .line 14
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zac;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/common/images/zac;->zanb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/common/images/zac;->zanb:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 17
    if-eqz p1, :cond_27

    if-eqz v2, :cond_27

    .line 18
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    .line 19
    :cond_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 10

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/images/zac;->zanb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 21
    if-eqz v0, :cond_6a

    .line 22
    nop

    .line 23
    const/4 v1, 0x0

    if-nez p3, :cond_12

    if-nez p4, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    .line 24
    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_25

    instance-of v3, v0, Lcom/google/android/gms/internal/base/zaj;

    if-eqz v3, :cond_25

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/base/zaj;->zach()I

    move-result v3

    .line 26
    iget v4, p0, Lcom/google/android/gms/common/images/zac;->zamw:I

    if-eqz v4, :cond_25

    iget v4, p0, Lcom/google/android/gms/common/images/zac;->zamw:I

    if-eq v3, v4, :cond_6a

    .line 27
    :cond_25
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/zaa;->zaa(ZZ)Z

    move-result p2

    .line 28
    nop

    .line 29
    const/4 p3, 0x0

    if-eqz p2, :cond_48

    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 31
    nop

    .line 32
    if-eqz v3, :cond_40

    .line 33
    instance-of v4, v3, Lcom/google/android/gms/internal/base/zae;

    if-eqz v4, :cond_3f

    .line 34
    check-cast v3, Lcom/google/android/gms/internal/base/zae;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/base/zae;->zacf()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 36
    goto :goto_41

    .line 37
    :cond_3f
    goto :goto_41

    .line 38
    :cond_40
    move-object v3, p3

    :goto_41
    new-instance v4, Lcom/google/android/gms/internal/base/zae;

    invoke-direct {v4, v3, p1}, Lcom/google/android/gms/internal/base/zae;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    nop

    .line 40
    move-object p1, v4

    :cond_48
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    instance-of v0, v0, Lcom/google/android/gms/internal/base/zaj;

    if-eqz v0, :cond_61

    .line 42
    if-eqz p4, :cond_56

    iget-object p3, p0, Lcom/google/android/gms/common/images/zac;->zamu:Lcom/google/android/gms/common/images/zab;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zab;->uri:Landroid/net/Uri;

    nop

    .line 43
    :cond_56
    invoke-static {p3}, Lcom/google/android/gms/internal/base/zaj;->zaa(Landroid/net/Uri;)V

    .line 44
    if-eqz v2, :cond_5e

    iget v1, p0, Lcom/google/android/gms/common/images/zac;->zamw:I

    nop

    .line 45
    :cond_5e
    invoke-static {v1}, Lcom/google/android/gms/internal/base/zaj;->zai(I)V

    .line 46
    :cond_61
    if-eqz p2, :cond_6a

    .line 47
    check-cast p1, Lcom/google/android/gms/internal/base/zae;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/base/zae;->startTransition(I)V

    .line 48
    :cond_6a
    return-void
.end method

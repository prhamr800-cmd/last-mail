###### Class rx.android.widget.OnTextChangeEvent (rx.android.widget.OnTextChangeEvent)
.class public abstract Lrx/android/widget/OnTextChangeEvent;
.super Ljava/lang/Object;
.source "OnTextChangeEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/TextView;)Lrx/android/widget/OnTextChangeEvent;
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 27
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0, v0}, Lrx/android/widget/OnTextChangeEvent;->create(Landroid/widget/TextView;Ljava/lang/CharSequence;)Lrx/android/widget/OnTextChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/widget/TextView;Ljava/lang/CharSequence;)Lrx/android/widget/OnTextChangeEvent;
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 31
    new-instance v0, Lrx/android/widget/AutoValue_OnTextChangeEvent;

    invoke-direct {v0, p0, p1}, Lrx/android/widget/AutoValue_OnTextChangeEvent;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public abstract text()Ljava/lang/CharSequence;
.end method

.method public abstract view()Landroid/widget/TextView;
.end method

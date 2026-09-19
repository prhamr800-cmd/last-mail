###### Class rx.android.widget.OnItemClickEvent (rx.android.widget.OnItemClickEvent)
.class public abstract Lrx/android/widget/OnItemClickEvent;
.super Ljava/lang/Object;
.source "OnItemClickEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lrx/android/widget/OnItemClickEvent;
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)",
            "Lrx/android/widget/OnItemClickEvent;"
        }
    .end annotation

    .line 30
    .local p0, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v6, Lrx/android/widget/AutoValue_OnItemClickEvent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lrx/android/widget/AutoValue_OnItemClickEvent;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-object v6
.end method


# virtual methods
.method public abstract id()J
.end method

.method public abstract parent()Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract position()I
.end method

.method public abstract view()Landroid/view/View;
.end method

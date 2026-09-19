###### Class kotlin.jvm.internal.InlineMarker (kotlin.jvm.internal.InlineMarker)
.class public Lkotlin/jvm/internal/InlineMarker;
.super Ljava/lang/Object;
.source "InlineMarker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterInlineCall()V
    .registers 0

    .line 30
    return-void
.end method

.method public static beforeInlineCall()V
    .registers 0

    .line 27
    return-void
.end method

.method public static finallyEnd(I)V
    .registers 1
    .param p0, "finallyDepth"    # I

    .line 36
    return-void
.end method

.method public static finallyStart(I)V
    .registers 1
    .param p0, "finallyDepth"    # I

    .line 33
    return-void
.end method

.method public static mark(I)V
    .registers 1
    .param p0, "i"    # I

    .line 21
    return-void
.end method

.method public static mark(Ljava/lang/String;)V
    .registers 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    return-void
.end method

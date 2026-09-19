###### Class kotlin.KotlinNullPointerException (kotlin.KotlinNullPointerException)
.class public Lkotlin/KotlinNullPointerException;
.super Ljava/lang/NullPointerException;
.source "KotlinNullPointerException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

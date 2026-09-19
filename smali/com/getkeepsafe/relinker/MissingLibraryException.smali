###### Class com.getkeepsafe.relinker.MissingLibraryException (com.getkeepsafe.relinker.MissingLibraryException)
.class public Lcom/getkeepsafe/relinker/MissingLibraryException;
.super Ljava/lang/RuntimeException;
.source "MissingLibraryException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "library"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

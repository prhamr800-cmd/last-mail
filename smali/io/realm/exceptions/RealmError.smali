###### Class io.realm.exceptions.RealmError (io.realm.exceptions.RealmError)
.class public final Lio/realm/exceptions/RealmError;
.super Ljava/lang/Error;
.source "RealmError.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

###### Class com.google.firebase.FirebaseNetworkException (com.google.firebase.FirebaseNetworkException)
.class public Lcom/google/firebase/FirebaseNetworkException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/firebase/annotations/PublicApi;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/firebase/annotations/PublicApi;
    .end annotation

    .line 29
    nop

    .end local p1    # "detailMessage":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 30
    .end local p0    # "this":Lcom/google/firebase/FirebaseNetworkException;
    return-void
.end method

###### Class com.google.firebase.components.DependencyException (com.google.firebase.components.DependencyException)
.class public Lcom/google/firebase/components/DependencyException;
.super Ljava/lang/RuntimeException;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 24
    nop

    .end local p1    # "msg":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    .end local p0    # "this":Lcom/google/firebase/components/DependencyException;
    return-void
.end method

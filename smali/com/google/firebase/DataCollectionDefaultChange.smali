###### Class com.google.firebase.DataCollectionDefaultChange (com.google.firebase.DataCollectionDefaultChange)
.class public final Lcom/google/firebase/DataCollectionDefaultChange;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field public final enabled:Z
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    nop

    .end local p0    # "this":Lcom/google/firebase/DataCollectionDefaultChange;
    .end local p1    # "enabled":Z
    iput-boolean p1, p0, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    .line 32
    return-void
.end method

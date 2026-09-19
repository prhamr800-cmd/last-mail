###### Class com.google.firebase.internal.FirebaseAppHelper (com.google.firebase.internal.FirebaseAppHelper)
.class public Lcom/google/firebase/internal/FirebaseAppHelper;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.0.2"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIdTokenListener(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/FirebaseApp$IdTokenListener;)V
    .registers 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "listener"    # Lcom/google/firebase/FirebaseApp$IdTokenListener;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 52
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    .end local p1    # "listener":Lcom/google/firebase/FirebaseApp$IdTokenListener;
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseApp;->addIdTokenListener(Lcom/google/firebase/FirebaseApp$IdTokenListener;)V

    .line 53
    return-void
.end method

.method public static getToken(Lcom/google/firebase/FirebaseApp;Z)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "forceRefresh"    # Z
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 42
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    .end local p1    # "forceRefresh":Z
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseApp;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getUid(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .registers 1
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/FirebaseApiNotAvailableException;
        }
    .end annotation

    .line 71
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getUid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeIdTokenListener(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/FirebaseApp$IdTokenListener;)V
    .registers 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "listener"    # Lcom/google/firebase/FirebaseApp$IdTokenListener;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 61
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    .end local p1    # "listener":Lcom/google/firebase/FirebaseApp$IdTokenListener;
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseApp;->removeIdTokenListener(Lcom/google/firebase/FirebaseApp$IdTokenListener;)V

    .line 62
    return-void
.end method

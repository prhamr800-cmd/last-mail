###### Class io.realm.internal.RealmObjectProxy (io.realm.internal.RealmObjectProxy)
.class public interface abstract Lio/realm/internal/RealmObjectProxy;
.super Ljava/lang/Object;
.source "RealmObjectProxy.java"

# interfaces
.implements Lio/realm/RealmModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/RealmObjectProxy$CacheData;
    }
.end annotation


# virtual methods
.method public abstract realm$injectObjectContext()V
.end method

.method public abstract realmGet$proxyState()Lio/realm/ProxyState;
.end method

###### Class io.realm.internal.RealmObjectProxy.CacheData (io.realm.internal.RealmObjectProxy$CacheData)
.class public Lio/realm/internal/RealmObjectProxy$CacheData;
.super Ljava/lang/Object;
.source "RealmObjectProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/RealmObjectProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public minDepth:I

.field public final object:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/realm/RealmModel;)V
    .registers 3
    .param p1, "minDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<TE;>;"
    .local p2, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 42
    iput-object p2, p0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    .line 43
    return-void
.end method

###### Class com.digikala.dms.model.domain.UserFeedback (com.digikala.dms.model.domain.UserFeedback)
.class public Lcom/digikala/dms/model/domain/UserFeedback;
.super Ljava/lang/Object;
.source "UserFeedback.java"


# static fields
.field private static final RATE_MAX:I = 0xa

.field private static final RATE_MIN:I


# instance fields
.field private userRate:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "userRate"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xaL
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/digikala/dms/model/domain/UserFeedback;->userRate:I

    .line 18
    return-void
.end method


# virtual methods
.method public getUserRate()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/digikala/dms/model/domain/UserFeedback;->userRate:I

    return v0
.end method

.method public setUserRate(I)V
    .registers 2
    .param p1, "userRate"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xaL
        .end annotation
    .end param

    .line 25
    iput p1, p0, Lcom/digikala/dms/model/domain/UserFeedback;->userRate:I

    .line 26
    return-void
.end method

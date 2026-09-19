###### Class rx.schedulers.Timestamped (rx.schedulers.Timestamped)
.class public final Lrx/schedulers/Timestamped;
.super Ljava/lang/Object;
.source "Timestamped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final timestampMillis:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .registers 4
    .param p1, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    .line 27
    iput-wide p1, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 51
    return v0

    .line 53
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    instance-of v2, p1, Lrx/schedulers/Timestamped;

    if-nez v2, :cond_d

    .line 57
    return v1

    .line 59
    :cond_d
    move-object v2, p1

    check-cast v2, Lrx/schedulers/Timestamped;

    .line 60
    .local v2, "other":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    iget-wide v3, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    iget-wide v5, v2, Lrx/schedulers/Timestamped;->timestampMillis:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_19

    .line 61
    return v1

    .line 63
    :cond_19
    iget-object v3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 64
    iget-object v3, v2, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    .line 65
    return v1

    .line 67
    :cond_22
    iget-object v3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    iget-object v4, v2, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 68
    return v1

    .line 70
    :cond_2d
    return v0
.end method

.method public getTimestampMillis()J
    .registers 3

    .line 36
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    iget-wide v0, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    iget-object v0, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 75
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    const/16 v0, 0x1f

    .line 76
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 77
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    iget-wide v5, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 78
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_1d

    :cond_17
    iget-object v3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    .line 79
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 84
    .local p0, "this":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    const-string v0, "Timestamped(timestampMillis = %d, value = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

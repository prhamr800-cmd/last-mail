###### Class rx.schedulers.TimeInterval (rx.schedulers.TimeInterval)
.class public Lrx/schedulers/TimeInterval;
.super Ljava/lang/Object;
.source "TimeInterval.java"


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
.field private final intervalInMilliseconds:J

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
    .param p1, "intervalInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    .line 39
    iput-wide p1, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 75
    return v0

    .line 76
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 77
    return v1

    .line 78
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 79
    return v1

    .line 80
    :cond_13
    move-object v2, p1

    check-cast v2, Lrx/schedulers/TimeInterval;

    .line 81
    .local v2, "other":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<*>;"
    iget-wide v3, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    iget-wide v5, v2, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1f

    .line 82
    return v1

    .line 83
    :cond_1f
    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-nez v3, :cond_28

    .line 84
    iget-object v3, v2, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-eqz v3, :cond_33

    .line 85
    return v1

    .line 86
    :cond_28
    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    iget-object v4, v2, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 87
    return v1

    .line 88
    :cond_33
    return v0
.end method

.method public getIntervalInMilliseconds()J
    .registers 3

    .line 48
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    iget-wide v0, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    iget-object v0, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .line 63
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    iget-wide v5, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 68
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_1d

    :cond_17
    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    .line 69
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 93
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeInterval [intervalInMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class rx.exceptions.Exceptions (rx.exceptions.Exceptions)
.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field private static final MAX_DEPTH:I = 0x19


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v0, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    const/4 v1, 0x0

    .line 114
    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 115
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    const/16 v3, 0x19

    if-lt v1, v3, :cond_13

    .line 117
    .end local v1    # "i":I
    return-void

    .line 119
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 121
    nop

    .line 128
    move v1, v2

    goto :goto_2d

    .line 123
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    move v1, v2

    goto :goto_6

    .line 128
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    .line 133
    goto :goto_32

    .line 129
    :catch_31
    move-exception v2

    .line 134
    :goto_32
    return-void
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 147
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    const/16 v2, 0x19

    if-lt v0, v2, :cond_15

    .line 149
    .end local v0    # "i":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stack too deep to get final cause"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 151
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 145
    move v0, v1

    goto :goto_1

    .line 153
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1b
    return-object p0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 48
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_12

    .line 50
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_c

    .line 51
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 53
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 49
    :cond_12
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .line 164
    .local p0, "exceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_34

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 166
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 169
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_28

    .line 171
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_22

    .line 172
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 174
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :cond_28
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 177
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2c
    new-instance v0, Lrx/exceptions/CompositeException;

    const-string v1, "Multiple exceptions"

    invoke-direct {v0, v1, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v0

    .line 180
    :cond_34
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 77
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-nez v0, :cond_3c

    .line 79
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-eqz v0, :cond_1b

    .line 80
    move-object v0, p0

    check-cast v0, Lrx/exceptions/OnErrorFailedException;

    invoke-virtual {v0}, Lrx/exceptions/OnErrorFailedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 81
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_17

    .line 82
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 84
    :cond_17
    move-object v1, p0

    check-cast v1, Lrx/exceptions/OnErrorFailedException;

    throw v1

    .line 88
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1b
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-nez v0, :cond_38

    .line 90
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_34

    .line 92
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_30

    .line 94
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_2c

    .line 97
    return-void

    .line 95
    :cond_2c
    move-object v0, p0

    check-cast v0, Ljava/lang/LinkageError;

    throw v0

    .line 93
    :cond_30
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 91
    :cond_34
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0

    .line 89
    :cond_38
    move-object v0, p0

    check-cast v0, Ljava/lang/StackOverflowError;

    throw v0

    .line 78
    :cond_3c
    move-object v0, p0

    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0
.end method

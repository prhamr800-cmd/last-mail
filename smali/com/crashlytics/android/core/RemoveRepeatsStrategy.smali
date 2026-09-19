###### Class com.crashlytics.android.core.RemoveRepeatsStrategy (com.crashlytics.android.core.RemoveRepeatsStrategy)
.class Lcom/crashlytics/android/core/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source "RemoveRepeatsStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maxRepetitions:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxRepetitions"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    .line 25
    return-void
.end method

.method private static isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z
    .registers 8
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "prevIndex"    # I
    .param p2, "currentIndex"    # I

    .line 84
    sub-int v0, p2, p1

    .line 86
    .local v0, "windowSize":I
    add-int v1, p2, v0

    array-length v2, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_9

    .line 87
    return v3

    .line 90
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 91
    add-int v2, p1, v1

    aget-object v2, p0, v2

    add-int v4, p2, v1

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 92
    return v3

    .line 90
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 95
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method private static trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .registers 13
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "maxRepetitions"    # I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "mostRecentIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/StackTraceElement;Ljava/lang/Integer;>;"
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 52
    .local v1, "buffer":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 53
    .local v2, "trimmedLength":I
    const/4 v3, 0x1

    .line 54
    .local v3, "numRepeats":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v3, "trimmedLength":I
    .local v5, "numRepeats":I
    :goto_e
    array-length v6, p0

    if-ge v2, v6, :cond_4a

    .line 55
    move v6, v2

    .line 56
    .local v6, "currentIndex":I
    aget-object v7, p0, v2

    .line 57
    .local v7, "currentFrame":Ljava/lang/StackTraceElement;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 58
    .local v8, "previousIndex":Ljava/lang/Integer;
    if-eqz v8, :cond_39

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p0, v9, v2}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z

    move-result v9

    if-nez v9, :cond_27

    goto :goto_39

    .line 65
    :cond_27
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v9, v2, v9

    .line 66
    .local v9, "windowSize":I
    if-ge v5, p1, :cond_35

    .line 67
    invoke-static {p0, v2, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/2addr v3, v9

    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 71
    :cond_35
    add-int/lit8 v10, v9, -0x1

    add-int/2addr v2, v10

    goto :goto_40

    .line 60
    .end local v9    # "windowSize":I
    :cond_39
    :goto_39
    const/4 v5, 0x1

    .line 61
    aget-object v9, p0, v2

    aput-object v9, v1, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 73
    :goto_40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v6    # "currentIndex":I
    .end local v7    # "currentFrame":Ljava/lang/StackTraceElement;
    .end local v8    # "previousIndex":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 77
    .end local v2    # "i":I
    :cond_4a
    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 78
    .local v2, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v6, v2

    invoke-static {v1, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v2
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 5
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .line 29
    iget v0, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    invoke-static {p1, v0}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 30
    .local v0, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    .line 31
    return-object v0

    .line 33
    :cond_b
    return-object p1
.end method

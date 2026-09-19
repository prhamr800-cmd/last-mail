###### Class com.crashlytics.android.core.MiddleOutFallbackStrategy (com.crashlytics.android.core.MiddleOutFallbackStrategy)
.class Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V
    .registers 4
    .param p1, "maximumStackSize"    # I
    .param p2, "strategies"    # [Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    .line 16
    iput-object p2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .line 17
    new-instance v0, Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/MiddleOutStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    .line 18
    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 9
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .line 22
    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v0, v1, :cond_6

    .line 23
    return-object p1

    .line 26
    :cond_6
    move-object v0, p1

    .line 27
    .local v0, "trimmed":[Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .local v1, "arr$":[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_b
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 28
    .local v4, "strategy":Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    array-length v5, v0

    iget v6, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v5, v6, :cond_15

    .line 29
    goto :goto_1c

    .line 32
    :cond_15
    invoke-interface {v4, p1}, Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 27
    .end local v4    # "strategy":Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 35
    .end local v1    # "arr$":[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1c
    :goto_1c
    array-length v1, v0

    iget v2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le v1, v2, :cond_27

    .line 36
    iget-object v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 39
    :cond_27
    return-object v0
.end method

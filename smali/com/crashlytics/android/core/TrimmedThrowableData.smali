###### Class com.crashlytics.android.core.TrimmedThrowableData (com.crashlytics.android.core.TrimmedThrowableData)
.class Lcom/crashlytics/android/core/TrimmedThrowableData;
.super Ljava/lang/Object;
.source "TrimmedThrowableData.java"


# instance fields
.field public final cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

.field public final className:Ljava/lang/String;

.field public final localizedMessage:Ljava/lang/String;

.field public final stacktrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "trimmingStrategy"    # Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->className:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 20
    .local v0, "exCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_29

    new-instance v1, Lcom/crashlytics/android/core/TrimmedThrowableData;

    invoke-direct {v1, v0, p2}, Lcom/crashlytics/android/core/TrimmedThrowableData;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iput-object v1, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    .line 21
    return-void
.end method

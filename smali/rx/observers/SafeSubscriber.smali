###### Class rx.observers.SafeSubscriber (rx.observers.SafeSubscriber)
.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 68
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    .line 69
    return-void
.end method

.method private handlePluginException(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "pluginException"    # Ljava/lang/Throwable;

    .line 223
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 149
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 152
    goto :goto_10

    .line 150
    :catch_c
    move-exception v0

    .line 151
    .local v0, "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "pluginException":Ljava/lang/Throwable;
    :goto_10
    :try_start_10
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_32

    .line 203
    nop

    .line 206
    :try_start_16
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1b

    .line 214
    nop

    .line 215
    return-void

    .line 207
    :catch_1b
    move-exception v0

    .line 209
    .local v0, "unsubscribeException":Ljava/lang/RuntimeException;
    :try_start_1c
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_28

    .line 212
    goto :goto_2c

    .line 210
    :catch_28
    move-exception v1

    .line 211
    .local v1, "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 213
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :goto_2c
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    .end local v0    # "unsubscribeException":Ljava/lang/RuntimeException;
    :catch_32
    move-exception v0

    .line 156
    .local v0, "e2":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_6a

    .line 169
    :try_start_3a
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_42

    .line 177
    nop

    .line 178
    move-object v1, v0

    check-cast v1, Lrx/exceptions/OnErrorNotImplementedException;

    throw v1

    .line 170
    :catch_42
    move-exception v1

    .line 172
    .local v1, "unsubscribeException":Ljava/lang/Throwable;
    :try_start_43
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v5

    invoke-virtual {v5}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4e} :catch_4f

    .line 175
    goto :goto_53

    .line 173
    :catch_4f
    move-exception v5

    .line 174
    .local v5, "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v5}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 176
    .end local v5    # "pluginException":Ljava/lang/Throwable;
    :goto_53
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v1, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v5, v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 186
    .end local v1    # "unsubscribeException":Ljava/lang/Throwable;
    :cond_6a
    :try_start_6a
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_75} :catch_76

    .line 189
    goto :goto_7a

    .line 187
    :catch_76
    move-exception v1

    .line 188
    .local v1, "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 191
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :goto_7a
    :try_start_7a
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_95

    .line 199
    nop

    .line 201
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v1, v2, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    :catch_95
    move-exception v1

    .line 194
    .local v1, "unsubscribeException":Ljava/lang/Throwable;
    :try_start_96
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v5

    invoke-virtual {v5}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_a1} :catch_a2

    .line 197
    goto :goto_a6

    .line 195
    :catch_a2
    move-exception v5

    .line 196
    .restart local v5    # "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v5}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 198
    .end local v5    # "pluginException":Ljava/lang/Throwable;
    :goto_a6
    new-instance v5, Lrx/exceptions/OnErrorFailedException;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v3

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string v2, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, v2, v6}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getActual()Lrx/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public onCompleted()V
    .registers 2

    .line 78
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_1e

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 81
    :try_start_7
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 90
    :goto_c
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    .line 91
    goto :goto_1e

    .line 90
    :catchall_10
    move-exception v0

    goto :goto_1a

    .line 82
    :catch_12
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_13
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_10

    goto :goto_c

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    throw v0

    .line 93
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 108
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 109
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_d

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 111
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    .line 113
    :cond_d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_9

    .line 130
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 138
    :cond_9
    goto :goto_11

    .line 132
    :catch_a
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

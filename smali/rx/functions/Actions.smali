###### Class rx.functions.Actions (rx.functions.Actions)
.class public final Lrx/functions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/functions/Actions$EmptyAction;
    }
.end annotation


# static fields
.field private static final EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lrx/functions/Actions$EmptyAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/functions/Actions$EmptyAction;-><init>(Lrx/functions/Actions$1;)V

    sput-object v0, Lrx/functions/Actions;->EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final empty()Lrx/functions/Actions$EmptyAction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Actions$EmptyAction<",
            "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lrx/functions/Actions;->EMPTY_ACTION:Lrx/functions/Actions$EmptyAction;

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action0;)Lrx/functions/Func0;
    .registers 2
    .param p0, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/functions/Func0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
    .registers 3
    .param p0, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action0;",
            "TR;)",
            "Lrx/functions/Func0<",
            "TR;>;"
        }
    .end annotation

    .line 228
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$1;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$1;-><init>(Lrx/functions/Action0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action1;)Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "TT1;>;)",
            "Lrx/functions/Func1<",
            "TT1;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 110
    .local p0, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT1;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "TT1;>;TR;)",
            "Lrx/functions/Func1<",
            "TT1;TR;>;"
        }
    .end annotation

    .line 247
    .local p0, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT1;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$2;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$2;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action2;)Lrx/functions/Func2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "TT1;TT2;>;)",
            "Lrx/functions/Func2<",
            "TT1;TT2;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 121
    .local p0, "action":Lrx/functions/Action2;, "Lrx/functions/Action2<TT1;TT2;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "TT1;TT2;>;TR;)",
            "Lrx/functions/Func2<",
            "TT1;TT2;TR;>;"
        }
    .end annotation

    .line 266
    .local p0, "action":Lrx/functions/Action2;, "Lrx/functions/Action2<TT1;TT2;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$3;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$3;-><init>(Lrx/functions/Action2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action3;)Lrx/functions/Func3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3<",
            "TT1;TT2;TT3;>;)",
            "Lrx/functions/Func3<",
            "TT1;TT2;TT3;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "action":Lrx/functions/Action3;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action3<",
            "TT1;TT2;TT3;>;TR;)",
            "Lrx/functions/Func3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .line 285
    .local p0, "action":Lrx/functions/Action3;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$4;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$4;-><init>(Lrx/functions/Action3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action4;)Lrx/functions/Func4;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4<",
            "TT1;TT2;TT3;TT4;>;)",
            "Lrx/functions/Func4<",
            "TT1;TT2;TT3;TT4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "action":Lrx/functions/Action4;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action4<",
            "TT1;TT2;TT3;TT4;>;TR;)",
            "Lrx/functions/Func4<",
            "TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation

    .line 304
    .local p0, "action":Lrx/functions/Action4;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$5;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$5;-><init>(Lrx/functions/Action4;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action5;)Lrx/functions/Func5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5<",
            "TT1;TT2;TT3;TT4;TT5;>;)",
            "Lrx/functions/Func5<",
            "TT1;TT2;TT3;TT4;TT5;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 155
    .local p0, "action":Lrx/functions/Action5;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action5<",
            "TT1;TT2;TT3;TT4;TT5;>;TR;)",
            "Lrx/functions/Func5<",
            "TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation

    .line 324
    .local p0, "action":Lrx/functions/Action5;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$6;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$6;-><init>(Lrx/functions/Action5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action6;)Lrx/functions/Func6;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;)",
            "Lrx/functions/Func6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 167
    .local p0, "action":Lrx/functions/Action6;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;TR;)",
            "Lrx/functions/Func6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation

    .line 344
    .local p0, "action":Lrx/functions/Action6;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$7;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$7;-><init>(Lrx/functions/Action6;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action7;)Lrx/functions/Func7;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lrx/functions/Func7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 179
    .local p0, "action":Lrx/functions/Action7;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;)",
            "Lrx/functions/Func7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
        }
    .end annotation

    .line 364
    .local p0, "action":Lrx/functions/Action7;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$8;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$8;-><init>(Lrx/functions/Action7;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action8;)Lrx/functions/Func8;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lrx/functions/Func8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 191
    .local p0, "action":Lrx/functions/Action8;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;)",
            "Lrx/functions/Func8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation

    .line 384
    .local p0, "action":Lrx/functions/Action8;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$9;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$9;-><init>(Lrx/functions/Action8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action9;)Lrx/functions/Func9;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lrx/functions/Func9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 203
    .local p0, "action":Lrx/functions/Action9;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;)",
            "Lrx/functions/Func9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .line 404
    .local p0, "action":Lrx/functions/Action9;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$10;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$10;-><init>(Lrx/functions/Action9;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lrx/functions/ActionN;)Lrx/functions/FuncN;
    .registers 2
    .param p0, "action"    # Lrx/functions/ActionN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/ActionN;",
            ")",
            "Lrx/functions/FuncN<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/functions/Actions;->toFunc(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;
    .registers 3
    .param p0, "action"    # Lrx/functions/ActionN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/ActionN;",
            "TR;)",
            "Lrx/functions/FuncN<",
            "TR;>;"
        }
    .end annotation

    .line 424
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/functions/Actions$11;

    invoke-direct {v0, p0, p1}, Lrx/functions/Actions$11;-><init>(Lrx/functions/ActionN;Ljava/lang/Object;)V

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass1 (rx.functions.Actions$1)
.class final Lrx/functions/Actions$1;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Ljava/lang/Object;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lrx/functions/Actions$1;->val$action:Lrx/functions/Action0;

    iput-object p2, p0, Lrx/functions/Actions$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lrx/functions/Actions$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 232
    iget-object v0, p0, Lrx/functions/Actions$1;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass10 (rx.functions.Actions$10)
.class final Lrx/functions/Actions$10;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func9<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action9;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action9;Ljava/lang/Object;)V
    .registers 3

    .line 404
    iput-object p1, p0, Lrx/functions/Actions$10;->val$action:Lrx/functions/Action9;

    iput-object p2, p0, Lrx/functions/Actions$10;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;)TR;"
        }
    .end annotation

    .line 407
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    .local p9, "t9":Ljava/lang/Object;, "TT9;"
    move-object v0, p0

    iget-object v1, v0, Lrx/functions/Actions$10;->val$action:Lrx/functions/Action9;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lrx/functions/Action9;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    iget-object v1, v0, Lrx/functions/Actions$10;->val$result:Ljava/lang/Object;

    return-object v1
.end method

###### Class rx.functions.Actions.AnonymousClass11 (rx.functions.Actions$11)
.class final Lrx/functions/Actions$11;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/ActionN;Ljava/lang/Object;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/ActionN;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/ActionN;Ljava/lang/Object;)V
    .registers 3

    .line 424
    iput-object p1, p0, Lrx/functions/Actions$11;->val$action:Lrx/functions/ActionN;

    iput-object p2, p0, Lrx/functions/Actions$11;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lrx/functions/Actions$11;->val$action:Lrx/functions/ActionN;

    invoke-interface {v0, p1}, Lrx/functions/ActionN;->call([Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lrx/functions/Actions$11;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass2 (rx.functions.Actions$2)
.class final Lrx/functions/Actions$2;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT1;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;)V
    .registers 3

    .line 247
    iput-object p1, p0, Lrx/functions/Actions$2;->val$action:Lrx/functions/Action1;

    iput-object p2, p0, Lrx/functions/Actions$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .line 250
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lrx/functions/Actions$2;->val$action:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lrx/functions/Actions$2;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass3 (rx.functions.Actions$3)
.class final Lrx/functions/Actions$3;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2<",
        "TT1;TT2;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action2;Ljava/lang/Object;)V
    .registers 3

    .line 266
    iput-object p1, p0, Lrx/functions/Actions$3;->val$action:Lrx/functions/Action2;

    iput-object p2, p0, Lrx/functions/Actions$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)TR;"
        }
    .end annotation

    .line 269
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lrx/functions/Actions$3;->val$action:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lrx/functions/Actions$3;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass4 (rx.functions.Actions$4)
.class final Lrx/functions/Actions$4;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action3;Ljava/lang/Object;)Lrx/functions/Func3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func3<",
        "TT1;TT2;TT3;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action3;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action3;Ljava/lang/Object;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lrx/functions/Actions$4;->val$action:Lrx/functions/Action3;

    iput-object p2, p0, Lrx/functions/Actions$4;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)TR;"
        }
    .end annotation

    .line 288
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lrx/functions/Actions$4;->val$action:Lrx/functions/Action3;

    invoke-interface {v0, p1, p2, p3}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lrx/functions/Actions$4;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass5 (rx.functions.Actions$5)
.class final Lrx/functions/Actions$5;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func4<",
        "TT1;TT2;TT3;TT4;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action4;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action4;Ljava/lang/Object;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lrx/functions/Actions$5;->val$action:Lrx/functions/Action4;

    iput-object p2, p0, Lrx/functions/Actions$5;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;)TR;"
        }
    .end annotation

    .line 307
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    iget-object v0, p0, Lrx/functions/Actions$5;->val$action:Lrx/functions/Action4;

    invoke-interface {v0, p1, p2, p3, p4}, Lrx/functions/Action4;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lrx/functions/Actions$5;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass6 (rx.functions.Actions$6)
.class final Lrx/functions/Actions$6;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func5<",
        "TT1;TT2;TT3;TT4;TT5;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action5;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action5;Ljava/lang/Object;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lrx/functions/Actions$6;->val$action:Lrx/functions/Action5;

    iput-object p2, p0, Lrx/functions/Actions$6;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;)TR;"
        }
    .end annotation

    .line 327
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    iget-object v0, p0, Lrx/functions/Actions$6;->val$action:Lrx/functions/Action5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lrx/functions/Action5;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lrx/functions/Actions$6;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass7 (rx.functions.Actions$7)
.class final Lrx/functions/Actions$7;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action6;Ljava/lang/Object;)Lrx/functions/Func6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func6<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action6;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action6;Ljava/lang/Object;)V
    .registers 3

    .line 344
    iput-object p1, p0, Lrx/functions/Actions$7;->val$action:Lrx/functions/Action6;

    iput-object p2, p0, Lrx/functions/Actions$7;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;)TR;"
        }
    .end annotation

    .line 347
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    iget-object v0, p0, Lrx/functions/Actions$7;->val$action:Lrx/functions/Action6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lrx/functions/Action6;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lrx/functions/Actions$7;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass8 (rx.functions.Actions$8)
.class final Lrx/functions/Actions$8;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action7;Ljava/lang/Object;)Lrx/functions/Func7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func7<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action7;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action7;Ljava/lang/Object;)V
    .registers 3

    .line 364
    iput-object p1, p0, Lrx/functions/Actions$8;->val$action:Lrx/functions/Action7;

    iput-object p2, p0, Lrx/functions/Actions$8;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;)TR;"
        }
    .end annotation

    .line 367
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    iget-object v0, p0, Lrx/functions/Actions$8;->val$action:Lrx/functions/Action7;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lrx/functions/Action7;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lrx/functions/Actions$8;->val$result:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.functions.Actions.AnonymousClass9 (rx.functions.Actions$9)
.class final Lrx/functions/Actions$9;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action8;Ljava/lang/Object;)Lrx/functions/Func8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func8<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action8;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action8;Ljava/lang/Object;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lrx/functions/Actions$9;->val$action:Lrx/functions/Action8;

    iput-object p2, p0, Lrx/functions/Actions$9;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)TR;"
        }
    .end annotation

    .line 387
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    move-object v0, p0

    iget-object v1, v0, Lrx/functions/Actions$9;->val$action:Lrx/functions/Action8;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lrx/functions/Action8;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    iget-object v1, v0, Lrx/functions/Actions$9;->val$result:Ljava/lang/Object;

    return-object v1
.end method

###### Class rx.functions.Actions.EmptyAction (rx.functions.Actions$EmptyAction)
.class final Lrx/functions/Actions$EmptyAction;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Action0;
.implements Lrx/functions/Action1;
.implements Lrx/functions/Action2;
.implements Lrx/functions/Action3;
.implements Lrx/functions/Action4;
.implements Lrx/functions/Action5;
.implements Lrx/functions/Action6;
.implements Lrx/functions/Action7;
.implements Lrx/functions/Action8;
.implements Lrx/functions/Action9;
.implements Lrx/functions/ActionN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T0:",
        "Ljava/lang/Object;",
        "T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "T7:",
        "Ljava/lang/Object;",
        "T8:",
        "Ljava/lang/Object;",
        "T9:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action0;",
        "Lrx/functions/Action1<",
        "TT0;>;",
        "Lrx/functions/Action2<",
        "TT0;TT1;>;",
        "Lrx/functions/Action3<",
        "TT0;TT1;TT2;>;",
        "Lrx/functions/Action4<",
        "TT0;TT1;TT2;TT3;>;",
        "Lrx/functions/Action5<",
        "TT0;TT1;TT2;TT3;TT4;>;",
        "Lrx/functions/Action6<",
        "TT0;TT1;TT2;TT3;TT4;TT5;>;",
        "Lrx/functions/Action7<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;>;",
        "Lrx/functions/Action8<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;",
        "Lrx/functions/Action9<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;",
        "Lrx/functions/ActionN;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Actions$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/functions/Actions$1;

    .line 34
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    invoke-direct {p0}, Lrx/functions/Actions$EmptyAction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 1

    .line 48
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    return-void
.end method

.method public call(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    .local p8, "t8":Ljava/lang/Object;, "TT7;"
    return-void
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    .local p8, "t8":Ljava/lang/Object;, "TT7;"
    .local p9, "t9":Ljava/lang/Object;, "TT8;"
    return-void
.end method

.method public varargs call([Ljava/lang/Object;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 88
    .local p0, "this":Lrx/functions/Actions$EmptyAction;, "Lrx/functions/Actions$EmptyAction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    return-void
.end method

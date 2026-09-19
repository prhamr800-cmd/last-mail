###### Class rx.internal.util.UtilityFunctions (rx.internal.util.UtilityFunctions)
.class public final Lrx/internal/util/UtilityFunctions;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/UtilityFunctions$NullFunction;,
        Lrx/internal/util/UtilityFunctions$AlwaysFalse;,
        Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    }
.end annotation


# static fields
.field private static final NULL_FUNCTION:Lrx/internal/util/UtilityFunctions$NullFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    new-instance v0, Lrx/internal/util/UtilityFunctions$NullFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/util/UtilityFunctions$NullFunction;-><init>(Lrx/internal/util/UtilityFunctions$1;)V

    sput-object v0, Lrx/internal/util/UtilityFunctions;->NULL_FUNCTION:Lrx/internal/util/UtilityFunctions$NullFunction;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static alwaysFalse()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method

.method public static alwaysTrue()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method

.method public static identity()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1<",
            "TT;TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lrx/internal/util/UtilityFunctions$1;

    invoke-direct {v0}, Lrx/internal/util/UtilityFunctions$1;-><init>()V

    return-object v0
.end method

.method public static returnNull()Lrx/internal/util/UtilityFunctions$NullFunction;
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
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/UtilityFunctions$NullFunction<",
            "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lrx/internal/util/UtilityFunctions;->NULL_FUNCTION:Lrx/internal/util/UtilityFunctions$NullFunction;

    return-object v0
.end method

###### Class rx.internal.util.UtilityFunctions.AnonymousClass1 (rx.internal.util.UtilityFunctions$1)
.class final Lrx/internal/util/UtilityFunctions$1;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 59
    .local p1, "o":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

###### Class rx.internal.util.UtilityFunctions.AlwaysFalse (rx.internal.util.UtilityFunctions$AlwaysFalse)
.class final enum Lrx/internal/util/UtilityFunctions$AlwaysFalse;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlwaysFalse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/util/UtilityFunctions$AlwaysFalse;",
        ">;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

.field public static final enum INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/util/UtilityFunctions$AlwaysFalse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    sget-object v1, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/UtilityFunctions$AlwaysFalse;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/UtilityFunctions$AlwaysFalse;
    .registers 1

    .line 73
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    invoke-virtual {v0}, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Lrx/internal/util/UtilityFunctions$AlwaysFalse;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.UtilityFunctions.AlwaysTrue (rx.internal.util.UtilityFunctions$AlwaysTrue)
.class final enum Lrx/internal/util/UtilityFunctions$AlwaysTrue;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlwaysTrue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/util/UtilityFunctions$AlwaysTrue;",
        ">;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

.field public static final enum INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/util/UtilityFunctions$AlwaysTrue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    sget-object v1, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    aput-object v1, v0, v2

    sput-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/UtilityFunctions$AlwaysTrue;
    .registers 1

    .line 64
    sget-object v0, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->$VALUES:[Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    invoke-virtual {v0}, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, p1}, Lrx/internal/util/UtilityFunctions$AlwaysTrue;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.UtilityFunctions.NullFunction (rx.internal.util.UtilityFunctions$NullFunction)
.class final Lrx/internal/util/UtilityFunctions$NullFunction;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"

# interfaces
.implements Lrx/functions/Func0;
.implements Lrx/functions/Func1;
.implements Lrx/functions/Func2;
.implements Lrx/functions/Func3;
.implements Lrx/functions/Func4;
.implements Lrx/functions/Func5;
.implements Lrx/functions/Func6;
.implements Lrx/functions/Func7;
.implements Lrx/functions/Func8;
.implements Lrx/functions/Func9;
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/UtilityFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullFunction"
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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "TR;>;",
        "Lrx/functions/Func1<",
        "TT0;TR;>;",
        "Lrx/functions/Func2<",
        "TT0;TT1;TR;>;",
        "Lrx/functions/Func3<",
        "TT0;TT1;TT2;TR;>;",
        "Lrx/functions/Func4<",
        "TT0;TT1;TT2;TT3;TR;>;",
        "Lrx/functions/Func5<",
        "TT0;TT1;TT2;TT3;TT4;TR;>;",
        "Lrx/functions/Func6<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TR;>;",
        "Lrx/functions/Func7<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TR;>;",
        "Lrx/functions/Func8<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;",
        "Lrx/functions/Func9<",
        "TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;",
        "Lrx/functions/FuncN<",
        "TR;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 95
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/UtilityFunctions$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/util/UtilityFunctions$1;

    .line 95
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    invoke-direct {p0}, Lrx/internal/util/UtilityFunctions$NullFunction;-><init>()V

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

    .line 109
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;)TR;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;)TR;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;)TR;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;)TR;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;)TR;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;)TR;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;)TR;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;)TR;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    .local p8, "t8":Ljava/lang/Object;, "TT7;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)TR;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT0;"
    .local p2, "t2":Ljava/lang/Object;, "TT1;"
    .local p3, "t3":Ljava/lang/Object;, "TT2;"
    .local p4, "t4":Ljava/lang/Object;, "TT3;"
    .local p5, "t5":Ljava/lang/Object;, "TT4;"
    .local p6, "t6":Ljava/lang/Object;, "TT5;"
    .local p7, "t7":Ljava/lang/Object;, "TT6;"
    .local p8, "t8":Ljava/lang/Object;, "TT7;"
    .local p9, "t9":Ljava/lang/Object;, "TT8;"
    const/4 v0, 0x0

    return-object v0
.end method

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

    .line 159
    .local p0, "this":Lrx/internal/util/UtilityFunctions$NullFunction;, "Lrx/internal/util/UtilityFunctions$NullFunction<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.android.lifecycle.LifecycleEvent (rx.android.lifecycle.LifecycleEvent)
.class public final enum Lrx/android/lifecycle/LifecycleEvent;
.super Ljava/lang/Enum;
.source "LifecycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum ATTACH:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum CREATE:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum CREATE_VIEW:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum DESTROY:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum DETACH:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum PAUSE:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum RESUME:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum START:Lrx/android/lifecycle/LifecycleEvent;

.field public static final enum STOP:Lrx/android/lifecycle/LifecycleEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 22
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->ATTACH:Lrx/android/lifecycle/LifecycleEvent;

    .line 23
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "CREATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->CREATE:Lrx/android/lifecycle/LifecycleEvent;

    .line 24
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "CREATE_VIEW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->CREATE_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    .line 25
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->START:Lrx/android/lifecycle/LifecycleEvent;

    .line 26
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "RESUME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->RESUME:Lrx/android/lifecycle/LifecycleEvent;

    .line 27
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "PAUSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    .line 28
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "STOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    .line 29
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "DESTROY_VIEW"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    .line 30
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "DESTROY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    .line 31
    new-instance v0, Lrx/android/lifecycle/LifecycleEvent;

    const-string v1, "DETACH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lrx/android/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Lrx/android/lifecycle/LifecycleEvent;

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->ATTACH:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v2

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->CREATE:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v3

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->CREATE_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v4

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->START:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v5

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->RESUME:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v6

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v7

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v8

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v9

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v10

    sget-object v1, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    aput-object v1, v0, v11

    sput-object v0, Lrx/android/lifecycle/LifecycleEvent;->$VALUES:[Lrx/android/lifecycle/LifecycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/android/lifecycle/LifecycleEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lrx/android/lifecycle/LifecycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/android/lifecycle/LifecycleEvent;

    return-object v0
.end method

.method public static values()[Lrx/android/lifecycle/LifecycleEvent;
    .registers 1

    .line 20
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->$VALUES:[Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {v0}, [Lrx/android/lifecycle/LifecycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/android/lifecycle/LifecycleEvent;

    return-object v0
.end method

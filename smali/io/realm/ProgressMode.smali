###### Class io.realm.ProgressMode (io.realm.ProgressMode)
.class public final enum Lio/realm/ProgressMode;
.super Ljava/lang/Enum;
.source "ProgressMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/ProgressMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/ProgressMode;

.field public static final enum CURRENT_CHANGES:Lio/realm/ProgressMode;

.field public static final enum INDEFINITELY:Lio/realm/ProgressMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 35
    new-instance v0, Lio/realm/ProgressMode;

    const-string v1, "CURRENT_CHANGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/ProgressMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ProgressMode;->CURRENT_CHANGES:Lio/realm/ProgressMode;

    .line 46
    new-instance v0, Lio/realm/ProgressMode;

    const-string v1, "INDEFINITELY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/ProgressMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/ProgressMode;->INDEFINITELY:Lio/realm/ProgressMode;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/ProgressMode;

    sget-object v1, Lio/realm/ProgressMode;->CURRENT_CHANGES:Lio/realm/ProgressMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/ProgressMode;->INDEFINITELY:Lio/realm/ProgressMode;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/ProgressMode;->$VALUES:[Lio/realm/ProgressMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/ProgressMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lio/realm/ProgressMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/ProgressMode;

    return-object v0
.end method

.method public static values()[Lio/realm/ProgressMode;
    .registers 1

    .line 22
    sget-object v0, Lio/realm/ProgressMode;->$VALUES:[Lio/realm/ProgressMode;

    invoke-virtual {v0}, [Lio/realm/ProgressMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/ProgressMode;

    return-object v0
.end method

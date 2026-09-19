###### Class com.digikala.dms.helper.touch.ButtonsState (com.digikala.dms.helper.touch.ButtonsState)
.class final enum Lcom/digikala/dms/helper/touch/ButtonsState;
.super Ljava/lang/Enum;
.source "SwipeMenuCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/digikala/dms/helper/touch/ButtonsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/digikala/dms/helper/touch/ButtonsState;

.field public static final enum GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

.field public static final enum RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lcom/digikala/dms/helper/touch/ButtonsState;

    const-string v1, "GONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/helper/touch/ButtonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 20
    new-instance v0, Lcom/digikala/dms/helper/touch/ButtonsState;

    const-string v1, "RIGHT_VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/digikala/dms/helper/touch/ButtonsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/digikala/dms/helper/touch/ButtonsState;->$VALUES:[Lcom/digikala/dms/helper/touch/ButtonsState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/digikala/dms/helper/touch/ButtonsState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/digikala/dms/helper/touch/ButtonsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/helper/touch/ButtonsState;

    return-object v0
.end method

.method public static values()[Lcom/digikala/dms/helper/touch/ButtonsState;
    .registers 1

    .line 17
    sget-object v0, Lcom/digikala/dms/helper/touch/ButtonsState;->$VALUES:[Lcom/digikala/dms/helper/touch/ButtonsState;

    invoke-virtual {v0}, [Lcom/digikala/dms/helper/touch/ButtonsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/digikala/dms/helper/touch/ButtonsState;

    return-object v0
.end method

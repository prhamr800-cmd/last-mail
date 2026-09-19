###### Class com.digikala.dms.util.Constant (com.digikala.dms.util.Constant)
.class public final Lcom/digikala/dms/util/Constant;
.super Ljava/lang/Object;
.source "Constant.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/util/Constant$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/digikala/dms/util/Constant;",
        "",
        "()V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final Companion:Lcom/digikala/dms/util/Constant$Companion;

# The value of this static final field might be set in the static constructor
.field private static final EXTRA_REASON_TYPE_CANCEL:Ljava/lang/String; = "cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final EXTRA_REASON_TYPE_RETURN:Ljava/lang/String; = "cancel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final EXTRA_SCAN_FOR_DELETE:Ljava/lang/String; = "scan_for_delete"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final EXTRA_SCAN_FOR_INSERT:Ljava/lang/String; = "scan_for_insert"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/digikala/dms/util/Constant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/util/Constant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    .line 5
    const-string v0, "cancel"

    sput-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_REASON_TYPE_CANCEL:Ljava/lang/String;

    .line 6
    const-string v0, "cancel"

    sput-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_REASON_TYPE_RETURN:Ljava/lang/String;

    .line 9
    const-string v0, "scan_for_delete"

    sput-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_SCAN_FOR_DELETE:Ljava/lang/String;

    .line 10
    const-string v0, "scan_for_insert"

    sput-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_SCAN_FOR_INSERT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEXTRA_REASON_TYPE_CANCEL$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_REASON_TYPE_CANCEL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_REASON_TYPE_RETURN$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_REASON_TYPE_RETURN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_SCAN_FOR_DELETE$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_SCAN_FOR_DELETE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_SCAN_FOR_INSERT$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/digikala/dms/util/Constant;->EXTRA_SCAN_FOR_INSERT:Ljava/lang/String;

    return-object v0
.end method

###### Class com.digikala.dms.util.Constant.Companion (com.digikala.dms.util.Constant$Companion)
.class public final Lcom/digikala/dms/util/Constant$Companion;
.super Ljava/lang/Object;
.source "Constant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/util/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/digikala/dms/util/Constant$Companion;",
        "",
        "()V",
        "EXTRA_REASON_TYPE_CANCEL",
        "",
        "getEXTRA_REASON_TYPE_CANCEL",
        "()Ljava/lang/String;",
        "EXTRA_REASON_TYPE_RETURN",
        "getEXTRA_REASON_TYPE_RETURN",
        "EXTRA_SCAN_FOR_DELETE",
        "getEXTRA_SCAN_FOR_DELETE",
        "EXTRA_SCAN_FOR_INSERT",
        "getEXTRA_SCAN_FOR_INSERT",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 4
    invoke-direct {p0}, Lcom/digikala/dms/util/Constant$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXTRA_REASON_TYPE_CANCEL()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    invoke-static {}, Lcom/digikala/dms/util/Constant;->access$getEXTRA_REASON_TYPE_CANCEL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEXTRA_REASON_TYPE_RETURN()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-static {}, Lcom/digikala/dms/util/Constant;->access$getEXTRA_REASON_TYPE_RETURN$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEXTRA_SCAN_FOR_DELETE()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    invoke-static {}, Lcom/digikala/dms/util/Constant;->access$getEXTRA_SCAN_FOR_DELETE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEXTRA_SCAN_FOR_INSERT()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    invoke-static {}, Lcom/digikala/dms/util/Constant;->access$getEXTRA_SCAN_FOR_INSERT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

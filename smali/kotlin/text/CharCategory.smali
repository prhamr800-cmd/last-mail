###### Class kotlin.text.CharCategory (kotlin.text.CharCategory)
.class public final enum Lkotlin/text/CharCategory;
.super Ljava/lang/Enum;
.source "CharCategory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharCategory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/CharCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008 \u0008\u0086\u0001\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001-B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0086\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,\u00a8\u0006."
    }
    d2 = {
        "Lkotlin/text/CharCategory;",
        "",
        "value",
        "",
        "code",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "getValue",
        "()I",
        "contains",
        "",
        "char",
        "",
        "UNASSIGNED",
        "UPPERCASE_LETTER",
        "LOWERCASE_LETTER",
        "TITLECASE_LETTER",
        "MODIFIER_LETTER",
        "OTHER_LETTER",
        "NON_SPACING_MARK",
        "ENCLOSING_MARK",
        "COMBINING_SPACING_MARK",
        "DECIMAL_DIGIT_NUMBER",
        "LETTER_NUMBER",
        "OTHER_NUMBER",
        "SPACE_SEPARATOR",
        "LINE_SEPARATOR",
        "PARAGRAPH_SEPARATOR",
        "CONTROL",
        "FORMAT",
        "PRIVATE_USE",
        "SURROGATE",
        "DASH_PUNCTUATION",
        "START_PUNCTUATION",
        "END_PUNCTUATION",
        "CONNECTOR_PUNCTUATION",
        "OTHER_PUNCTUATION",
        "MATH_SYMBOL",
        "CURRENCY_SYMBOL",
        "MODIFIER_SYMBOL",
        "OTHER_SYMBOL",
        "INITIAL_QUOTE_PUNCTUATION",
        "FINAL_QUOTE_PUNCTUATION",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharCategory;

.field public static final enum COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum CONTROL:Lkotlin/text/CharCategory;

.field public static final enum CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

.field public static final Companion:Lkotlin/text/CharCategory$Companion;

.field public static final enum DASH_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum ENCLOSING_MARK:Lkotlin/text/CharCategory;

.field public static final enum END_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum FORMAT:Lkotlin/text/CharCategory;

.field public static final enum INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum LETTER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum LINE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum LOWERCASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MATH_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum NON_SPACING_MARK:Lkotlin/text/CharCategory;

.field public static final enum OTHER_LETTER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_NUMBER:Lkotlin/text/CharCategory;

.field public static final enum OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum OTHER_SYMBOL:Lkotlin/text/CharCategory;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum PRIVATE_USE:Lkotlin/text/CharCategory;

.field public static final enum SPACE_SEPARATOR:Lkotlin/text/CharCategory;

.field public static final enum START_PUNCTUATION:Lkotlin/text/CharCategory;

.field public static final enum SURROGATE:Lkotlin/text/CharCategory;

.field public static final enum TITLECASE_LETTER:Lkotlin/text/CharCategory;

.field public static final enum UNASSIGNED:Lkotlin/text/CharCategory;

.field public static final enum UPPERCASE_LETTER:Lkotlin/text/CharCategory;

.field private static final categoryMap$delegate:Lkotlin/Lazy;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x1e

    new-array v0, v0, [Lkotlin/text/CharCategory;

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "UNASSIGNED"

    .line 11
    const-string v3, "Cn"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UNASSIGNED:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "UPPERCASE_LETTER"

    .line 16
    const-string v3, "Lu"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->UPPERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LOWERCASE_LETTER"

    .line 21
    const-string v3, "Ll"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LOWERCASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "TITLECASE_LETTER"

    .line 26
    const-string v3, "Lt"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->TITLECASE_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MODIFIER_LETTER"

    .line 31
    const-string v3, "Lm"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_LETTER"

    .line 36
    const-string v3, "Lo"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_LETTER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "NON_SPACING_MARK"

    .line 41
    const-string v3, "Mn"

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->NON_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "ENCLOSING_MARK"

    .line 46
    const-string v3, "Me"

    const/4 v4, 0x7

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->ENCLOSING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "COMBINING_SPACING_MARK"

    .line 51
    const-string v3, "Mc"

    const/16 v4, 0x8

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->COMBINING_SPACING_MARK:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "DECIMAL_DIGIT_NUMBER"

    .line 56
    const-string v3, "Nd"

    const/16 v4, 0x9

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DECIMAL_DIGIT_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LETTER_NUMBER"

    .line 61
    const-string v3, "Nl"

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LETTER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_NUMBER"

    .line 66
    const-string v3, "No"

    const/16 v4, 0xb

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_NUMBER:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "SPACE_SEPARATOR"

    .line 71
    const-string v3, "Zs"

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SPACE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "LINE_SEPARATOR"

    .line 76
    const-string v3, "Zl"

    const/16 v4, 0xd

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->LINE_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "PARAGRAPH_SEPARATOR"

    .line 81
    const-string v3, "Zp"

    const/16 v4, 0xe

    invoke-direct {v1, v2, v4, v4, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharCategory;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONTROL"

    .line 86
    const-string v3, "Cc"

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONTROL:Lkotlin/text/CharCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FORMAT"

    .line 91
    const-string v3, "Cf"

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FORMAT:Lkotlin/text/CharCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "PRIVATE_USE"

    .line 96
    const-string v3, "Co"

    const/16 v4, 0x11

    const/16 v5, 0x12

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->PRIVATE_USE:Lkotlin/text/CharCategory;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "SURROGATE"

    .line 101
    const-string v3, "Cs"

    const/16 v4, 0x12

    const/16 v5, 0x13

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->SURROGATE:Lkotlin/text/CharCategory;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "DASH_PUNCTUATION"

    .line 106
    const-string v3, "Pd"

    const/16 v4, 0x13

    const/16 v5, 0x14

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->DASH_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "START_PUNCTUATION"

    .line 111
    const-string v3, "Ps"

    const/16 v4, 0x14

    const/16 v5, 0x15

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->START_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "END_PUNCTUATION"

    .line 116
    const-string v3, "Pe"

    const/16 v4, 0x15

    const/16 v5, 0x16

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->END_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CONNECTOR_PUNCTUATION"

    .line 121
    const-string v3, "Pc"

    const/16 v4, 0x16

    const/16 v5, 0x17

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CONNECTOR_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_PUNCTUATION"

    .line 126
    const-string v3, "Po"

    const/16 v4, 0x17

    const/16 v5, 0x18

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MATH_SYMBOL"

    .line 131
    const-string v3, "Sm"

    const/16 v4, 0x18

    const/16 v5, 0x19

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MATH_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "CURRENCY_SYMBOL"

    .line 136
    const-string v3, "Sc"

    const/16 v4, 0x19

    const/16 v5, 0x1a

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->CURRENCY_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "MODIFIER_SYMBOL"

    .line 141
    const-string v3, "Sk"

    const/16 v4, 0x1a

    const/16 v5, 0x1b

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->MODIFIER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "OTHER_SYMBOL"

    .line 146
    const-string v3, "So"

    const/16 v4, 0x1b

    const/16 v5, 0x1c

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->OTHER_SYMBOL:Lkotlin/text/CharCategory;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "INITIAL_QUOTE_PUNCTUATION"

    .line 151
    const-string v3, "Pi"

    const/16 v4, 0x1c

    const/16 v5, 0x1d

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->INITIAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/text/CharCategory;

    const-string v2, "FINAL_QUOTE_PUNCTUATION"

    .line 156
    const-string v3, "Pf"

    const/16 v4, 0x1d

    const/16 v5, 0x1e

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/text/CharCategory;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lkotlin/text/CharCategory;->FINAL_QUOTE_PUNCTUATION:Lkotlin/text/CharCategory;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    new-instance v0, Lkotlin/text/CharCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/CharCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/CharCategory;->Companion:Lkotlin/text/CharCategory$Companion;

    .line 165
    sget-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharCategory;->categoryMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "value"    # I
    .param p4, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharCategory;->value:I

    iput-object p4, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCategoryMap$cp()Lkotlin/Lazy;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    sget-object v0, Lkotlin/text/CharCategory;->categoryMap$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharCategory;
    .registers 2

    const-class v0, Lkotlin/text/CharCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/CharCategory;

    return-object p0
.end method

.method public static values()[Lkotlin/text/CharCategory;
    .registers 1

    sget-object v0, Lkotlin/text/CharCategory;->$VALUES:[Lkotlin/text/CharCategory;

    invoke-virtual {v0}, [Lkotlin/text/CharCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharCategory;

    return-object v0
.end method


# virtual methods
.method public final contains(C)Z
    .registers 4
    .param p1, "char"    # C

    .line 161
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    iget v1, p0, Lkotlin/text/CharCategory;->value:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final getCode()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lkotlin/text/CharCategory;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .registers 2

    .line 7
    iget v0, p0, Lkotlin/text/CharCategory;->value:I

    return v0
.end method

###### Class kotlin.text.CharCategory.Companion (kotlin.text.CharCategory$Companion)
.class public final Lkotlin/text/CharCategory$Companion;
.super Ljava/lang/Object;
.source "CharCategory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion\n*L\n1#1,169:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0005R\'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/text/CharCategory$Companion;",
        "",
        "()V",
        "categoryMap",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "getCategoryMap",
        "()Ljava/util/Map;",
        "categoryMap$delegate",
        "Lkotlin/Lazy;",
        "valueOf",
        "category",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lkotlin/text/CharCategory$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "categoryMap"

    const-string v4, "getCategoryMap()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/text/CharCategory$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 164
    invoke-direct {p0}, Lkotlin/text/CharCategory$Companion;-><init>()V

    return-void
.end method

.method private final getCategoryMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/text/CharCategory;->access$getCategoryMap$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lkotlin/text/CharCategory$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final valueOf(I)Lkotlin/text/CharCategory;
    .registers 5
    .param p1, "category"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 167
    move-object v0, p0

    check-cast v0, Lkotlin/text/CharCategory$Companion;

    invoke-direct {v0}, Lkotlin/text/CharCategory$Companion;->getCategoryMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/CharCategory;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

###### Class kotlin.text.CharCategory$Companion$categoryMap$2 (kotlin.text.CharCategory$Companion$categoryMap$2)
.class final Lkotlin/text/CharCategory$Companion$categoryMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharCategory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharCategory;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,169:1\n5928#2,2:170\n6152#2,4:172\n*E\n*S KotlinDebug\n*F\n+ 1 CharCategory.kt\nkotlin/text/CharCategory$Companion$categoryMap$2\n*L\n165#1,2:170\n165#1,4:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;

    invoke-direct {v0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 165
    invoke-static {}, Lkotlin/text/CharCategory;->values()[Lkotlin/text/CharCategory;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v2, v1

    .line 170
    .local v2, "$i$f$associateBy":I
    array-length v3, v0

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 171
    .local v3, "capacity$iv":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .local v4, "destination$iv$iv":Ljava/util/Map;
    move-object v5, v0

    .local v5, "$receiver$iv$iv":[Ljava/lang/Object;
    move v6, v1

    .line 172
    .local v6, "$i$f$associateByTo":I
    const/4 v7, 0x0

    :goto_1d
    array-length v8, v5

    if-ge v1, v8, :cond_33

    aget-object v8, v5, v1

    .line 173
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/text/CharCategory;

    .line 165
    .local v7, "$i$a$1$associateBy":I
    .local v9, "it":Lkotlin/text/CharCategory;
    invoke-virtual {v9}, Lkotlin/text/CharCategory;->getValue()I

    move-result v9

    .end local v7    # "$i$a$1$associateBy":I
    .end local v9    # "it":Lkotlin/text/CharCategory;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 175
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_33
    nop

    .line 165
    .end local v0    # "$receiver$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$associateBy":I
    .end local v3    # "capacity$iv":I
    .end local v4    # "destination$iv$iv":Ljava/util/Map;
    .end local v5    # "$receiver$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$associateByTo":I
    return-object v4
.end method

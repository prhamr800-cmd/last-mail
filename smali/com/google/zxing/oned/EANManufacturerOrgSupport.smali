###### Class com.google.zxing.oned.EANManufacturerOrgSupport (com.google.zxing.oned.EANManufacturerOrgSupport)
.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "EANManufacturerOrgSupport.java"


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .registers 4
    .param p1, "range"    # [I
    .param p2, "id"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .registers 6

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_484

    if-nez v0, :cond_b

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_b
    const/4 v0, 0x2

    :try_start_c
    new-array v1, v0, [I

    fill-array-data v1, :array_488

    const-string v2, "US/CA"

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 64
    new-array v1, v0, [I

    fill-array-data v1, :array_490

    const-string v2, "US"

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 65
    new-array v1, v0, [I

    fill-array-data v1, :array_498

    const-string v2, "US/CA"

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 66
    new-array v1, v0, [I

    fill-array-data v1, :array_4a0

    const-string v2, "FR"

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x17c

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "BG"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 68
    new-array v2, v1, [I

    const/16 v3, 0x17f

    aput v3, v2, v4

    const-string v3, "SI"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 69
    new-array v2, v1, [I

    const/16 v3, 0x181

    aput v3, v2, v4

    const-string v3, "HR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 70
    new-array v2, v1, [I

    const/16 v3, 0x183

    aput v3, v2, v4

    const-string v3, "BA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 71
    new-array v2, v0, [I

    fill-array-data v2, :array_4a8

    const-string v3, "DE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 72
    new-array v2, v0, [I

    fill-array-data v2, :array_4b0

    const-string v3, "JP"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 73
    new-array v2, v0, [I

    fill-array-data v2, :array_4b8

    const-string v3, "RU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 74
    new-array v2, v1, [I

    const/16 v3, 0x1d7

    aput v3, v2, v4

    const-string v3, "TW"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 75
    new-array v2, v1, [I

    const/16 v3, 0x1da

    aput v3, v2, v4

    const-string v3, "EE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 76
    new-array v2, v1, [I

    const/16 v3, 0x1db

    aput v3, v2, v4

    const-string v3, "LV"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 77
    new-array v2, v1, [I

    const/16 v3, 0x1dc

    aput v3, v2, v4

    const-string v3, "AZ"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 78
    new-array v2, v1, [I

    const/16 v3, 0x1dd

    aput v3, v2, v4

    const-string v3, "LT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 79
    new-array v2, v1, [I

    const/16 v3, 0x1de

    aput v3, v2, v4

    const-string v3, "UZ"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 80
    new-array v2, v1, [I

    const/16 v3, 0x1df

    aput v3, v2, v4

    const-string v3, "LK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 81
    new-array v2, v1, [I

    const/16 v3, 0x1e0

    aput v3, v2, v4

    const-string v3, "PH"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 82
    new-array v2, v1, [I

    const/16 v3, 0x1e1

    aput v3, v2, v4

    const-string v3, "BY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 83
    new-array v2, v1, [I

    const/16 v3, 0x1e2

    aput v3, v2, v4

    const-string v3, "UA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 84
    new-array v2, v1, [I

    const/16 v3, 0x1e4

    aput v3, v2, v4

    const-string v3, "MD"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 85
    new-array v2, v1, [I

    const/16 v3, 0x1e5

    aput v3, v2, v4

    const-string v3, "AM"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 86
    new-array v2, v1, [I

    const/16 v3, 0x1e6

    aput v3, v2, v4

    const-string v3, "GE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 87
    new-array v2, v1, [I

    const/16 v3, 0x1e7

    aput v3, v2, v4

    const-string v3, "KZ"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 88
    new-array v2, v1, [I

    const/16 v3, 0x1e9

    aput v3, v2, v4

    const-string v3, "HK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 89
    new-array v2, v0, [I

    fill-array-data v2, :array_4c0

    const-string v3, "JP"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 90
    new-array v2, v0, [I

    fill-array-data v2, :array_4c8

    const-string v3, "GB"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 91
    new-array v2, v1, [I

    const/16 v3, 0x208

    aput v3, v2, v4

    const-string v3, "GR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 92
    new-array v2, v1, [I

    const/16 v3, 0x210

    aput v3, v2, v4

    const-string v3, "LB"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 93
    new-array v2, v1, [I

    const/16 v3, 0x211

    aput v3, v2, v4

    const-string v3, "CY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 94
    new-array v2, v1, [I

    const/16 v3, 0x213

    aput v3, v2, v4

    const-string v3, "MK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 95
    new-array v2, v1, [I

    const/16 v3, 0x217

    aput v3, v2, v4

    const-string v3, "MT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 96
    new-array v2, v1, [I

    const/16 v3, 0x21b

    aput v3, v2, v4

    const-string v3, "IE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 97
    new-array v2, v0, [I

    fill-array-data v2, :array_4d0

    const-string v3, "BE/LU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 98
    new-array v2, v1, [I

    const/16 v3, 0x230

    aput v3, v2, v4

    const-string v3, "PT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 99
    new-array v2, v1, [I

    const/16 v3, 0x239

    aput v3, v2, v4

    const-string v3, "IS"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 100
    new-array v2, v0, [I

    fill-array-data v2, :array_4d8

    const-string v3, "DK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 101
    new-array v2, v1, [I

    const/16 v3, 0x24e

    aput v3, v2, v4

    const-string v3, "PL"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 102
    new-array v2, v1, [I

    const/16 v3, 0x252

    aput v3, v2, v4

    const-string v3, "RO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 103
    new-array v2, v1, [I

    const/16 v3, 0x257

    aput v3, v2, v4

    const-string v3, "HU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 104
    new-array v2, v0, [I

    fill-array-data v2, :array_4e0

    const-string v3, "ZA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 105
    new-array v2, v1, [I

    const/16 v3, 0x25b

    aput v3, v2, v4

    const-string v3, "GH"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 106
    new-array v2, v1, [I

    const/16 v3, 0x260

    aput v3, v2, v4

    const-string v3, "BH"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 107
    new-array v2, v1, [I

    const/16 v3, 0x261

    aput v3, v2, v4

    const-string v3, "MU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 108
    new-array v2, v1, [I

    const/16 v3, 0x263

    aput v3, v2, v4

    const-string v3, "MA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 109
    new-array v2, v1, [I

    const/16 v3, 0x265

    aput v3, v2, v4

    const-string v3, "DZ"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 110
    new-array v2, v1, [I

    const/16 v3, 0x268

    aput v3, v2, v4

    const-string v3, "KE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 111
    new-array v2, v1, [I

    const/16 v3, 0x26a

    aput v3, v2, v4

    const-string v3, "CI"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 112
    new-array v2, v1, [I

    const/16 v3, 0x26b

    aput v3, v2, v4

    const-string v3, "TN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 113
    new-array v2, v1, [I

    const/16 v3, 0x26d

    aput v3, v2, v4

    const-string v3, "SY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 114
    new-array v2, v1, [I

    const/16 v3, 0x26e

    aput v3, v2, v4

    const-string v3, "EG"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 115
    new-array v2, v1, [I

    const/16 v3, 0x270

    aput v3, v2, v4

    const-string v3, "LY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 116
    new-array v2, v1, [I

    const/16 v3, 0x271

    aput v3, v2, v4

    const-string v3, "JO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 117
    new-array v2, v1, [I

    const/16 v3, 0x272

    aput v3, v2, v4

    const-string v3, "IR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 118
    new-array v2, v1, [I

    const/16 v3, 0x273

    aput v3, v2, v4

    const-string v3, "KW"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 119
    new-array v2, v1, [I

    const/16 v3, 0x274

    aput v3, v2, v4

    const-string v3, "SA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 120
    new-array v2, v1, [I

    const/16 v3, 0x275

    aput v3, v2, v4

    const-string v3, "AE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 121
    new-array v2, v0, [I

    fill-array-data v2, :array_4e8

    const-string v3, "FI"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 122
    new-array v2, v0, [I

    fill-array-data v2, :array_4f0

    const-string v3, "CN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 123
    new-array v2, v0, [I

    fill-array-data v2, :array_4f8

    const-string v3, "NO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 124
    new-array v2, v1, [I

    const/16 v3, 0x2d9

    aput v3, v2, v4

    const-string v3, "IL"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 125
    new-array v2, v0, [I

    fill-array-data v2, :array_500

    const-string v3, "SE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 126
    new-array v2, v1, [I

    const/16 v3, 0x2e4

    aput v3, v2, v4

    const-string v3, "GT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 127
    new-array v2, v1, [I

    const/16 v3, 0x2e5

    aput v3, v2, v4

    const-string v3, "SV"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 128
    new-array v2, v1, [I

    const/16 v3, 0x2e6

    aput v3, v2, v4

    const-string v3, "HN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 129
    new-array v2, v1, [I

    const/16 v3, 0x2e7

    aput v3, v2, v4

    const-string v3, "NI"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 130
    new-array v2, v1, [I

    const/16 v3, 0x2e8

    aput v3, v2, v4

    const-string v3, "CR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 131
    new-array v2, v1, [I

    const/16 v3, 0x2e9

    aput v3, v2, v4

    const-string v3, "PA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 132
    new-array v2, v1, [I

    const/16 v3, 0x2ea

    aput v3, v2, v4

    const-string v3, "DO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 133
    new-array v2, v1, [I

    const/16 v3, 0x2ee

    aput v3, v2, v4

    const-string v3, "MX"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 134
    new-array v2, v0, [I

    fill-array-data v2, :array_508

    const-string v3, "CA"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 135
    new-array v2, v1, [I

    const/16 v3, 0x2f7

    aput v3, v2, v4

    const-string v3, "VE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 136
    new-array v2, v0, [I

    fill-array-data v2, :array_510

    const-string v3, "CH"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 137
    new-array v2, v1, [I

    const/16 v3, 0x302

    aput v3, v2, v4

    const-string v3, "CO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 138
    new-array v2, v1, [I

    const/16 v3, 0x305

    aput v3, v2, v4

    const-string v3, "UY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 139
    new-array v2, v1, [I

    const/16 v3, 0x307

    aput v3, v2, v4

    const-string v3, "PE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 140
    new-array v2, v1, [I

    const/16 v3, 0x309

    aput v3, v2, v4

    const-string v3, "BO"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 141
    new-array v2, v1, [I

    const/16 v3, 0x30b

    aput v3, v2, v4

    const-string v3, "AR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 142
    new-array v2, v1, [I

    const/16 v3, 0x30c

    aput v3, v2, v4

    const-string v3, "CL"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 143
    new-array v2, v1, [I

    const/16 v3, 0x310

    aput v3, v2, v4

    const-string v3, "PY"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 144
    new-array v2, v1, [I

    const/16 v3, 0x311

    aput v3, v2, v4

    const-string v3, "PE"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 145
    new-array v2, v1, [I

    const/16 v3, 0x312

    aput v3, v2, v4

    const-string v3, "EC"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 146
    new-array v2, v0, [I

    fill-array-data v2, :array_518

    const-string v3, "BR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 147
    new-array v2, v0, [I

    fill-array-data v2, :array_520

    const-string v3, "IT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 148
    new-array v2, v0, [I

    fill-array-data v2, :array_528

    const-string v3, "ES"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 149
    new-array v2, v1, [I

    const/16 v3, 0x352

    aput v3, v2, v4

    const-string v3, "CU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 150
    new-array v2, v1, [I

    const/16 v3, 0x35a

    aput v3, v2, v4

    const-string v3, "SK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 151
    new-array v2, v1, [I

    const/16 v3, 0x35b

    aput v3, v2, v4

    const-string v3, "CZ"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 152
    new-array v2, v1, [I

    const/16 v3, 0x35c

    aput v3, v2, v4

    const-string v3, "YU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 153
    new-array v2, v1, [I

    const/16 v3, 0x361

    aput v3, v2, v4

    const-string v3, "MN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 154
    new-array v2, v1, [I

    const/16 v3, 0x363

    aput v3, v2, v4

    const-string v3, "KP"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 155
    new-array v2, v0, [I

    fill-array-data v2, :array_530

    const-string v3, "TR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 156
    new-array v2, v0, [I

    fill-array-data v2, :array_538

    const-string v3, "NL"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 157
    new-array v2, v1, [I

    const/16 v3, 0x370

    aput v3, v2, v4

    const-string v3, "KR"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 158
    new-array v2, v1, [I

    const/16 v3, 0x375

    aput v3, v2, v4

    const-string v3, "TH"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 159
    new-array v2, v1, [I

    const/16 v3, 0x378

    aput v3, v2, v4

    const-string v3, "SG"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 160
    new-array v2, v1, [I

    const/16 v3, 0x37a

    aput v3, v2, v4

    const-string v3, "IN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 161
    new-array v2, v1, [I

    const/16 v3, 0x37d

    aput v3, v2, v4

    const-string v3, "VN"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 162
    new-array v2, v1, [I

    const/16 v3, 0x380

    aput v3, v2, v4

    const-string v3, "PK"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 163
    new-array v2, v1, [I

    const/16 v3, 0x383

    aput v3, v2, v4

    const-string v3, "ID"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 164
    new-array v2, v0, [I

    fill-array-data v2, :array_540

    const-string v3, "AT"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 165
    new-array v2, v0, [I

    fill-array-data v2, :array_548

    const-string v3, "AU"

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 166
    new-array v0, v0, [I

    fill-array-data v0, :array_550

    const-string v2, "AZ"

    invoke-direct {p0, v0, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 167
    new-array v0, v1, [I

    const/16 v2, 0x3bb

    aput v2, v0, v4

    const-string v2, "MY"

    invoke-direct {p0, v0, v2}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    .line 168
    new-array v0, v1, [I

    const/16 v1, 0x3be

    aput v1, v0, v4

    const-string v1, "MO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_482
    .catchall {:try_start_c .. :try_end_482} :catchall_484

    .line 169
    monitor-exit p0

    return-void

    .line 59
    :catchall_484
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_488
    .array-data 4
        0x0
        0x13
    .end array-data

    :array_490
    .array-data 4
        0x1e
        0x27
    .end array-data

    :array_498
    .array-data 4
        0x3c
        0x8b
    .end array-data

    :array_4a0
    .array-data 4
        0x12c
        0x17b
    .end array-data

    :array_4a8
    .array-data 4
        0x190
        0x1b8
    .end array-data

    :array_4b0
    .array-data 4
        0x1c2
        0x1cb
    .end array-data

    :array_4b8
    .array-data 4
        0x1cc
        0x1d5
    .end array-data

    :array_4c0
    .array-data 4
        0x1ea
        0x1f3
    .end array-data

    :array_4c8
    .array-data 4
        0x1f4
        0x1fd
    .end array-data

    :array_4d0
    .array-data 4
        0x21c
        0x225
    .end array-data

    :array_4d8
    .array-data 4
        0x23a
        0x243
    .end array-data

    :array_4e0
    .array-data 4
        0x258
        0x259
    .end array-data

    :array_4e8
    .array-data 4
        0x280
        0x289
    .end array-data

    :array_4f0
    .array-data 4
        0x2b2
        0x2b7
    .end array-data

    :array_4f8
    .array-data 4
        0x2bc
        0x2c5
    .end array-data

    :array_500
    .array-data 4
        0x2da
        0x2e3
    .end array-data

    :array_508
    .array-data 4
        0x2f2
        0x2f3
    .end array-data

    :array_510
    .array-data 4
        0x2f8
        0x301
    .end array-data

    :array_518
    .array-data 4
        0x315
        0x316
    .end array-data

    :array_520
    .array-data 4
        0x320
        0x347
    .end array-data

    :array_528
    .array-data 4
        0x348
        0x351
    .end array-data

    :array_530
    .array-data 4
        0x364
        0x365
    .end array-data

    :array_538
    .array-data 4
        0x366
        0x36f
    .end array-data

    :array_540
    .array-data 4
        0x384
        0x397
    .end array-data

    :array_548
    .array-data 4
        0x3a2
        0x3ab
    .end array-data

    :array_550
    .array-data 4
        0x3ac
        0x3b5
    .end array-data
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "productCode"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "prefix":I
    iget-object v2, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 40
    .local v2, "max":I
    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_3c

    .line 41
    iget-object v6, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 42
    .local v5, "range":[I
    move-object v5, v6

    aget v6, v6, v0

    .line 43
    .local v6, "start":I
    if-ge v1, v6, :cond_26

    .line 44
    return-object v3

    .line 46
    :cond_26
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2c

    move v7, v6

    goto :goto_2e

    :cond_2c
    aget v7, v5, v8

    .line 47
    .local v7, "end":I
    :goto_2e
    if-gt v1, v7, :cond_39

    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 40
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 51
    .end local v4    # "i":I
    .end local v5    # "range":[I
    :cond_3c
    return-object v3
.end method

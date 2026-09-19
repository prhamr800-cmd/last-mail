###### Class com.google.zxing.oned.Code128Reader (com.google.zxing.oned.Code128Reader)
.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_3c2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3d2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3e2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3f2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_402

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_412

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_422

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_432

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_442

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_452

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_462

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_472

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_482

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_492

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4a2

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4b2

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4c2

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4d2

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4e2

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4f2

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_502

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_512

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_522

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_532

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_542

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_552

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_562

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_572

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_582

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_592

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5a2

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5b2

    const/16 v4, 0x1f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5c2

    const/16 v4, 0x20

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5d2

    const/16 v4, 0x21

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5e2

    const/16 v4, 0x22

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5f2

    const/16 v4, 0x23

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_602

    const/16 v4, 0x24

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_612

    const/16 v4, 0x25

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_622

    const/16 v4, 0x26

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_632

    const/16 v4, 0x27

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_642

    const/16 v4, 0x28

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_652

    const/16 v4, 0x29

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_662

    const/16 v4, 0x2a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_672

    const/16 v4, 0x2b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_682

    const/16 v4, 0x2c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_692

    const/16 v4, 0x2d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6a2

    const/16 v4, 0x2e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6b2

    const/16 v4, 0x2f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6c2

    const/16 v4, 0x30

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6d2

    const/16 v4, 0x31

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6e2

    const/16 v4, 0x32

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6f2

    const/16 v4, 0x33

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_702

    const/16 v4, 0x34

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_712

    const/16 v4, 0x35

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_722

    const/16 v4, 0x36

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_732

    const/16 v4, 0x37

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_742

    const/16 v4, 0x38

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_752

    const/16 v4, 0x39

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_762

    const/16 v4, 0x3a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_772

    const/16 v4, 0x3b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_782

    const/16 v4, 0x3c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_792

    const/16 v4, 0x3d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7a2

    const/16 v4, 0x3e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7b2

    const/16 v4, 0x3f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7c2

    const/16 v4, 0x40

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7d2

    const/16 v4, 0x41

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7e2

    const/16 v4, 0x42

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7f2

    const/16 v4, 0x43

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_802

    const/16 v4, 0x44

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_812

    const/16 v4, 0x45

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_822

    const/16 v4, 0x46

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_832

    const/16 v4, 0x47

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_842

    const/16 v4, 0x48

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_852

    const/16 v4, 0x49

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_862

    const/16 v4, 0x4a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_872

    const/16 v4, 0x4b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_882

    const/16 v4, 0x4c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_892

    const/16 v4, 0x4d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8a2

    const/16 v4, 0x4e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8b2

    const/16 v4, 0x4f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8c2

    const/16 v4, 0x50

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8d2

    const/16 v4, 0x51

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8e2

    const/16 v4, 0x52

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8f2

    const/16 v4, 0x53

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_902

    const/16 v4, 0x54

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_912

    const/16 v4, 0x55

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_922

    const/16 v4, 0x56

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_932

    const/16 v4, 0x57

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_942

    const/16 v4, 0x58

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_952

    const/16 v4, 0x59

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_962

    const/16 v4, 0x5a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_972

    const/16 v4, 0x5b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_982

    const/16 v4, 0x5c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_992

    const/16 v4, 0x5d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9a2

    const/16 v4, 0x5e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9b2

    const/16 v4, 0x5f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9c2

    const/16 v4, 0x60

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9d2

    const/16 v4, 0x61

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9e2

    const/16 v4, 0x62

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9f2

    const/16 v4, 0x63

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a02

    const/16 v4, 0x64

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a12

    const/16 v4, 0x65

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a22

    const/16 v4, 0x66

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a32

    const/16 v4, 0x67

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a42

    const/16 v4, 0x68

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_a52

    const/16 v2, 0x69

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_a62

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_3c2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3d2
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_3e2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3f2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_402
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_412
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_422
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_432
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_442
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_452
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_462
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_472
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_482
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_492
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_4a2
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_4b2
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_4c2
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_4d2
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_4e2
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4f2
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_502
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_512
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_522
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_532
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_542
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_552
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_562
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_572
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_582
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_592
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_5a2
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_5b2
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_5c2
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5d2
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_5e2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_5f2
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_602
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_612
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_622
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_632
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_642
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_652
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_662
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_672
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_682
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_692
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_6a2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_6b2
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6c2
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6d2
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_6e2
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_6f2
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_702
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_712
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_722
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_732
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_742
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_752
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_762
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_772
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_782
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_792
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7a2
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7b2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_7c2
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_7d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_7e2
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_7f2
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_802
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_812
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_822
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_832
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_842
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_852
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_862
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_872
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_882
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_892
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_8a2
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_8b2
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_8c2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_8d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_8e2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_8f2
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_902
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_912
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_922
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_932
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_942
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_952
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_962
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_972
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_982
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_992
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_9a2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_9b2
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_9c2
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_9d2
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_9e2
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9f2
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_a02
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_a12
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_a22
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_a32
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_a42
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_a52
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_a62
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/high16 v0, 0x3e800000    # 0.25f

    .line 218
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 219
    .local v1, "bestMatch":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "d":I
    :goto_8
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_22

    .line 220
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v4, v4, v3

    .line 221
    .local v4, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 222
    .local v2, "variance":F
    move v2, v5

    cmpg-float v5, v5, v0

    if-gez v5, :cond_1f

    .line 223
    move v0, v2

    .line 224
    move v1, v3

    .line 219
    .end local v2    # "variance":F
    .end local v4    # "pattern":[I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 228
    .end local v3    # "d":I
    :cond_22
    if-ltz v1, :cond_25

    .line 229
    return v1

    .line 231
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 17
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 171
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    .line 173
    .local v3, "rowOffset":I
    const/4 v4, 0x0

    .line 174
    .local v4, "counterPosition":I
    const/4 v5, 0x6

    new-array v5, v5, [I

    .line 175
    .local v5, "counters":[I
    move v6, v3

    .line 176
    .local v6, "patternStart":I
    const/4 v7, 0x0

    .line 179
    .local v7, "isWhite":Z
    const/4 v8, 0x0

    move v8, v6

    const/4 v9, 0x0

    move v6, v4

    move v4, v3

    .local v4, "i":I
    .local v6, "counterPosition":I
    .local v8, "patternStart":I
    :goto_16
    if-ge v4, v1, :cond_84

    .line 180
    invoke-virtual {v0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v7

    const/4 v11, 0x1

    if-eqz v10, :cond_26

    .line 181
    aget v10, v5, v6

    add-int/2addr v10, v11

    aput v10, v5, v6

    goto :goto_81

    .line 183
    :cond_26
    const/4 v10, 0x5

    if-ne v6, v10, :cond_78

    .line 184
    const/high16 v12, 0x3e800000    # 0.25f

    .line 185
    .local v12, "bestVariance":F
    const/4 v13, -0x1

    .line 186
    .local v13, "bestMatch":I
    const/16 v14, 0x67

    .local v14, "startCode":I
    :goto_2e
    const/16 v15, 0x69

    if-gt v14, v15, :cond_4a

    .line 187
    sget-object v15, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v15, v15, v14

    const v10, 0x3f333333    # 0.7f

    invoke-static {v5, v15, v10}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v10

    .line 189
    .local v9, "variance":F
    move v9, v10

    cmpg-float v10, v10, v12

    if-gez v10, :cond_46

    .line 190
    move v10, v9

    .line 191
    .end local v12    # "bestVariance":F
    .local v10, "bestVariance":F
    move v12, v14

    .line 186
    move v13, v12

    move v12, v10

    .end local v9    # "variance":F
    .end local v10    # "bestVariance":F
    .restart local v12    # "bestVariance":F
    :cond_46
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x5

    goto :goto_2e

    .line 195
    .end local v14    # "startCode":I
    :cond_4a
    const/4 v10, 0x2

    if-ltz v13, :cond_66

    sub-int v14, v4, v8

    div-int/2addr v14, v10

    sub-int v14, v8, v14

    .line 196
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v0, v14, v8, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v14

    if-eqz v14, :cond_66

    .line 197
    const/4 v9, 0x3

    new-array v9, v9, [I

    aput v8, v9, v2

    aput v4, v9, v11

    aput v13, v9, v10

    return-object v9

    .line 199
    :cond_66
    aget v14, v5, v2

    aget v15, v5, v11

    add-int/2addr v14, v15

    add-int/2addr v8, v14

    .line 200
    const/4 v14, 0x4

    invoke-static {v5, v10, v5, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    aput v2, v5, v14

    .line 202
    const/4 v10, 0x5

    aput v2, v5, v10

    .line 203
    add-int/lit8 v6, v6, -0x1

    .line 204
    .end local v12    # "bestVariance":F
    .end local v13    # "bestMatch":I
    goto :goto_7a

    .line 205
    :cond_78
    add-int/lit8 v6, v6, 0x1

    .line 207
    :goto_7a
    aput v11, v5, v6

    .line 208
    if-nez v7, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v11, 0x0

    :goto_80
    move v7, v11

    .line 179
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 211
    .end local v4    # "i":I
    :cond_84
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 41
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    sget-object v5, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_15

    :cond_14
    const/4 v5, 0x0

    .line 241
    .local v5, "convertFNC1":Z
    :goto_15
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 242
    .local v8, "startPatternInfo":[I
    move-object v8, v6

    const/4 v9, 0x2

    aget v6, v6, v9

    .line 244
    .local v6, "startCode":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v7, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object v7, v10

    int-to-byte v12, v6

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v6, :pswitch_data_2d8

    .line 259
    move/from16 v27, v5

    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    .end local v5    # "convertFNC1":Z
    .end local v6    # "startCode":I
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "startPatternInfo":[I
    .local v27, "convertFNC1":Z
    .local v34, "startCode":I
    .local v35, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .local v36, "startPatternInfo":[I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 256
    .end local v27    # "convertFNC1":Z
    .end local v34    # "startCode":I
    .end local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v36    # "startPatternInfo":[I
    .restart local v5    # "convertFNC1":Z
    .restart local v6    # "startCode":I
    .restart local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "startPatternInfo":[I
    :pswitch_3f
    const/16 v10, 0x63

    .line 257
    .local v10, "codeSet":I
    goto :goto_48

    .line 253
    .end local v10    # "codeSet":I
    :pswitch_42
    const/16 v10, 0x64

    .line 254
    .restart local v10    # "codeSet":I
    goto :goto_48

    .line 250
    .end local v10    # "codeSet":I
    :pswitch_45
    const/16 v10, 0x65

    .line 251
    .restart local v10    # "codeSet":I
    nop

    .line 259
    :goto_48
    nop

    .line 262
    const/4 v12, 0x0

    .line 263
    .local v12, "done":Z
    const/4 v13, 0x0

    .line 265
    .local v13, "isNextShifted":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v14

    .line 267
    .local v11, "result":Ljava/lang/StringBuilder;
    aget v14, v8, v4

    .line 268
    .local v14, "lastStart":I
    aget v15, v8, v3

    .line 269
    .local v15, "nextStart":I
    const/4 v3, 0x6

    new-array v4, v3, [I

    .line 271
    .local v4, "counters":[I
    const/16 v16, 0x0

    .line 272
    .local v16, "lastCode":I
    const/16 v17, 0x0

    .line 273
    .local v17, "code":I
    move/from16 v18, v6

    .line 274
    .local v18, "checksumTotal":I
    const/16 v19, 0x0

    .line 275
    .local v19, "multiplier":I
    const/16 v20, 0x1

    .line 276
    .local v20, "lastCharacterWasPrintable":Z
    const/16 v21, 0x0

    .line 277
    .local v21, "upperMode":Z
    move/from16 v23, v10

    move v9, v14

    move/from16 v14, v16

    move/from16 v24, v21

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 279
    .end local v16    # "lastCode":I
    .end local v21    # "upperMode":Z
    .local v9, "lastStart":I
    .local v10, "shiftUpperMode":Z
    .local v14, "lastCode":I
    .local v23, "codeSet":I
    .local v24, "upperMode":Z
    :goto_6e
    if-nez v12, :cond_1f2

    .line 281
    move/from16 v21, v13

    .line 282
    .local v21, "unshift":Z
    const/4 v13, 0x0

    .line 285
    move/from16 v14, v17

    .line 288
    invoke-static {v1, v4, v15}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v3

    .line 290
    .end local v17    # "code":I
    .local v3, "code":I
    int-to-byte v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v2, 0x6a

    if-eq v3, v2, :cond_87

    .line 294
    const/16 v20, 0x1

    .line 298
    :cond_87
    if-eq v3, v2, :cond_8f

    .line 299
    add-int/lit8 v19, v19, 0x1

    .line 300
    mul-int v17, v19, v3

    add-int v18, v18, v17

    .line 304
    :cond_8f
    move v9, v15

    .line 305
    move/from16 v17, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    .end local v15    # "nextStart":I
    .local v16, "nextStart":I
    :goto_95
    const/4 v2, 0x6

    if-ge v15, v2, :cond_a1

    aget v17, v4, v15

    .line 306
    .local v17, "counter":I
    add-int v16, v16, v17

    .line 305
    .end local v17    # "counter":I
    add-int/lit8 v15, v15, 0x1

    const/16 v2, 0x6a

    goto :goto_95

    .line 310
    :cond_a1
    packed-switch v3, :pswitch_data_2e2

    .line 317
    move/from16 v2, v23

    .end local v23    # "codeSet":I
    .local v2, "codeSet":I
    packed-switch v2, :pswitch_data_2ec

    .line 478
    move-object/from16 v25, v4

    move/from16 v15, v24

    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .local v15, "upperMode":Z
    .local v25, "counters":[I
    goto/16 :goto_1d4

    .line 314
    .end local v2    # "codeSet":I
    .end local v15    # "upperMode":Z
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    .restart local v23    # "codeSet":I
    .restart local v24    # "upperMode":Z
    :pswitch_af
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 320
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_b4
    const/16 v15, 0x40

    if-ge v3, v15, :cond_d2

    .line 321
    move/from16 v15, v24

    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    if-ne v10, v15, :cond_c5

    .line 322
    move-object/from16 v25, v4

    .end local v4    # "counters":[I
    .restart local v25    # "counters":[I
    add-int/lit8 v4, v3, 0x20

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_cf

    .line 324
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    :cond_c5
    move-object/from16 v25, v4

    .end local v4    # "counters":[I
    .restart local v25    # "counters":[I
    add-int/lit8 v4, v3, 0x20

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_cf
    const/4 v4, 0x0

    goto/16 :goto_14a

    .line 327
    .end local v15    # "upperMode":Z
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    .restart local v24    # "upperMode":Z
    :cond_d2
    move-object/from16 v25, v4

    move/from16 v15, v24

    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x60

    if-ge v3, v4, :cond_eb

    .line 328
    if-ne v10, v15, :cond_e3

    .line 329
    add-int/lit8 v4, v3, -0x40

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e9

    .line 331
    :cond_e3
    add-int/lit8 v4, v3, 0x40

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_e9
    const/4 v4, 0x0

    goto :goto_14a

    .line 337
    :cond_eb
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_f1

    .line 338
    const/16 v20, 0x0

    .line 340
    :cond_f1
    if-eq v3, v4, :cond_12d

    packed-switch v3, :pswitch_data_2f6

    goto :goto_12e

    .line 342
    :pswitch_f7
    if-eqz v5, :cond_12e

    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_106

    .line 346
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d4

    .line 349
    :cond_106
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1d4

    .line 358
    :pswitch_10d
    if-nez v15, :cond_115

    if-eqz v10, :cond_115

    .line 359
    const/4 v4, 0x1

    .line 360
    .end local v15    # "upperMode":Z
    .local v4, "upperMode":Z
    const/4 v10, 0x0

    goto/16 :goto_179

    .line 361
    .end local v4    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_115
    if-eqz v15, :cond_11c

    if-eqz v10, :cond_11c

    .line 362
    const/4 v4, 0x0

    .line 363
    .end local v15    # "upperMode":Z
    .restart local v4    # "upperMode":Z
    const/4 v10, 0x0

    goto :goto_179

    .line 365
    .end local v4    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_11c
    const/4 v4, 0x1

    .line 367
    .end local v10    # "shiftUpperMode":Z
    .local v4, "shiftUpperMode":Z
    goto :goto_14a

    .line 373
    .end local v4    # "shiftUpperMode":Z
    .restart local v10    # "shiftUpperMode":Z
    :pswitch_11e
    const/16 v23, 0x64

    .line 374
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_1cd

    .line 376
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_122
    const/16 v23, 0x63

    .line 377
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_1cd

    .line 369
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_126
    const/4 v4, 0x1

    .line 370
    .end local v13    # "isNextShifted":Z
    .local v4, "isNextShifted":Z
    const/16 v23, 0x64

    .line 371
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_18d

    .line 356
    .end local v4    # "isNextShifted":Z
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    .restart local v13    # "isNextShifted":Z
    :pswitch_12b
    goto/16 :goto_1d4

    .line 379
    :cond_12d
    const/4 v12, 0x1

    .line 383
    :cond_12e
    :goto_12e
    goto/16 :goto_1d4

    .line 385
    .end local v15    # "upperMode":Z
    .end local v25    # "counters":[I
    .local v4, "counters":[I
    .restart local v24    # "upperMode":Z
    :pswitch_130
    move-object/from16 v25, v4

    move/from16 v15, v24

    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x60

    if-ge v3, v4, :cond_14d

    .line 386
    if-ne v10, v15, :cond_141

    .line 387
    add-int/lit8 v4, v3, 0x20

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_149

    .line 389
    :cond_141
    add-int/lit8 v4, v3, 0x20

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_149
    const/4 v4, 0x0

    .line 478
    .end local v15    # "upperMode":Z
    .restart local v24    # "upperMode":Z
    :goto_14a
    move v10, v4

    goto/16 :goto_1d4

    .line 393
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_14d
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_153

    .line 394
    const/16 v20, 0x0

    .line 396
    :cond_153
    if-eq v3, v4, :cond_190

    packed-switch v3, :pswitch_data_308

    goto :goto_191

    .line 398
    :pswitch_159
    if-eqz v5, :cond_191

    .line 399
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_168

    .line 402
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d4

    .line 405
    :cond_168
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1d4

    .line 429
    :pswitch_16f
    const/16 v23, 0x65

    .line 430
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_1cd

    .line 414
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_173
    if-nez v15, :cond_17d

    if-eqz v10, :cond_17d

    .line 415
    const/4 v4, 0x1

    .line 416
    .end local v15    # "upperMode":Z
    .local v4, "upperMode":Z
    const/4 v10, 0x0

    .line 478
    .end local v4    # "upperMode":Z
    .restart local v24    # "upperMode":Z
    :goto_179
    move/from16 v24, v4

    goto/16 :goto_1d6

    .line 417
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_17d
    if-eqz v15, :cond_184

    if-eqz v10, :cond_184

    .line 418
    const/4 v4, 0x0

    .line 419
    .end local v15    # "upperMode":Z
    .restart local v4    # "upperMode":Z
    const/4 v10, 0x0

    goto :goto_179

    .line 421
    .end local v4    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_184
    const/4 v4, 0x1

    .line 423
    .end local v10    # "shiftUpperMode":Z
    .local v4, "shiftUpperMode":Z
    goto :goto_14a

    .line 432
    .end local v4    # "shiftUpperMode":Z
    .restart local v10    # "shiftUpperMode":Z
    :pswitch_186
    const/16 v23, 0x63

    .line 433
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto :goto_1cd

    .line 425
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_189
    const/4 v4, 0x1

    .line 426
    .end local v13    # "isNextShifted":Z
    .local v4, "isNextShifted":Z
    const/16 v23, 0x65

    .line 427
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    nop

    .line 478
    .end local v4    # "isNextShifted":Z
    .end local v15    # "upperMode":Z
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    .restart local v13    # "isNextShifted":Z
    .restart local v24    # "upperMode":Z
    :goto_18d
    move v13, v4

    goto :goto_1cd

    .line 412
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :pswitch_18f
    goto :goto_1d4

    .line 435
    :cond_190
    const/4 v12, 0x1

    .line 439
    :cond_191
    :goto_191
    goto :goto_1d4

    .line 441
    .end local v15    # "upperMode":Z
    .end local v25    # "counters":[I
    .local v4, "counters":[I
    .restart local v24    # "upperMode":Z
    :pswitch_192
    move-object/from16 v25, v4

    move/from16 v15, v24

    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1a7

    .line 442
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1a3

    .line 443
    const/16 v4, 0x30

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_1a3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1d4

    .line 447
    :cond_1a7
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_1ad

    .line 448
    const/16 v20, 0x0

    .line 450
    :cond_1ad
    if-eq v3, v4, :cond_1d2

    packed-switch v3, :pswitch_data_31a

    goto :goto_1d4

    .line 452
    :pswitch_1b3
    if-eqz v5, :cond_1d4

    .line 453
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1c1

    .line 456
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d4

    .line 459
    :cond_1c1
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d4

    .line 464
    :pswitch_1c7
    const/16 v23, 0x65

    .line 465
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto :goto_1cd

    .line 467
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    :pswitch_1ca
    const/16 v23, 0x64

    .line 468
    .end local v2    # "codeSet":I
    .restart local v23    # "codeSet":I
    nop

    .line 478
    .end local v15    # "upperMode":Z
    .end local v23    # "codeSet":I
    .restart local v2    # "codeSet":I
    .restart local v24    # "upperMode":Z
    :goto_1cd
    move/from16 v24, v15

    move/from16 v2, v23

    goto :goto_1d6

    .line 470
    .end local v24    # "upperMode":Z
    .restart local v15    # "upperMode":Z
    :cond_1d2
    const/4 v4, 0x1

    .line 478
    move v12, v4

    .end local v15    # "upperMode":Z
    .restart local v24    # "upperMode":Z
    :cond_1d4
    :goto_1d4
    move/from16 v24, v15

    :goto_1d6
    if-eqz v21, :cond_1e3

    .line 479
    const/16 v4, 0x65

    if-ne v2, v4, :cond_1df

    const/16 v26, 0x64

    goto :goto_1e1

    :cond_1df
    const/16 v26, 0x65

    :goto_1e1
    move/from16 v2, v26

    .line 482
    .end local v2    # "codeSet":I
    .end local v21    # "unshift":Z
    .restart local v23    # "codeSet":I
    :cond_1e3
    move/from16 v23, v2

    .line 277
    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v4, v25

    move-object/from16 v2, p3

    move/from16 v17, v3

    const/4 v3, 0x6

    goto/16 :goto_6e

    .line 484
    .end local v3    # "code":I
    .end local v16    # "nextStart":I
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    .local v15, "nextStart":I
    .local v17, "code":I
    :cond_1f2
    move-object/from16 v25, v4

    move/from16 v2, v23

    move/from16 v21, v24

    .end local v4    # "counters":[I
    .end local v23    # "codeSet":I
    .end local v24    # "upperMode":Z
    .restart local v2    # "codeSet":I
    .local v21, "upperMode":Z
    .restart local v25    # "counters":[I
    sub-int v3, v15, v9

    .line 489
    .local v3, "lastPatternSize":I
    invoke-virtual {v1, v15}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    .line 490
    .end local v15    # "nextStart":I
    .local v4, "nextStart":I
    nop

    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    sub-int v23, v4, v9

    const/16 v22, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v27, v5

    .end local v5    # "convertFNC1":Z
    .restart local v27    # "convertFNC1":Z
    add-int v5, v4, v23

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 490
    const/4 v15, 0x0

    invoke-virtual {v1, v4, v5, v15}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v5

    if-eqz v5, :cond_2c6

    .line 497
    mul-int v5, v19, v14

    sub-int v5, v18, v5

    .line 499
    rem-int/lit8 v5, v5, 0x67

    if-ne v5, v14, :cond_2b5

    .line 504
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move/from16 v23, v15

    .line 505
    .local v23, "resultLength":I
    move v15, v5

    .end local v23    # "resultLength":I
    .local v15, "resultLength":I
    if-eqz v5, :cond_2a4

    .line 512
    if-lez v15, :cond_23c

    if-eqz v20, :cond_23c

    .line 513
    const/16 v5, 0x63

    if-ne v2, v5, :cond_237

    .line 514
    add-int/lit8 v5, v15, -0x2

    invoke-virtual {v11, v5, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_23c

    .line 516
    :cond_237
    add-int/lit8 v5, v15, -0x1

    invoke-virtual {v11, v5, v15}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 520
    :cond_23c
    :goto_23c
    const/4 v5, 0x1

    aget v23, v8, v5

    const/4 v5, 0x0

    aget v24, v8, v5

    add-int v5, v23, v24

    int-to-float v5, v5

    const/high16 v23, 0x40000000    # 2.0f

    div-float v5, v5, v23

    .line 521
    .local v5, "left":F
    int-to-float v1, v9

    move/from16 v28, v2

    .end local v2    # "codeSet":I
    .local v28, "codeSet":I
    int-to-float v2, v3

    div-float v2, v2, v23

    add-float/2addr v1, v2

    .line 523
    .local v1, "right":F
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 524
    .local v16, "rawCodesSize":I
    move/from16 v29, v2

    .end local v16    # "rawCodesSize":I
    .local v29, "rawCodesSize":I
    new-array v2, v2, [B

    .line 525
    .local v2, "rawBytes":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_25a
    move/from16 v30, v16

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v3, v29

    move/from16 v4, v30

    .end local v16    # "i":I
    .end local v29    # "rawCodesSize":I
    .local v3, "rawCodesSize":I
    .local v4, "i":I
    .local v31, "lastPatternSize":I
    .local v32, "nextStart":I
    if-ge v4, v3, :cond_27b

    .line 526
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Byte;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Byte;->byteValue()B

    move-result v16

    aput-byte v16, v2, v4

    .line 525
    add-int/lit8 v16, v4, 0x1

    move/from16 v29, v3

    move/from16 v3, v31

    move/from16 v4, v32

    goto :goto_25a

    .line 529
    .end local v4    # "i":I
    :cond_27b
    new-instance v4, Lcom/google/zxing/Result;

    .line 530
    move/from16 v33, v3

    .end local v3    # "rawCodesSize":I
    .local v33, "rawCodesSize":I
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v34, v6

    const/4 v6, 0x2

    .end local v6    # "startCode":I
    .restart local v34    # "startCode":I
    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v35, v7

    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    new-instance v7, Lcom/google/zxing/ResultPoint;

    move-object/from16 v36, v8

    .end local v8    # "startPatternInfo":[I
    .restart local v36    # "startPatternInfo":[I
    int-to-float v8, v0

    invoke-direct {v7, v5, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    invoke-direct {v7, v1, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v3, v2, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 529
    return-object v4

    .line 507
    .end local v1    # "right":F
    .end local v5    # "left":F
    .end local v28    # "codeSet":I
    .end local v31    # "lastPatternSize":I
    .end local v32    # "nextStart":I
    .end local v33    # "rawCodesSize":I
    .end local v34    # "startCode":I
    .end local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v36    # "startPatternInfo":[I
    .local v2, "codeSet":I
    .local v3, "lastPatternSize":I
    .local v4, "nextStart":I
    .restart local v6    # "startCode":I
    .restart local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "startPatternInfo":[I
    :cond_2a4
    move/from16 v28, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    .end local v2    # "codeSet":I
    .end local v3    # "lastPatternSize":I
    .end local v4    # "nextStart":I
    .end local v6    # "startCode":I
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "startPatternInfo":[I
    .restart local v28    # "codeSet":I
    .restart local v31    # "lastPatternSize":I
    .restart local v32    # "nextStart":I
    .restart local v34    # "startCode":I
    .restart local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v36    # "startPatternInfo":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 500
    .end local v15    # "resultLength":I
    .end local v28    # "codeSet":I
    .end local v31    # "lastPatternSize":I
    .end local v32    # "nextStart":I
    .end local v34    # "startCode":I
    .end local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v36    # "startPatternInfo":[I
    .restart local v2    # "codeSet":I
    .restart local v3    # "lastPatternSize":I
    .restart local v4    # "nextStart":I
    .restart local v6    # "startCode":I
    .restart local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "startPatternInfo":[I
    :cond_2b5
    move/from16 v28, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    .end local v2    # "codeSet":I
    .end local v3    # "lastPatternSize":I
    .end local v4    # "nextStart":I
    .end local v6    # "startCode":I
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "startPatternInfo":[I
    .restart local v28    # "codeSet":I
    .restart local v31    # "lastPatternSize":I
    .restart local v32    # "nextStart":I
    .restart local v34    # "startCode":I
    .restart local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v36    # "startPatternInfo":[I
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 493
    .end local v28    # "codeSet":I
    .end local v31    # "lastPatternSize":I
    .end local v32    # "nextStart":I
    .end local v34    # "startCode":I
    .end local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v36    # "startPatternInfo":[I
    .restart local v2    # "codeSet":I
    .restart local v3    # "lastPatternSize":I
    .restart local v4    # "nextStart":I
    .restart local v6    # "startCode":I
    .restart local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "startPatternInfo":[I
    :cond_2c6
    move/from16 v28, v2

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    .end local v2    # "codeSet":I
    .end local v3    # "lastPatternSize":I
    .end local v4    # "nextStart":I
    .end local v6    # "startCode":I
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "startPatternInfo":[I
    .restart local v28    # "codeSet":I
    .restart local v31    # "lastPatternSize":I
    .restart local v32    # "nextStart":I
    .restart local v34    # "startCode":I
    .restart local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v36    # "startPatternInfo":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_2d8
    .packed-switch 0x67
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch

    :pswitch_data_2e2
    .packed-switch 0x67
        :pswitch_af
        :pswitch_af
        :pswitch_af
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x63
        :pswitch_192
        :pswitch_130
        :pswitch_b4
    .end packed-switch

    :pswitch_data_2f6
    .packed-switch 0x60
        :pswitch_12b
        :pswitch_12b
        :pswitch_126
        :pswitch_122
        :pswitch_11e
        :pswitch_10d
        :pswitch_f7
    .end packed-switch

    :pswitch_data_308
    .packed-switch 0x60
        :pswitch_18f
        :pswitch_18f
        :pswitch_189
        :pswitch_186
        :pswitch_173
        :pswitch_16f
        :pswitch_159
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x64
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1b3
    .end packed-switch
.end method

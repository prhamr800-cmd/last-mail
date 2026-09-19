###### Class com.journeyapps.barcodescanner.InvertedDecoder (com.journeyapps.barcodescanner.InvertedDecoder)
.class public Lcom/journeyapps/barcodescanner/InvertedDecoder;
.super Lcom/journeyapps/barcodescanner/Decoder;
.source "InvertedDecoder.java"


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2
    .param p1, "reader"    # Lcom/google/zxing/Reader;

    .line 21
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .registers 5
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 34
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v0
.end method

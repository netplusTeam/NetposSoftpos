.class final Lcom/itextpdf/barcodes/qrcode/BlockPair;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final dataBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;

.field private final errorCorrectionBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;


# direct methods
.method constructor <init>(Lcom/itextpdf/barcodes/qrcode/ByteArray;Lcom/itextpdf/barcodes/qrcode/ByteArray;)V
    .locals 0
    .param p1, "data"    # Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .param p2, "errorCorrection"    # Lcom/itextpdf/barcodes/qrcode/ByteArray;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/BlockPair;->dataBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;

    .line 56
    iput-object p2, p0, Lcom/itextpdf/barcodes/qrcode/BlockPair;->errorCorrectionBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;

    .line 57
    return-void
.end method


# virtual methods
.method public getDataBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BlockPair;->dataBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;

    return-object v0
.end method

.method public getErrorCorrectionBytes()Lcom/itextpdf/barcodes/qrcode/ByteArray;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/BlockPair;->errorCorrectionBytes:Lcom/itextpdf/barcodes/qrcode/ByteArray;

    return-object v0
.end method

.class public final Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/barcodes/qrcode/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method constructor <init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;)V
    .locals 2
    .param p1, "ecCodewordsPerBlock"    # I
    .param p2, "ecBlocks"    # Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    .line 246
    return-void
.end method

.method constructor <init>(ILcom/itextpdf/barcodes/qrcode/Version$ECB;Lcom/itextpdf/barcodes/qrcode/Version$ECB;)V
    .locals 2
    .param p1, "ecCodewordsPerBlock"    # I
    .param p2, "ecBlocks1"    # Lcom/itextpdf/barcodes/qrcode/Version$ECB;
    .param p3, "ecBlocks2"    # Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    .line 251
    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/itextpdf/barcodes/qrcode/Version$ECB;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .locals 4

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/barcodes/qrcode/Version$ECB;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 263
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/itextpdf/barcodes/qrcode/Version$ECB;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public getTotalECCodewords()I
    .locals 2

    .line 272
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/itextpdf/barcodes/qrcode/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

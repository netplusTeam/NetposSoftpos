.class public Lcom/itextpdf/barcodes/dmcode/DmParams;
.super Ljava/lang/Object;
.source "DmParams.java"


# instance fields
.field public dataBlock:I

.field public dataSize:I

.field public errorBlock:I

.field public height:I

.field public heightSection:I

.field public width:I

.field public widthSection:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "heightSection"    # I
    .param p4, "widthSection"    # I
    .param p5, "dataSize"    # I
    .param p6, "dataBlock"    # I
    .param p7, "errorBlock"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->height:I

    .line 59
    iput p2, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->width:I

    .line 60
    iput p3, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->heightSection:I

    .line 61
    iput p4, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->widthSection:I

    .line 62
    iput p5, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataSize:I

    .line 63
    iput p6, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->dataBlock:I

    .line 64
    iput p7, p0, Lcom/itextpdf/barcodes/dmcode/DmParams;->errorBlock:I

    .line 65
    return-void
.end method

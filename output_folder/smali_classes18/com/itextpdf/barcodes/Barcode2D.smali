.class public abstract Lcom/itextpdf/barcodes/Barcode2D;
.super Ljava/lang/Object;
.source "Barcode2D.java"


# static fields
.field protected static final DEFAULT_MODULE_SIZE:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
.end method

.method public createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/barcodes/Barcode2D;->createFormXObject(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBarcodeSize()Lcom/itextpdf/kernel/geom/Rectangle;
.end method

.method public abstract placeBarcode(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/geom/Rectangle;
.end method

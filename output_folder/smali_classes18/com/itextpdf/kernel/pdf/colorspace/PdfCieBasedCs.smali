.class public abstract Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
.source "PdfCieBasedCs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c4c98f9404d0f15L


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 81
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 82
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->flush()V

    .line 73
    return-void
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 77
    const/4 v0, 0x1

    return v0
.end method

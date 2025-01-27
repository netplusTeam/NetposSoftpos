.class public Lcom/itextpdf/kernel/colors/Indexed;
.super Lcom/itextpdf/kernel/colors/Color;
.source "Indexed.java"


# static fields
.field private static final serialVersionUID:J = 0x4a96e9e83fb23f39L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V
    .locals 1
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V
    .locals 3
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "colorValue"    # I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [F

    int-to-float v1, p2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 58
    return-void
.end method

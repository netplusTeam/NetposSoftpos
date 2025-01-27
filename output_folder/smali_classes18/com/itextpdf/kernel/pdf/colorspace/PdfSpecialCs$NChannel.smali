.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
.source "PdfSpecialCs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NChannel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a498d42094a2814L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 210
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "names"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "alternateSpace"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "tintTransform"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p4, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 214
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;->getNChannelCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/function/PdfFunction;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p2, "alternateSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p3, "tintTransform"    # Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .param p4, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .line 218
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 219
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getInputSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getOutputSize()I

    move-result v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 220
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Function is not compatible with ColorSpace."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected static getNChannelCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1
    .param p0, "names"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "alternateSpace"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "tintTransform"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "attributes"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 225
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;->getDeviceNCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 226
    .local v0, "nChannel":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 227
    return-object v0
.end method

.class public Lcom/itextpdf/kernel/pdf/function/PdfFunction;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4115b01e63dc3f10L


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 64
    return-void
.end method

.method public static makeFunction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 2
    .param p0, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 233
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 243
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 241
    :pswitch_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;

    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 239
    :pswitch_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 237
    :pswitch_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 235
    :pswitch_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;

    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkCompatibilityWithColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Z
    .locals 1
    .param p1, "alternateSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public flush()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    .line 93
    return-void
.end method

.method public getInputSize()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOutputSize()I
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 80
    .local v0, "range":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    return v1
.end method

.method public getType()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

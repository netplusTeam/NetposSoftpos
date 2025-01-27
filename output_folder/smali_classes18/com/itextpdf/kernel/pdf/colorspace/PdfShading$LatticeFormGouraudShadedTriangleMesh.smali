.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.source "PdfShading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatticeFormGouraudShadedTriangleMesh"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79cb716539063956L


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 975
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 976
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;IIILcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "bitsPerCoordinate"    # I
    .param p3, "bitsPerComponent"    # I
    .param p4, "verticesPerRow"    # I
    .param p5, "decode"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1015
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    .line 1017
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setBitsPerCoordinate(I)V

    .line 1018
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setBitsPerComponent(I)V

    .line 1019
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setVerticesPerRow(I)V

    .line 1020
    invoke-virtual {p0, p5}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setDecode(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1021
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;III[F)V
    .locals 6
    .param p1, "cs"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "bitsPerCoordinate"    # I
    .param p3, "bitsPerComponent"    # I
    .param p4, "verticesPerRow"    # I
    .param p5, "decode"    # [F

    .line 995
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5, p5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;IIILcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 996
    return-void
.end method


# virtual methods
.method public getBitsPerComponent()I
    .locals 2

    .line 1048
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBitsPerCoordinate()I
    .locals 2

    .line 1029
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerCoordinate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDecode()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1090
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getVerticesPerRow()I
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->VerticesPerRow:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setBitsPerComponent(I)V
    .locals 3
    .param p1, "bitsPerComponent"    # I

    .line 1057
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1058
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1059
    return-void
.end method

.method public setBitsPerCoordinate(I)V
    .locals 3
    .param p1, "bitsPerCoordinate"    # I

    .line 1038
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerCoordinate:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1039
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1040
    return-void
.end method

.method public setDecode(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "decode"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1114
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1116
    return-void
.end method

.method public setDecode([F)V
    .locals 1
    .param p1, "decode"    # [F

    .line 1102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setDecode(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1103
    return-void
.end method

.method public setVerticesPerRow(I)V
    .locals 3
    .param p1, "verticesPerRow"    # I

    .line 1077
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->VerticesPerRow:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1078
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$LatticeFormGouraudShadedTriangleMesh;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1079
    return-void
.end method

.class Lcom/itextpdf/kernel/pdf/annot/PdfPolygonAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
.source "PdfPolygonAnnotation.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;[F)V
    .locals 0
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "vertices"    # [F

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;[F)V

    .line 57
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 52
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 61
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Polygon:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

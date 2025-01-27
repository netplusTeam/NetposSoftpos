.class public Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
.super Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
.source "PdfTextMarkupAnnotation.java"


# static fields
.field public static final MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

.field public static final MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;

.field private static final serialVersionUID:J = 0x1e61d680b7ad14b1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Highlight:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 59
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 60
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StrikeOut:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 61
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Squiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V
    .locals 1
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "subtype"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "quadPoints"    # [F

    .line 64
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 66
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->setQuadPoints(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 78
    return-void
.end method

.method public static createHighLight(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "quadPoints"    # [F

    .line 99
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupHighlight:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createSquiggly(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "quadPoints"    # [F

    .line 165
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupSquiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createStrikeout(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "quadPoints"    # [F

    .line 143
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupStrikeout:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method

.method public static createUnderline(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 2
    .param p0, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "quadPoints"    # [F

    .line 121
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    sget-object v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->MarkupUnderline:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    return-object v0
.end method


# virtual methods
.method public getQuadPoints()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->QuadPoints:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 171
    .local v0, "subType":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 174
    :cond_0
    return-object v0
.end method

.method public setQuadPoints(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    .locals 1
    .param p1, "quadPoints"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 213
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->QuadPoints:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    return-object v0
.end method

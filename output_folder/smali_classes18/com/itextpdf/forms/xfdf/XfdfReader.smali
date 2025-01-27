.class Lcom/itextpdf/forms/xfdf/XfdfReader;
.super Ljava/lang/Object;
.source "XfdfReader.java"


# static fields
.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/itextpdf/forms/xfdf/XfdfReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAnnotationToPdf(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 8
    .param p1, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "annotName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 156
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "polyline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "stamp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "strikeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "highlight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "squiggly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "square"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "underline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "circle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a
    const-string v2, "freetext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    :goto_0
    const-string v2, "fringe"

    const-string v5, "coords"

    const-string v6, "page"

    const-string/jumbo v7, "rect"

    packed-switch v1, :pswitch_data_0

    .line 282
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v3, "Xfdf annotation \"{0}\" is not supported"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :pswitch_0
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    .line 274
    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 275
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 274
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 276
    goto/16 :goto_1

    .line 268
    :pswitch_1
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    .line 269
    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 270
    goto/16 :goto_1

    .line 257
    :pswitch_2
    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 258
    .local v1, "polylineRect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getVertices()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertVerticesFromString(Ljava/lang/String;)[F

    move-result-object v2

    .line 259
    .local v2, "polylineVertices":[F
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->createPolyLine(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    move-result-object v3

    .line 261
    .local v3, "polylineAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 262
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 264
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    .line 265
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 266
    goto/16 :goto_1

    .line 246
    .end local v1    # "polylineRect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v2    # "polylineVertices":[F
    .end local v3    # "polylineAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
    :pswitch_3
    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 247
    .local v1, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getVertices()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertVerticesFromString(Ljava/lang/String;)[F

    move-result-object v2

    .line 248
    .local v2, "vertices":[F
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->createPolygon(Lcom/itextpdf/kernel/geom/Rectangle;[F)Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    move-result-object v3

    .line 250
    .local v3, "polygonAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 251
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 253
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v4

    .line 254
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 255
    goto/16 :goto_1

    .line 232
    .end local v1    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v2    # "vertices":[F
    .end local v3    # "polygonAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
    :pswitch_4
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 234
    .local v1, "pdfSquareAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 235
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 237
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->setRectangleDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    .line 241
    :cond_1
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 243
    goto/16 :goto_1

    .line 219
    .end local v1    # "pdfSquareAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;
    :pswitch_5
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 221
    .local v1, "pdfCircleAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 222
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 224
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->setRectangleDifferences(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    .line 228
    :cond_2
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 230
    goto/16 :goto_1

    .line 205
    .end local v1    # "pdfCircleAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;
    :pswitch_6
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Squiggly:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 206
    invoke-virtual {p1, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsFromCoordsString(Ljava/lang/String;)[F

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    .line 208
    .local v1, "pdfSquigglyAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 209
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 211
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 213
    goto/16 :goto_1

    .line 195
    .end local v1    # "pdfSquigglyAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    :pswitch_7
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StrikeOut:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 196
    invoke-virtual {p1, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsFromCoordsString(Ljava/lang/String;)[F

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    .line 198
    .local v1, "pdfStrikeoutAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 199
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 201
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 202
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 203
    goto/16 :goto_1

    .line 185
    .end local v1    # "pdfStrikeoutAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    :pswitch_8
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Underline:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 186
    invoke-virtual {p1, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsFromCoordsString(Ljava/lang/String;)[F

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    .line 188
    .local v1, "pdfUnderlineAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 189
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 191
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 193
    goto/16 :goto_1

    .line 175
    .end local v1    # "pdfUnderlineAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    :pswitch_9
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Highlight:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 176
    invoke-virtual {p1, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsFromCoordsString(Ljava/lang/String;)[F

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/pdf/PdfName;[F)V

    .line 178
    .local v1, "pdfHighLightAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 179
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 181
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 183
    goto :goto_1

    .line 159
    .end local v1    # "pdfHighLightAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    :pswitch_a
    new-instance v1, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    invoke-virtual {p1, v7}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectFromString(Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 160
    .local v1, "pdfTextAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 161
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 163
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "icon"

    invoke-virtual {p1, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->setIconName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    .line 164
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 165
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->setState(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    .line 167
    :cond_3
    const-string/jumbo v2, "statemodel"

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 168
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->setStateModel(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    .line 171
    :cond_4
    invoke-virtual {p1, v6}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 287
    .end local v1    # "pdfTextAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;
    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ba2ba67 -> :sswitch_a
        -0x51134330 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0x3553a6e3 -> :sswitch_7
        -0x2e99a921 -> :sswitch_6
        -0x289a734c -> :sswitch_5
        -0x17b1aac6 -> :sswitch_4
        -0xb7325a4 -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac3c3 -> :sswitch_1
        0x217e81c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addCommonAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 2
    .param p1, "annotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 141
    const-string v0, "flags"

    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFlagsFromString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 142
    const-string v0, "color"

    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorFloatsFromString(Ljava/lang/String;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setColor([F)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 143
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "date"

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setDate(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 144
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setName(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 145
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setTitle(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 146
    return-void
.end method

.method private addMarkupAnnotationAttributes(Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 2
    .param p1, "annotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 149
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v1, "creationdate"

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->setCreationDate(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    .line 150
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string/jumbo v1, "subject"

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->setSubject(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    .line 151
    return-void
.end method

.method private mergeAnnotations(Lcom/itextpdf/forms/xfdf/AnnotsObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "annotsObject"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "annotList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/forms/xfdf/AnnotObject;>;"
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v0

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 135
    .local v2, "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-direct {p0, v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfReader;->addAnnotationToPdf(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 136
    .end local v2    # "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method private mergeFields(Lcom/itextpdf/forms/xfdf/FieldsObject;Lcom/itextpdf/forms/PdfAcroForm;)V
    .locals 6
    .param p1, "fieldsObject"    # Lcom/itextpdf/forms/xfdf/FieldsObject;
    .param p2, "form"    # Lcom/itextpdf/forms/PdfAcroForm;

    .line 106
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v0

    .line 110
    .local v0, "formFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 111
    .local v2, "xfdfField":Lcom/itextpdf/forms/xfdf/FieldObject;
    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/forms/fields/PdfFormField;->setValue(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_1

    .line 115
    :cond_0
    sget-object v4, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    const-string v5, "Xfdf no such field in pdf document!"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 117
    .end local v2    # "xfdfField":Lcom/itextpdf/forms/xfdf/FieldObject;
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 119
    .end local v0    # "formFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method mergeXfdfIntoPdf(Lcom/itextpdf/forms/xfdf/XfdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 2
    .param p1, "xfdfObject"    # Lcom/itextpdf/forms/xfdf/XfdfObject;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "pdfDocumentName"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getF()Lcom/itextpdf/forms/xfdf/FObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getF()Lcom/itextpdf/forms/xfdf/FObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfdf/FObject;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getF()Lcom/itextpdf/forms/xfdf/FObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfdf/FObject;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    const-string v1, "Xfdf href and pdf name are equal. Continue merge"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    const-string v1, "Xfdf href attribute and pdf document name are different!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/itextpdf/forms/xfdf/XfdfReader;->logger:Lorg/slf4j/Logger;

    const-string v1, "Xfdf no f object to compare."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 91
    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 92
    .local v0, "form":Lcom/itextpdf/forms/PdfAcroForm;
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/XfdfReader;->mergeFields(Lcom/itextpdf/forms/xfdf/FieldsObject;Lcom/itextpdf/forms/PdfAcroForm;)V

    .line 94
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfReader;->mergeAnnotations(Lcom/itextpdf/forms/xfdf/AnnotsObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 97
    :cond_2
    return-void
.end method

.class public Lcom/itextpdf/svg/renderers/path/impl/LineTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "LineTo.java"


# static fields
.field static final ARGUMENT_SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;-><init>(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .line 65
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 70
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 71
    .local v0, "x":F
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 72
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 73
    return-void
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 7
    .param p1, "inputCoordinates"    # [Ljava/lang/String;
    .param p2, "startPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 77
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    aget-object v4, p1, v3

    aput-object v4, v0, v3

    aget-object v4, p1, v2

    aput-object v4, v0, v2

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->coordinates:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object v4, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->coordinates:[Ljava/lang/String;

    new-array v1, v1, [D

    iget-wide v5, p2, Lcom/itextpdf/kernel/geom/Point;->x:D

    aput-wide v5, v1, v3

    iget-wide v5, p2, Lcom/itextpdf/kernel/geom/Point;->y:D

    aput-wide v5, v1, v2

    invoke-interface {v0, v4, v1}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->coordinates:[Ljava/lang/String;

    .line 84
    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "(x y)+ parameters are expected for lineTo operator. Got: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

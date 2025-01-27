.class public Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "QuadraticCurveTo.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;


# static fields
.field static final ARGUMENT_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .line 69
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V
    .locals 0
    .param p1, "relative"    # Z
    .param p2, "copier"    # Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 74
    return-void
.end method

.method private static addTValueToList(DLjava/util/List;)V
    .locals 2
    .param p0, "t"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p2, "tValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 180
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void
.end method

.method private static calculateExtremeCoordinate(DDDD)D
    .locals 6
    .param p0, "t"    # D
    .param p2, "p0"    # D
    .param p4, "p1"    # D
    .param p6, "p2"    # D

    .line 191
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    .line 192
    .local v0, "minusT":D
    mul-double v2, v0, v0

    mul-double/2addr v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    mul-double v4, p0, p0

    mul-double/2addr v4, p6

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static getBezierMinMaxPoints(DDDDDD)[D
    .locals 29
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D

    .line 133
    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 134
    .local v0, "xMin":D
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 135
    .local v2, "yMin":D
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 136
    .local v4, "xMax":D
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 137
    .local v6, "yMax":D
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getExtremeTValues(DDDDDD)[D

    move-result-object v8

    .line 138
    .local v8, "extremeTValues":[D
    array-length v9, v8

    const/16 v16, 0x0

    move/from16 v10, v16

    move-wide/from16 v25, v0

    move-wide v0, v6

    move-wide/from16 v6, v25

    move-wide/from16 v27, v2

    move-wide v2, v4

    move-wide/from16 v4, v27

    .local v0, "yMax":D
    .local v2, "xMax":D
    .local v4, "yMin":D
    .local v6, "xMin":D
    :goto_0
    if-ge v10, v9, :cond_0

    aget-wide v17, v8, v10

    .line 139
    .local v17, "t":D
    move-object v11, v8

    move/from16 v19, v9

    move-wide v8, v0

    .end local v0    # "yMax":D
    .local v8, "yMax":D
    .local v11, "extremeTValues":[D
    move-wide/from16 v0, v17

    move-object v13, v11

    move-wide v11, v2

    .end local v2    # "xMax":D
    .local v11, "xMax":D
    .local v13, "extremeTValues":[D
    move-wide/from16 v2, p0

    move-object v15, v13

    move-wide v13, v4

    .end local v4    # "yMin":D
    .local v13, "yMin":D
    .local v15, "extremeTValues":[D
    move-wide/from16 v4, p4

    move-wide/from16 v20, v8

    move-wide v8, v6

    .end local v6    # "xMin":D
    .local v8, "xMin":D
    .local v20, "yMax":D
    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->calculateExtremeCoordinate(DDDD)D

    move-result-wide v6

    .line 140
    .local v6, "xValue":D
    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move/from16 v22, v10

    move-wide/from16 v23, v11

    move-wide v10, v6

    .end local v6    # "xValue":D
    .end local v11    # "xMax":D
    .local v10, "xValue":D
    .local v23, "xMax":D
    move-wide/from16 v6, p10

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->calculateExtremeCoordinate(DDDD)D

    move-result-wide v0

    .line 141
    .local v0, "yValue":D
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 142
    .end local v8    # "xMin":D
    .local v6, "xMin":D
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 143
    .end local v13    # "yMin":D
    .restart local v4    # "yMin":D
    move-wide/from16 v2, v23

    .end local v23    # "xMax":D
    .restart local v2    # "xMax":D
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 144
    move-wide/from16 v8, v20

    .end local v20    # "yMax":D
    .local v8, "yMax":D
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 138
    .end local v8    # "yMax":D
    .end local v10    # "xValue":D
    .end local v17    # "t":D
    .local v0, "yMax":D
    add-int/lit8 v10, v22, 0x1

    move-wide/from16 v12, p8

    move-object v8, v15

    move/from16 v9, v19

    move-wide/from16 v14, p10

    goto :goto_0

    .line 146
    .end local v15    # "extremeTValues":[D
    .local v8, "extremeTValues":[D
    :cond_0
    move-wide v13, v4

    move-object v15, v8

    move-wide v8, v6

    move-wide v6, v0

    .end local v0    # "yMax":D
    .end local v4    # "yMin":D
    .local v6, "yMax":D
    .local v8, "xMin":D
    .restart local v13    # "yMin":D
    .restart local v15    # "extremeTValues":[D
    const/4 v0, 0x4

    new-array v0, v0, [D

    aput-wide v8, v0, v16

    const/4 v1, 0x1

    aput-wide v13, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v6, v0, v1

    return-object v0
.end method

.method private static getExtremeTValues(DDDDDD)[D
    .locals 7
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "tValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-wide v1, p0

    move-wide v3, p4

    move-wide v5, p8

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getTValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->addTValueToList(DLjava/util/List;)V

    .line 165
    move-wide v1, p2

    move-wide v3, p6

    move-wide/from16 v5, p10

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getTValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->addTValueToList(DLjava/util/List;)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 167
    .local v1, "tValuesArray":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static getTValue(DDD)D
    .locals 8
    .param p0, "p0"    # D
    .param p2, "p1"    # D
    .param p4, "p2"    # D

    .line 185
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p2, v0

    mul-double v4, p0, v0

    sub-double/2addr v2, v4

    .line 186
    .local v2, "b":D
    mul-double v4, p2, v0

    sub-double v4, p0, v4

    add-double/2addr v4, p4

    .line 187
    .local v4, "a":D
    neg-double v6, v2

    mul-double/2addr v0, v4

    div-double/2addr v6, v0

    return-wide v6
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 13
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 81
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 82
    .local v0, "x1":F
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 83
    .local v1, "y1":F
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 84
    .local v2, "x":F
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 85
    .local v3, "y":F
    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v11, v3

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 86
    return-void
.end method

.method public getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 14
    .param p1, "lastPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 110
    .local v0, "controlPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 111
    .local v1, "endingPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    .line 112
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    .line 113
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v12

    .line 111
    invoke-static/range {v2 .. v13}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->getBezierMinMaxPoints(DDDDDD)[D

    move-result-object v2

    .line 114
    .local v2, "points":[D
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v4, 0x0

    aget-wide v5, v2, v4

    invoke-static {v5, v6}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    .line 115
    invoke-static {v7, v8}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x2

    aget-wide v8, v2, v8

    aget-wide v10, v2, v4

    sub-double/2addr v8, v10

    .line 116
    invoke-static {v8, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v8

    double-to-float v4, v8

    const/4 v8, 0x3

    aget-wide v8, v2, v8

    aget-wide v10, v2, v6

    sub-double/2addr v8, v10

    .line 117
    invoke-static {v8, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v8

    double-to-float v6, v8

    invoke-direct {v3, v5, v7, v4, v6}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 114
    return-object v3
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 6
    .param p1, "inputCoordinates"    # [Ljava/lang/String;
    .param p2, "startPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 91
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 94
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    aput-wide v4, v0, v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 97
    .local v0, "initialPoint":[D
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    .line 100
    :cond_0
    return-void

    .line 92
    .end local v0    # "initialPoint":[D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;->coordinates:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "(x1 y1 x y)+ parameters are expected for quadratic curves. Got: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

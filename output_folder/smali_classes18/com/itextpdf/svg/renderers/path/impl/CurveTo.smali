.class public Lcom/itextpdf/svg/renderers/path/impl/CurveTo;
.super Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.source "CurveTo.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IControlPointCurve;


# static fields
.field static final ARGUMENT_SIZE:I = 0x6

.field private static ZERO_EPSILON:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    sput-wide v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .line 71
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V
    .locals 0
    .param p1, "relative"    # Z
    .param p2, "copier"    # Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 76
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

    .line 234
    .local p2, "tValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    return-void
.end method

.method private static calculateExtremeCoordinate(DDDDD)D
    .locals 8
    .param p0, "t"    # D
    .param p2, "p0"    # D
    .param p4, "p1"    # D
    .param p6, "p2"    # D
    .param p8, "p3"    # D

    .line 240
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    .line 242
    .local v0, "minusT":D
    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, p2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v6, v0, v4

    mul-double/2addr v6, v0

    mul-double/2addr v6, p0

    mul-double/2addr v6, p4

    add-double/2addr v2, v6

    mul-double/2addr v4, v0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p0

    mul-double/2addr v4, p6

    add-double/2addr v2, v4

    mul-double v4, p0, p0

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static calculateTValues(DDDD)Ljava/util/List;
    .locals 17
    .param p0, "p0"    # D
    .param p2, "p1"    # D
    .param p4, "p2"    # D
    .param p6, "p3"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 203
    move-wide/from16 v0, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "tValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    neg-double v3, v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v7, p2, v5

    add-double/2addr v3, v7

    mul-double v7, p4, v5

    sub-double/2addr v3, v7

    add-double v3, v3, p6

    mul-double/2addr v3, v5

    .line 205
    .local v3, "a":D
    mul-double v7, v0, v5

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    mul-double v9, v9, p2

    sub-double/2addr v7, v9

    mul-double v9, p4, v5

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    .line 206
    .local v7, "b":D
    mul-double v11, p2, v5

    mul-double/2addr v5, v0

    sub-double/2addr v11, v5

    .line 207
    .local v11, "c":D
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sget-wide v13, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpg-double v5, v5, v13

    if-gez v5, :cond_0

    .line 208
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sget-wide v9, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_2

    .line 210
    neg-double v5, v11

    div-double/2addr v5, v7

    invoke-static {v5, v6, v2}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    goto :goto_0

    .line 213
    :cond_0
    mul-double v5, v7, v7

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    mul-double/2addr v13, v11

    mul-double/2addr v13, v3

    sub-double/2addr v5, v13

    .line 216
    .local v5, "discriminant":D
    const-wide/16 v13, 0x0

    cmpg-double v13, v5, v13

    if-gtz v13, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    sget-wide v15, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->ZERO_EPSILON:D

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    .line 218
    neg-double v13, v7

    mul-double/2addr v9, v3

    div-double/2addr v13, v9

    invoke-static {v13, v14, v2}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 221
    .local v13, "discriminantSqrt":D
    neg-double v0, v7

    add-double/2addr v0, v13

    mul-double v15, v3, v9

    div-double/2addr v0, v15

    invoke-static {v0, v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    .line 222
    neg-double v0, v7

    sub-double/2addr v0, v13

    mul-double/2addr v9, v3

    div-double/2addr v0, v9

    invoke-static {v0, v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->addTValueToList(DLjava/util/List;)V

    .line 225
    .end local v5    # "discriminant":D
    .end local v13    # "discriminantSqrt":D
    :cond_2
    :goto_0
    return-object v2
.end method

.method private static getBezierMinMaxPoints(DDDDDDDD)[D
    .locals 30
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D
    .param p12, "x3"    # D
    .param p14, "y3"    # D

    .line 150
    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p12

    move-wide/from16 v8, p14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 151
    .local v0, "xMin":D
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 152
    .local v2, "yMin":D
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 153
    .local v4, "xMax":D
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 155
    .local v6, "yMax":D
    invoke-static/range {p0 .. p15}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getTValuesInExtremePoints(DDDDDDDD)[D

    move-result-object v10

    .line 156
    .local v10, "extremeTValues":[D
    array-length v11, v10

    const/16 v16, 0x0

    move/from16 v12, v16

    move-wide/from16 v26, v0

    move-wide v0, v6

    move-wide/from16 v6, v26

    move-wide/from16 v28, v2

    move-wide v2, v4

    move-wide/from16 v4, v28

    .local v0, "yMax":D
    .local v2, "xMax":D
    .local v4, "yMin":D
    .local v6, "xMin":D
    :goto_0
    if-ge v12, v11, :cond_0

    aget-wide v17, v10, v12

    .line 157
    .local v17, "t":D
    move-object v13, v10

    move/from16 v19, v11

    move-wide v10, v0

    .end local v0    # "yMax":D
    .local v10, "yMax":D
    .local v13, "extremeTValues":[D
    move-wide/from16 v0, v17

    move-object v15, v13

    move-wide v13, v2

    .end local v2    # "xMax":D
    .local v13, "xMax":D
    .local v15, "extremeTValues":[D
    move-wide/from16 v2, p0

    move-wide/from16 v20, v10

    move-wide v10, v4

    .end local v4    # "yMin":D
    .local v10, "yMin":D
    .local v20, "yMax":D
    move-wide/from16 v4, p4

    move/from16 v22, v12

    move-wide/from16 v23, v13

    move-wide v12, v6

    .end local v6    # "xMin":D
    .end local v13    # "xMax":D
    .local v12, "xMin":D
    .local v23, "xMax":D
    move-wide/from16 v6, p8

    move-wide/from16 v8, p12

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateExtremeCoordinate(DDDDD)D

    move-result-wide v8

    .line 158
    .local v8, "xValue":D
    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p10

    move-object/from16 v25, v15

    move-wide v14, v8

    .end local v8    # "xValue":D
    .end local v15    # "extremeTValues":[D
    .local v14, "xValue":D
    .local v25, "extremeTValues":[D
    move-wide/from16 v8, p14

    invoke-static/range {v0 .. v9}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateExtremeCoordinate(DDDDD)D

    move-result-wide v0

    .line 160
    .local v0, "yValue":D
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 161
    .end local v12    # "xMin":D
    .restart local v6    # "xMin":D
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 162
    .end local v10    # "yMin":D
    .restart local v4    # "yMin":D
    move-wide/from16 v2, v23

    .end local v23    # "xMax":D
    .restart local v2    # "xMax":D
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 163
    move-wide/from16 v8, v20

    .end local v20    # "yMax":D
    .local v8, "yMax":D
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 156
    .end local v8    # "yMax":D
    .end local v14    # "xValue":D
    .end local v17    # "t":D
    .local v0, "yMax":D
    add-int/lit8 v12, v22, 0x1

    move-wide/from16 v14, p12

    move-wide/from16 v8, p14

    move/from16 v11, v19

    move-object/from16 v10, v25

    goto :goto_0

    .line 165
    .end local v25    # "extremeTValues":[D
    .local v10, "extremeTValues":[D
    :cond_0
    move-wide v8, v0

    move-wide v12, v6

    move-object/from16 v25, v10

    move-wide v10, v4

    .end local v0    # "yMax":D
    .end local v4    # "yMin":D
    .end local v6    # "xMin":D
    .restart local v8    # "yMax":D
    .local v10, "yMin":D
    .restart local v12    # "xMin":D
    .restart local v25    # "extremeTValues":[D
    const/4 v0, 0x4

    new-array v0, v0, [D

    aput-wide v12, v0, v16

    const/4 v1, 0x1

    aput-wide v10, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v8, v0, v1

    return-object v0
.end method

.method private getFirstControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method private static getTValuesInExtremePoints(DDDDDDDD)[D
    .locals 9
    .param p0, "x0"    # D
    .param p2, "y0"    # D
    .param p4, "x1"    # D
    .param p6, "y1"    # D
    .param p8, "x2"    # D
    .param p10, "y2"    # D
    .param p12, "x3"    # D
    .param p14, "y3"    # D

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    move-wide v1, p0

    move-wide v3, p4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    invoke-static/range {v1 .. v8}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateTValues(DDDD)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .local v0, "tValuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-wide v1, p2

    move-wide v3, p6

    move-wide/from16 v5, p10

    move-wide/from16 v7, p14

    invoke-static/range {v1 .. v8}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->calculateTValues(DDDD)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 187
    .local v1, "tValuesArray":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 188
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public draw(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 23
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    .line 81
    .local v1, "x1":F
    iget-object v2, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 82
    .local v2, "y1":F
    iget-object v3, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v3

    .line 83
    .local v3, "x2":F
    iget-object v4, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v4

    .line 84
    .local v4, "y2":F
    iget-object v5, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    .line 85
    .local v5, "x":F
    iget-object v6, v0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v6

    .line 86
    .local v6, "y":F
    float-to-double v8, v1

    float-to-double v10, v2

    float-to-double v12, v3

    float-to-double v14, v4

    move/from16 v20, v1

    .end local v1    # "x1":F
    .local v20, "x1":F
    float-to-double v0, v5

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "y1":F
    .end local v3    # "x2":F
    .local v21, "y1":F
    .local v22, "x2":F
    float-to-double v2, v6

    move-object/from16 v7, p1

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v7 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 87
    return-void
.end method

.method public getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 19
    .param p1, "lastPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getFirstControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 110
    .local v0, "firstControlPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getLastControlPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 111
    .local v1, "lastControlPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .line 112
    .local v2, "endingPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v5

    .line 113
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    .line 114
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v13

    .line 115
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v15

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v17

    .line 112
    invoke-static/range {v3 .. v18}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->getBezierMinMaxPoints(DDDDDDDD)[D

    move-result-object v3

    .line 116
    .local v3, "points":[D
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    .line 117
    invoke-static {v8, v9}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x2

    aget-wide v9, v3, v9

    aget-wide v11, v3, v5

    sub-double/2addr v9, v11

    .line 118
    invoke-static {v9, v10}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v9

    double-to-float v5, v9

    const/4 v9, 0x3

    aget-wide v9, v3, v9

    aget-wide v11, v3, v7

    sub-double/2addr v9, v11

    .line 119
    invoke-static {v9, v10}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v9

    double-to-float v7, v9

    invoke-direct {v4, v6, v8, v5, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 116
    return-object v4
.end method

.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 6
    .param p1, "inputCoordinates"    # [Ljava/lang/String;
    .param p2, "startPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 91
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 94
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;->makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;->coordinates:[Ljava/lang/String;

    .line 100
    :cond_0
    return-void

    .line 92
    .end local v0    # "initialPoint":[D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "(x1 y1 x2 y2 x y)+ parameters are expected for curves. Got: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

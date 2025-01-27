.class public Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
.super Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
.source "RotationMinMaxWidth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
    }
.end annotation


# instance fields
.field private maxWidthHeight:D

.field private maxWidthOrigin:D

.field private minWidthHeight:D

.field private minWidthOrigin:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 3
    .param p1, "minWidth"    # D
    .param p3, "maxWidth"    # D
    .param p5, "minWidthOrigin"    # D
    .param p7, "maxWidthOrigin"    # D
    .param p9, "minWidthHeight"    # D
    .param p11, "maxWidthHeight"    # D

    .line 70
    double-to-float v0, p1

    double-to-float v1, p3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;-><init>(FFF)V

    .line 71
    iput-wide p7, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->maxWidthOrigin:D

    .line 72
    iput-wide p5, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->minWidthOrigin:D

    .line 73
    iput-wide p9, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->minWidthHeight:D

    .line 74
    iput-wide p11, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->maxWidthHeight:D

    .line 75
    return-void
.end method

.method static synthetic access$000(D)D
    .locals 2
    .param p0, "x0"    # D

    .line 52
    invoke-static {p0, p1}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(D)D
    .locals 2
    .param p0, "x0"    # D

    .line 52
    invoke-static {p0, p1}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    .locals 5
    .param p0, "angle"    # D
    .param p2, "area"    # D
    .param p4, "elementMinMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 103
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;-><init>(DD)V

    .line 104
    .local v0, "function":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
    invoke-virtual {p4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;DD)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v1

    return-object v1
.end method

.method public static calculate(DDLcom/itextpdf/layout/minmaxwidth/MinMaxWidth;D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    .locals 30
    .param p0, "angle"    # D
    .param p2, "area"    # D
    .param p4, "elementMinMaxWidth"    # Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .param p5, "availableWidth"    # D

    .line 118
    new-instance v0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;-><init>(DD)V

    .line 119
    .local v0, "function":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
    move-wide/from16 v5, p5

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getValidOriginalWidths(D)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;

    move-result-object v7

    .line 120
    .local v7, "validArguments":Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;
    if-nez v7, :cond_0

    .line 121
    const/4 v8, 0x0

    return-object v8

    .line 123
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->getMin()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 124
    .local v8, "xMin":D
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v7}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction$Interval;->getMax()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 126
    .local v10, "xMax":D
    cmpg-double v12, v10, v8

    if-gez v12, :cond_1

    .line 129
    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedWidth(D)D

    move-result-wide v25

    .line 130
    .local v25, "rotatedWidth":D
    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedHeight(D)D

    move-result-wide v27

    .line 131
    .local v27, "rotatedHeight":D
    new-instance v29, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-object/from16 v12, v29

    move-wide/from16 v13, v25

    move-wide/from16 v15, v25

    move-wide/from16 v17, v8

    move-wide/from16 v19, v8

    move-wide/from16 v21, v27

    move-wide/from16 v23, v27

    invoke-direct/range {v12 .. v24}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;-><init>(DDDDDD)V

    return-object v29

    .line 133
    .end local v25    # "rotatedWidth":D
    .end local v27    # "rotatedHeight":D
    :cond_1
    invoke-static {v0, v8, v9, v10, v11}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->calculate(Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;DD)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    move-result-object v12

    return-object v12
.end method

.method private static calculate(Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;DD)Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;
    .locals 23
    .param p0, "func"    # Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;
    .param p1, "xMin"    # D
    .param p3, "xMax"    # D

    .line 161
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getWidthDerivativeZeroPoint()D

    move-result-wide v3

    .line 164
    .local v3, "x0":D
    cmpg-double v5, v3, p1

    if-gez v5, :cond_0

    .line 166
    move-wide/from16 v5, p1

    .line 167
    .local v5, "minWidthOrigin":D
    move-wide/from16 v7, p3

    .local v7, "maxWidthOrigin":D
    goto :goto_0

    .line 169
    .end local v5    # "minWidthOrigin":D
    .end local v7    # "maxWidthOrigin":D
    :cond_0
    cmpl-double v5, v3, v1

    if-lez v5, :cond_1

    .line 171
    move-wide/from16 v5, p3

    .line 172
    .restart local v5    # "minWidthOrigin":D
    move-wide/from16 v7, p1

    .restart local v7    # "maxWidthOrigin":D
    goto :goto_0

    .line 177
    .end local v5    # "minWidthOrigin":D
    .end local v7    # "maxWidthOrigin":D
    :cond_1
    move-wide v5, v3

    .line 178
    .restart local v5    # "minWidthOrigin":D
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedWidth(D)D

    move-result-wide v7

    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedWidth(D)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    move-wide v7, v1

    goto :goto_0

    :cond_2
    move-wide/from16 v7, p1

    .line 181
    .restart local v7    # "maxWidthOrigin":D
    :goto_0
    new-instance v22, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedWidth(D)D

    move-result-wide v10

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedWidth(D)D

    move-result-wide v12

    .line 182
    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedHeight(D)D

    move-result-wide v18

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth$WidthFunction;->getRotatedHeight(D)D

    move-result-wide v20

    move-object/from16 v9, v22

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-direct/range {v9 .. v21}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;-><init>(DDDDDD)V

    .line 181
    return-object v22
.end method

.method public static calculateRotatedWidth(Lcom/itextpdf/kernel/geom/Rectangle;D)D
    .locals 6
    .param p0, "area"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p1, "angle"    # D

    .line 144
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v2

    float-to-double v2, v2

    invoke-static {p1, p2}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static correctSinCos(D)D
    .locals 3
    .param p0, "value"    # D

    .line 194
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    return-wide v0

    .line 196
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->isEqual(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    return-wide v0

    .line 199
    :cond_1
    return-wide p0
.end method

.method private static cos(D)D
    .locals 2
    .param p0, "angle"    # D

    .line 190
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->correctSinCos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static sin(D)D
    .locals 2
    .param p0, "angle"    # D

    .line 186
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->correctSinCos(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getMaxWidthHeight()D
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->maxWidthHeight:D

    return-wide v0
.end method

.method public getMaxWidthOrigin()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->maxWidthOrigin:D

    return-wide v0
.end method

.method public getMinWidthHeight()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->minWidthHeight:D

    return-wide v0
.end method

.method public getMinWidthOrigin()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/itextpdf/layout/minmaxwidth/RotationMinMaxWidth;->minWidthOrigin:D

    return-wide v0
.end method

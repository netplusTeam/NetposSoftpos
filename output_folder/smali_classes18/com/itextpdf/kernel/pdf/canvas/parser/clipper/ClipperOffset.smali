.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;
.super Ljava/lang/Object;
.source "ClipperOffset.java"


# static fields
.field private static final DEFAULT_ARC_TOLERANCE:D = 0.25

.field private static final TOLERANCE:D = 1.0E-20

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private final arcTolerance:D

.field private cos:D

.field private delta:D

.field private destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

.field private destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

.field private inA:D

.field private lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

.field private miterLim:D

.field private final miterLimit:D

.field private final normals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

.field private sin:D

.field private srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

.field private stepsPerRad:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 68
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;-><init>(DD)V

    .line 69
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "miterLimit"    # D

    .line 72
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;-><init>(DD)V

    .line 73
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "miterLimit"    # D
    .param p3, "arcTolerance"    # D

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLimit:D

    .line 77
    iput-wide p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    .line 78
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 79
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    .line 82
    return-void
.end method

.method private doMiter(IID)V
    .locals 15
    .param p1, "j"    # I
    .param p2, "k"    # I
    .param p3, "r"    # D

    .line 146
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    div-double v3, v3, p3

    .line 147
    .local v3, "q":D
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v9

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v11

    add-double/2addr v9, v11

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 148
    invoke-virtual {v9, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v11

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v11, v3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 147
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private doOffset(D)V
    .locals 36
    .param p1, "delta"    # D

    .line 152
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    iput-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    .line 153
    iput-wide v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    .line 156
    invoke-static/range {p1 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->nearZero(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 158
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 159
    .local v4, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v5, v6, :cond_0

    .line 160
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v4    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 167
    :cond_2
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLimit:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 168
    mul-double/2addr v3, v3

    div-double/2addr v5, v3

    iput-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    goto :goto_1

    .line 171
    :cond_3
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iput-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    .line 175
    :goto_1
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_4

    .line 176
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .local v3, "y":D
    goto :goto_2

    .line 178
    .end local v3    # "y":D
    :cond_4
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v9

    cmpl-double v3, v3, v7

    if-lez v3, :cond_5

    .line 179
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    .restart local v3    # "y":D
    goto :goto_2

    .line 182
    .end local v3    # "y":D
    :cond_5
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->arcTolerance:D

    .line 185
    .restart local v3    # "y":D
    :goto_2
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    div-double v11, v3, v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 186
    .local v7, "steps":D
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double v11, v9, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    .line 187
    div-double v11, v9, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    .line 188
    div-double v9, v7, v9

    iput-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->stepsPerRad:D

    .line 189
    cmpg-double v9, v1, v5

    if-gez v9, :cond_6

    .line 190
    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    neg-double v9, v9

    iput-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    .line 193
    :cond_6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_20

    .line 194
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 195
    .local v10, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v11

    iput-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 197
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v11

    .line 199
    .local v11, "len":I
    if-eqz v11, :cond_1f

    cmpg-double v12, v1, v5

    if-gtz v12, :cond_8

    const/4 v12, 0x3

    if-lt v11, v12, :cond_7

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v12, v13, :cond_8

    .line 200
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move/from16 v16, v9

    move-wide v6, v5

    goto/16 :goto_14

    .line 199
    :cond_7
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move/from16 v16, v9

    move-wide v6, v5

    goto/16 :goto_14

    .line 203
    :cond_8
    new-instance v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    iput-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 205
    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    .line 206
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v13

    sget-object v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    if-ne v13, v14, :cond_a

    .line 207
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .local v13, "X":D
    const-wide/16 v15, 0x0

    .line 208
    .local v15, "Y":D
    const/16 v17, 0x1

    move/from16 v5, v17

    .local v5, "j":I
    :goto_4
    move-wide/from16 v18, v13

    .end local v13    # "X":D
    .local v18, "X":D
    int-to-double v12, v5

    cmpg-double v12, v12, v7

    if-gtz v12, :cond_9

    .line 209
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide/from16 v20, v7

    .end local v7    # "steps":D
    .local v20, "steps":D
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v22, v18, v1

    add-double v6, v6, v22

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v8, 0x0

    invoke-virtual {v14, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-wide v7, v6

    check-cast v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide/from16 v23, v7

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v25, v15, v1

    add-double v6, v6, v25

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    move-wide/from16 v25, v3

    move-wide/from16 v3, v23

    .end local v3    # "y":D
    .local v25, "y":D
    invoke-direct {v13, v3, v4, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 211
    move-wide/from16 v3, v18

    .line 212
    .local v3, "X2":D
    iget-wide v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    mul-double v13, v18, v6

    move v12, v9

    .end local v9    # "i":I
    .local v12, "i":I
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    mul-double v23, v8, v15

    sub-double v13, v13, v23

    .line 213
    .end local v18    # "X":D
    .restart local v13    # "X":D
    mul-double/2addr v8, v3

    mul-double/2addr v6, v15

    add-double v15, v8, v6

    .line 208
    .end local v3    # "X2":D
    add-int/lit8 v5, v5, 0x1

    move v9, v12

    move-wide/from16 v7, v20

    move-wide/from16 v3, v25

    goto :goto_4

    .end local v12    # "i":I
    .end local v13    # "X":D
    .end local v20    # "steps":D
    .end local v25    # "y":D
    .local v3, "y":D
    .restart local v7    # "steps":D
    .restart local v9    # "i":I
    .restart local v18    # "X":D
    :cond_9
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move v12, v9

    .line 215
    .end local v3    # "y":D
    .end local v5    # "j":I
    .end local v7    # "steps":D
    .end local v9    # "i":I
    .end local v15    # "Y":D
    .end local v18    # "X":D
    .restart local v12    # "i":I
    .restart local v20    # "steps":D
    .restart local v25    # "y":D
    move/from16 v19, v11

    move/from16 v16, v12

    move-object v12, v10

    goto/16 :goto_7

    .line 217
    .end local v12    # "i":I
    .end local v20    # "steps":D
    .end local v25    # "y":D
    .restart local v3    # "y":D
    .restart local v7    # "steps":D
    .restart local v9    # "i":I
    :cond_a
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move v12, v9

    .end local v3    # "y":D
    .end local v7    # "steps":D
    .end local v9    # "i":I
    .restart local v12    # "i":I
    .restart local v20    # "steps":D
    .restart local v25    # "y":D
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .local v3, "X":D
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 218
    .local v5, "Y":D
    const/4 v7, 0x0

    move-wide/from16 v34, v5

    move v5, v7

    move-wide/from16 v7, v34

    .local v5, "j":I
    .local v7, "Y":D
    :goto_5
    const/4 v6, 0x4

    if-ge v5, v6, :cond_d

    .line 219
    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v18, v3, v1

    add-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move/from16 v16, v12

    const/4 v12, 0x0

    .end local v12    # "i":I
    .local v16, "i":I
    invoke-virtual {v6, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-object v12, v10

    move/from16 v19, v11

    .end local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v11    # "len":I
    .local v12, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .local v19, "len":I
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v22, v7, v1

    add-double v10, v10, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-direct {v13, v14, v15, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 221
    const-wide/16 v9, 0x0

    cmpg-double v11, v3, v9

    if-gez v11, :cond_b

    .line 222
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    .line 224
    :cond_b
    cmpg-double v11, v7, v9

    if-gez v11, :cond_c

    .line 225
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    .line 228
    :cond_c
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 218
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object v10, v12

    move/from16 v12, v16

    move/from16 v11, v19

    goto :goto_5

    .end local v16    # "i":I
    .end local v19    # "len":I
    .restart local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .restart local v11    # "len":I
    .local v12, "i":I
    :cond_d
    move/from16 v19, v11

    move/from16 v16, v12

    move-object v12, v10

    .line 232
    .end local v3    # "X":D
    .end local v5    # "j":I
    .end local v7    # "Y":D
    .end local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v11    # "len":I
    .local v12, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .restart local v16    # "i":I
    .restart local v19    # "len":I
    :goto_7
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 233
    const-wide/16 v6, 0x0

    goto/16 :goto_14

    .line 237
    .end local v12    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v16    # "i":I
    .end local v19    # "len":I
    .end local v20    # "steps":D
    .end local v25    # "y":D
    .local v3, "y":D
    .local v7, "steps":D
    .restart local v9    # "i":I
    .restart local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .restart local v11    # "len":I
    :cond_e
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move/from16 v16, v9

    move-object v12, v10

    move/from16 v19, v11

    .end local v3    # "y":D
    .end local v7    # "steps":D
    .end local v9    # "i":I
    .end local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v11    # "len":I
    .restart local v12    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .restart local v16    # "i":I
    .restart local v19    # "len":I
    .restart local v20    # "steps":D
    .restart local v25    # "y":D
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 238
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8
    add-int/lit8 v11, v19, -0x1

    if-ge v3, v11, :cond_f

    .line 239
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->getUnitNormal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 241
    .end local v3    # "j":I
    :cond_f
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v3, v4, :cond_11

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v4, :cond_10

    goto :goto_9

    .line 245
    :cond_10
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v11, v19, -0x2

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 242
    :cond_11
    :goto_9
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    add-int/lit8 v11, v19, -0x1

    invoke-virtual {v4, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->getUnitNormal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_a
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v4, :cond_13

    .line 249
    new-array v3, v13, [I

    add-int/lit8 v11, v19, -0x1

    const/4 v4, 0x0

    aput v11, v3, v4

    .line 250
    .local v3, "k":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b
    move/from16 v5, v19

    .end local v19    # "len":I
    .local v5, "len":I
    if-ge v4, v5, :cond_12

    .line 251
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v6

    invoke-direct {v0, v4, v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 250
    add-int/lit8 v4, v4, 0x1

    move/from16 v19, v5

    goto :goto_b

    .line 253
    .end local v4    # "j":I
    :cond_12
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v3    # "k":[I
    const-wide/16 v6, 0x0

    goto/16 :goto_14

    .line 255
    .end local v5    # "len":I
    .restart local v19    # "len":I
    :cond_13
    move/from16 v5, v19

    .end local v19    # "len":I
    .restart local v5    # "len":I
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v3, v4, :cond_17

    .line 256
    new-array v3, v13, [I

    add-int/lit8 v11, v5, -0x1

    const/4 v4, 0x0

    aput v11, v3, v4

    .line 257
    .restart local v3    # "k":[I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_c
    if-ge v4, v5, :cond_14

    .line 258
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v7

    invoke-direct {v0, v4, v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 260
    .end local v4    # "j":I
    :cond_14
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>()V

    iput-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 263
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v11, v5, -0x1

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    .line 264
    .local v4, "n":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;
    add-int/lit8 v11, v5, -0x1

    .local v11, "j":I
    :goto_d
    if-lez v11, :cond_15

    .line 265
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v10, v11, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v9

    neg-double v9, v9

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v14, v11, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-direct {v8, v9, v10, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v7, v11, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v11, v11, -0x1

    goto :goto_d

    .line 267
    .end local v11    # "j":I
    :cond_15
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    neg-double v13, v13

    const-wide/16 v32, 0x0

    move-object/from16 v27, v8

    move-wide/from16 v28, v9

    move-wide/from16 v30, v13

    invoke-direct/range {v27 .. v33}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DDD)V

    const/4 v6, 0x0

    invoke-interface {v7, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    aput v6, v3, v6

    .line 269
    add-int/lit8 v11, v5, -0x1

    .restart local v11    # "j":I
    :goto_e
    if-ltz v11, :cond_16

    .line 270
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v6

    invoke-direct {v0, v11, v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 269
    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 272
    .end local v11    # "j":I
    :cond_16
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v3    # "k":[I
    .end local v4    # "n":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;
    const-wide/16 v6, 0x0

    goto/16 :goto_14

    .line 275
    :cond_17
    new-array v3, v13, [I

    .line 276
    .restart local v3    # "k":[I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_f
    add-int/lit8 v11, v5, -0x1

    if-ge v4, v11, :cond_18

    .line 277
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v7

    invoke-direct {v0, v4, v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 281
    .end local v4    # "j":I
    :cond_18
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v4

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v4, v7, :cond_19

    .line 282
    add-int/lit8 v11, v5, -0x1

    .line 283
    .restart local v11    # "j":I
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v9

    mul-double/2addr v9, v1

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 284
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v1

    add-double/2addr v7, v9

    .line 283
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    move-object/from16 v27, v4

    invoke-direct/range {v27 .. v33}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    .line 285
    .local v4, "pt1":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v14

    mul-double/2addr v14, v1

    sub-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 287
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v14

    mul-double/2addr v14, v1

    sub-double/2addr v8, v14

    .line 286
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-object/from16 v27, v7

    invoke-direct/range {v27 .. v33}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    move-object v4, v7

    .line 288
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v11    # "j":I
    goto :goto_10

    .line 291
    .end local v4    # "pt1":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_19
    add-int/lit8 v11, v5, -0x1

    .line 292
    .restart local v11    # "j":I
    add-int/lit8 v4, v5, -0x2

    const/4 v6, 0x0

    aput v4, v3, v6

    .line 293
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 294
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    neg-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v14

    neg-double v14, v14

    invoke-direct {v7, v8, v9, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v4, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v4

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v4, v7, :cond_1a

    .line 296
    const/4 v4, 0x0

    aget v6, v3, v4

    invoke-direct {v0, v11, v6, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    goto :goto_10

    .line 299
    :cond_1a
    const/4 v4, 0x0

    aget v7, v3, v4

    invoke-direct {v0, v11, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    .line 304
    .end local v11    # "j":I
    :goto_10
    add-int/lit8 v11, v5, -0x1

    .restart local v11    # "j":I
    :goto_11
    if-lez v11, :cond_1b

    .line 305
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v9, v11, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    neg-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    add-int/lit8 v14, v11, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v14

    neg-double v14, v14

    invoke-direct {v7, v8, v9, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    invoke-interface {v4, v11, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v11, v11, -0x1

    goto :goto_11

    .line 308
    .end local v11    # "j":I
    :cond_1b
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v8

    neg-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v10

    neg-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    const/4 v6, 0x0

    invoke-interface {v4, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    add-int/lit8 v11, v5, -0x1

    aput v11, v3, v6

    .line 311
    aget v4, v3, v6

    sub-int/2addr v4, v13

    .local v4, "j":I
    :goto_12
    if-lez v4, :cond_1c

    .line 312
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getJoinType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    move-result-object v7

    invoke-direct {v0, v4, v3, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 311
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 315
    .end local v4    # "j":I
    :cond_1c
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v4

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v4, v7, :cond_1d

    .line 316
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v9

    mul-double/2addr v9, v1

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v9, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 317
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    mul-double/2addr v13, v1

    sub-double/2addr v9, v13

    .line 316
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 318
    .local v4, "pt1":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v10

    mul-double/2addr v10, v1

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 320
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    long-to-double v10, v10

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v13

    mul-double/2addr v13, v1

    add-double/2addr v10, v13

    .line 319
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    move-object v4, v7

    .line 321
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    const-wide/16 v6, 0x0

    goto :goto_13

    .line 324
    .end local v4    # "pt1":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_1d
    const/4 v4, 0x0

    aput v13, v3, v4

    .line 325
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 326
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v8, v9, :cond_1e

    .line 327
    invoke-direct {v0, v4, v13, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    goto :goto_13

    .line 330
    :cond_1e
    invoke-direct {v0, v4, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    .line 333
    :goto_13
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 199
    .end local v5    # "len":I
    .end local v12    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v16    # "i":I
    .end local v20    # "steps":D
    .end local v25    # "y":D
    .local v3, "y":D
    .restart local v7    # "steps":D
    .restart local v9    # "i":I
    .restart local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .local v11, "len":I
    :cond_1f
    move-wide/from16 v25, v3

    move-wide/from16 v20, v7

    move/from16 v16, v9

    move-object v12, v10

    move-wide v6, v5

    move v5, v11

    .line 193
    .end local v3    # "y":D
    .end local v7    # "steps":D
    .end local v9    # "i":I
    .end local v10    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v11    # "len":I
    .restart local v16    # "i":I
    .restart local v20    # "steps":D
    .restart local v25    # "y":D
    :goto_14
    add-int/lit8 v9, v16, 0x1

    move-wide v5, v6

    move-wide/from16 v7, v20

    move-wide/from16 v3, v25

    .end local v16    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_3

    .line 336
    .end local v9    # "i":I
    .end local v20    # "steps":D
    .end local v25    # "y":D
    .restart local v3    # "y":D
    .restart local v7    # "steps":D
    :cond_20
    return-void
.end method

.method private doRound(II)V
    .locals 20
    .param p1, "j"    # I
    .param p2, "k"    # I

    .line 339
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v5

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v7

    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 340
    .local v3, "a":D
    iget-wide v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->stepsPerRad:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 342
    .local v5, "steps":I
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v6

    .local v6, "X":D
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v8

    .line 343
    .local v8, "Y":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_0

    .line 344
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v13, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v13

    long-to-double v13, v13

    move-wide v15, v3

    .end local v3    # "a":D
    .local v15, "a":D
    iget-wide v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v2, v6

    add-double/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    long-to-double v13, v13

    move/from16 v17, v5

    .end local v5    # "steps":I
    .local v17, "steps":I
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v4, v8

    add-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-direct {v12, v2, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 345
    move-wide v2, v6

    .line 346
    .local v2, "X2":D
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->cos:D

    mul-double v11, v6, v4

    iget-wide v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->sin:D

    mul-double v18, v13, v8

    sub-double v6, v11, v18

    .line 347
    mul-double/2addr v13, v2

    mul-double/2addr v4, v8

    add-double v8, v13, v4

    .line 343
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    move-wide v3, v15

    move/from16 v5, v17

    goto :goto_0

    .end local v2    # "X2":D
    .end local v15    # "a":D
    .end local v17    # "steps":I
    .restart local v3    # "a":D
    .restart local v5    # "steps":I
    :cond_0
    move-wide v15, v3

    .line 349
    .end local v3    # "a":D
    .end local v10    # "i":I
    .restart local v15    # "a":D
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v10

    iget-wide v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    long-to-double v10, v10

    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    .line 350
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v12

    move-wide/from16 v18, v6

    .end local v6    # "X":D
    .local v18, "X":D
    iget-wide v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    .line 349
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method private doSquare(IIZ)V
    .locals 28
    .param p1, "j"    # I
    .param p2, "k"    # I
    .param p3, "addExtra"    # Z

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v3

    .line 355
    .local v3, "nkx":D
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v5

    .line 356
    .local v5, "nky":D
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v7

    .line 357
    .local v7, "njx":D
    iget-object v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v9

    .line 358
    .local v9, "njy":D
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v11, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    long-to-double v11, v11

    .line 359
    .local v11, "sjx":D
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v13, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    long-to-double v13, v13

    .line 360
    .local v13, "sjy":D
    iget-wide v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    mul-double v15, v3, v7

    mul-double v17, v5, v9

    move-wide/from16 v19, v7

    .end local v7    # "njx":D
    .local v19, "njx":D
    add-double v7, v15, v17

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    .line 361
    .local v1, "dx":D
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide v15, v9

    .end local v9    # "njy":D
    .local v15, "njy":D
    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    const-wide/16 v17, 0x0

    if-eqz p3, :cond_0

    mul-double v21, v5, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v21, v17

    :goto_0
    sub-double v21, v3, v21

    mul-double v9, v9, v21

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_1

    mul-double v24, v3, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v24, v17

    :goto_1
    add-double v24, v5, v24

    mul-double v9, v9, v24

    add-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v21, v8

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_2

    mul-double v21, v15, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v17

    :goto_2
    add-double v21, v19, v21

    mul-double v9, v9, v21

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    iget-wide v9, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    if-eqz p3, :cond_3

    mul-double v17, v19, v1

    :cond_3
    sub-double v17, v15, v17

    mul-double v9, v9, v17

    add-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v21, v8

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method private fixOrientations()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v0

    if-nez v0, :cond_3

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 443
    .local v1, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 441
    .end local v1    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 450
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 451
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 452
    .restart local v1    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getEndType()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v2

    if-nez v2, :cond_4

    .line 453
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 450
    .end local v1    # "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    .end local v0    # "i":I
    :cond_5
    :goto_2
    return-void
.end method

.method private static nearZero(D)Z
    .locals 2
    .param p0, "val"    # D

    .line 44
    const-wide v0, -0x4438635ef36dbdddL    # -1.0E-20

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private offsetPoint(I[ILcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V
    .locals 32
    .param p1, "j"    # I
    .param p2, "kV"    # [I
    .param p3, "jointype"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    .line 462
    .local v3, "k":I
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v4

    .line 463
    .local v4, "nkx":D
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v6

    .line 464
    .local v6, "nky":D
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getY()D

    move-result-wide v8

    .line 465
    .local v8, "njy":D
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->normals:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;->getX()D

    move-result-wide v10

    .line 466
    .local v10, "njx":D
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v12, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    .line 467
    .local v12, "sjx":J
    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v14, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    .line 468
    .local v14, "sjy":J
    mul-double v16, v4, v8

    mul-double v18, v10, v6

    move/from16 v20, v3

    .end local v3    # "k":I
    .local v20, "k":I
    sub-double v2, v16, v18

    iput-wide v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 470
    move-wide/from16 v16, v14

    .end local v14    # "sjy":J
    .local v16, "sjy":J
    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v14

    const-wide/16 v18, 0x0

    if-gez v2, :cond_1

    .line 473
    mul-double v2, v4, v10

    mul-double v21, v8, v6

    add-double v2, v2, v21

    .line 474
    .local v2, "cosA":D
    cmpl-double v21, v2, v18

    if-lez v21, :cond_0

    .line 476
    iget-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-wide/from16 v28, v2

    .end local v2    # "cosA":D
    .local v28, "cosA":D
    long-to-double v2, v12

    move-wide/from16 v30, v8

    .end local v8    # "njy":D
    .local v30, "njy":D
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v8, v4

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v2, v16

    .end local v16    # "sjy":J
    .local v2, "sjy":J
    long-to-double v8, v2

    move-wide/from16 v16, v10

    .end local v10    # "njx":D
    .local v16, "njx":D
    iget-wide v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    move-object/from16 v21, v15

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 477
    return-void

    .line 474
    .end local v28    # "cosA":D
    .end local v30    # "njy":D
    .local v2, "cosA":D
    .restart local v8    # "njy":D
    .restart local v10    # "njx":D
    .local v16, "sjy":J
    :cond_0
    move-wide/from16 v28, v2

    move-wide/from16 v30, v8

    move-wide/from16 v2, v16

    move-wide/from16 v16, v10

    .line 480
    .end local v8    # "njy":D
    .end local v10    # "njx":D
    .local v2, "sjy":J
    .local v16, "njx":D
    .restart local v30    # "njy":D
    goto :goto_0

    .line 481
    .end local v2    # "sjy":J
    .end local v30    # "njy":D
    .restart local v8    # "njy":D
    .restart local v10    # "njx":D
    .local v16, "sjy":J
    :cond_1
    move-wide/from16 v30, v8

    move-wide/from16 v2, v16

    move-wide/from16 v16, v10

    .end local v8    # "njy":D
    .end local v10    # "njx":D
    .restart local v2    # "sjy":J
    .local v16, "njx":D
    .restart local v30    # "njy":D
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    cmpl-double v10, v8, v14

    if-lez v10, :cond_2

    .line 482
    iput-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    goto :goto_0

    .line 484
    :cond_2
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 485
    iput-wide v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    .line 488
    :cond_3
    :goto_0
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->inA:D

    iget-wide v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v8, v10

    cmpg-double v8, v8, v18

    if-gez v8, :cond_4

    .line 489
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    long-to-double v10, v12

    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v14, v4

    add-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v14, v2

    move-wide/from16 v18, v4

    .end local v4    # "nkx":D
    .local v18, "nkx":D
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double/2addr v4, v6

    add-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-direct {v9, v10, v11, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->srcPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPoly:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    long-to-double v8, v12

    iget-wide v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v10, v2

    iget-wide v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->delta:D

    mul-double v14, v14, v30

    add-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    move/from16 v4, v20

    const/4 v5, 0x0

    goto :goto_1

    .line 494
    .end local v18    # "nkx":D
    .restart local v4    # "nkx":D
    :cond_4
    move-wide/from16 v18, v4

    .end local v4    # "nkx":D
    .restart local v18    # "nkx":D
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset$1;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$JoinType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move/from16 v4, v20

    const/4 v5, 0x0

    .end local v20    # "k":I
    .local v4, "k":I
    goto :goto_1

    .line 509
    .end local v4    # "k":I
    .restart local v20    # "k":I
    :pswitch_0
    move/from16 v4, v20

    .end local v20    # "k":I
    .restart local v4    # "k":I
    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doRound(II)V

    const/4 v5, 0x0

    goto :goto_1

    .line 506
    .end local v4    # "k":I
    .restart local v20    # "k":I
    :pswitch_1
    move/from16 v4, v20

    .end local v20    # "k":I
    .restart local v4    # "k":I
    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    .line 507
    const/4 v5, 0x0

    goto :goto_1

    .line 496
    .end local v4    # "k":I
    .restart local v20    # "k":I
    :pswitch_2
    move/from16 v4, v20

    .end local v20    # "k":I
    .restart local v4    # "k":I
    mul-double v10, v16, v18

    add-double/2addr v10, v14

    mul-double v8, v30, v6

    add-double/2addr v10, v8

    .line 497
    .local v10, "r":D
    iget-wide v8, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->miterLim:D

    cmpl-double v5, v10, v8

    if-ltz v5, :cond_5

    .line 498
    invoke-direct {v0, v1, v4, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doMiter(IID)V

    const/4 v5, 0x0

    goto :goto_1

    .line 501
    :cond_5
    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doSquare(IIZ)V

    .line 503
    nop

    .line 513
    .end local v10    # "r":D
    :goto_1
    aput v1, p2, v5

    .line 514
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V
    .locals 10
    .param p1, "path"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    .param p2, "joinType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;
    .param p3, "endType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    .line 85
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 86
    .local v0, "highI":I
    if-gez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;-><init>()V

    .line 90
    .local v1, "newNode":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setJoinType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;)V

    .line 91
    invoke-virtual {v1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setEndType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    .line 94
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    const/4 v3, 0x0

    if-eq p3, v2, :cond_1

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne p3, v2, :cond_2

    .line 95
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v2

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .line 102
    .local v3, "k":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-gt v4, v0, :cond_5

    .line 103
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 107
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 108
    :cond_3
    move v3, v2

    .line 102
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    .end local v4    # "i":I
    :cond_5
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-ne p3, v4, :cond_6

    const/4 v4, 0x2

    if-ge v2, v4, :cond_6

    .line 113
    return-void

    .line 116
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    .line 119
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_POLYGON:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    if-eq p3, v4, :cond_7

    .line 120
    return-void

    .line 122
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    .line 123
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    int-to-long v7, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    goto :goto_2

    .line 126
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 127
    .local v4, "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 128
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_a

    .line 129
    :cond_9
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    int-to-long v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 132
    .end local v4    # "ip":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    :cond_a
    :goto_2
    return-void
.end method

.method public addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V
    .locals 2
    .param p1, "paths"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .param p2, "joinType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;
    .param p3, "endType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    .line 136
    .local v1, "p":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    invoke-virtual {p0, v1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    .line 137
    .end local v1    # "p":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->polyNodes:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->lowest:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 143
    return-void
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;D)V
    .locals 25
    .param p1, "solution"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .param p2, "delta"    # D

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->clear()V

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->fixOrientations()V

    .line 370
    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doOffset(D)V

    .line 372
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 373
    .local v4, "clpr":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v6, v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 374
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    .line 375
    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    goto :goto_0

    .line 378
    :cond_0
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->getBounds()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;

    move-result-object v6

    .line 379
    .local v6, "r":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 381
    .local v7, "outer":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    new-instance v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v8, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    const-wide/16 v16, 0xa

    sub-long v9, v8, v16

    iget-wide v11, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v11, v11, v16

    const-wide/16 v13, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v19, v9, v16

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v21, v9, v16

    const-wide/16 v23, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v10, v9, v16

    iget-wide v12, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v12, v12, v16

    const-wide/16 v14, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    sub-long v19, v9, v16

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v21, v9, v16

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v7, v8, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 388
    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v5, v1, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 390
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->remove(I)Ljava/lang/Object;

    .line 393
    .end local v6    # "r":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    .end local v7    # "outer":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    :cond_1
    :goto_0
    return-void
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;D)V
    .locals 25
    .param p1, "solution"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;
    .param p2, "delta"    # D

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->Clear()V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->fixOrientations()V

    .line 400
    invoke-direct {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->doOffset(D)V

    .line 403
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 404
    .local v4, "clpr":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v6, v7, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 405
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    .line 406
    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->POSITIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    goto/16 :goto_1

    .line 409
    :cond_0
    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->destPolys:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->getBounds()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;

    move-result-object v6

    .line 410
    .local v6, "r":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 412
    .local v7, "outer":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    new-instance v15, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v8, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    const-wide/16 v16, 0xa

    sub-long v9, v8, v16

    iget-wide v11, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v11, v11, v16

    const-wide/16 v13, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v19, v9, v16

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->bottom:J

    add-long v21, v9, v16

    const-wide/16 v23, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->right:J

    add-long v10, v9, v16

    iget-wide v12, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v12, v12, v16

    const-wide/16 v14, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->left:J

    sub-long v19, v9, v16

    iget-wide v9, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;->top:J

    sub-long v21, v9, v16

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v4, v7, v8, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 419
    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NEGATIVE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v4, v8, v1, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChildCount()I

    move-result v8

    if-ne v8, v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 423
    .local v5, "outerNode":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getChilds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setParent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    .line 425
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 426
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getChilds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v1, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    .line 425
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 428
    .end local v5    # "outerNode":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    .end local v8    # "i":I
    :cond_1
    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->Clear()V

    .line 433
    .end local v6    # "r":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/LongRect;
    .end local v7    # "outer":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
    :goto_1
    return-void
.end method

.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;
.super Ljava/lang/Object;
.source "ClipperBridge.java"


# static fields
.field public static floatMultiplier:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addContour(Lcom/itextpdf/kernel/geom/Path;Ljava/util/List;Z)V
    .locals 6
    .param p0, "path"    # Lcom/itextpdf/kernel/geom/Path;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/geom/Path;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 280
    .local p1, "contour":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;>;"
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToFloatPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "floatContour":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 282
    .local v1, "point":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    .line 284
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 286
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->closeSubpath()V

    .line 292
    :cond_1
    return-void
.end method

.method public static addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)Ljava/util/List;
    .locals 7
    .param p0, "offset"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;
    .param p1, "path"    # Lcom/itextpdf/kernel/geom/Path;
    .param p2, "joinType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;
    .param p3, "endType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;",
            "Lcom/itextpdf/kernel/geom/Path;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "degenerateSubpaths":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Subpath;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Subpath;

    .line 123
    .local v2, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Subpath;->isDegenerate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->CLOSED_LINE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    .local v3, "et":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    goto :goto_1

    .line 135
    .end local v3    # "et":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    :cond_1
    move-object v3, p3

    .line 138
    .restart local v3    # "et":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Subpath;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v4

    .line 139
    .local v4, "linearApproxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-static {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v5, p2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperOffset;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;)V

    .line 141
    .end local v2    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    .end local v3    # "et":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    .end local v4    # "linearApproxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    :cond_2
    goto :goto_0

    .line 143
    :cond_3
    return-object v0
.end method

.method public static addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V
    .locals 5
    .param p0, "clipper"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;
    .param p1, "path"    # Lcom/itextpdf/kernel/geom/Path;
    .param p2, "polyType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 99
    .local v1, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "linearApproxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v4

    invoke-interface {p0, v3, p2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 103
    .end local v1    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    .end local v2    # "linearApproxPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public static addPolygonToClipper(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;[Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)Z
    .locals 3
    .param p0, "clipper"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;
    .param p1, "polyVertices"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p2, "polyType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    .line 257
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, p2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    move-result v0

    return v0
.end method

.method public static addPolylineSubjectToClipper(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;[Lcom/itextpdf/kernel/geom/Point;)Z
    .locals 3
    .param p0, "clipper"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;
    .param p1, "lineVertices"    # [Lcom/itextpdf/kernel/geom/Point;

    .line 276
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    move-result v0

    return v0
.end method

.method public static addRectToClipper(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;[Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V
    .locals 3
    .param p0, "clipper"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;
    .param p1, "rectVertices"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p2, "polyType"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToLongPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, p2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 308
    return-void
.end method

.method public static convertToFloatPoints(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 154
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v0, "convertedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 157
    .local v2, "point":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    .line 158
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    long-to-double v4, v4

    sget-wide v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    div-double/2addr v4, v6

    .line 159
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    long-to-double v6, v6

    sget-wide v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    div-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 157
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "point":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;
    goto :goto_0

    .line 163
    :cond_0
    return-object v0
.end method

.method public static convertToLongPoints(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;",
            ">;"
        }
    .end annotation

    .line 174
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "convertedPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Point;

    .line 177
    .local v2, "point":Lcom/itextpdf/kernel/geom/Point;
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    sget-wide v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    .line 178
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->floatMultiplier:D

    .line 179
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(DD)V

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "point":Lcom/itextpdf/kernel/geom/Point;
    goto :goto_0

    .line 183
    :cond_0
    return-object v0
.end method

.method public static convertToPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/geom/Path;
    .locals 4
    .param p0, "result"    # Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 81
    .local v0, "path":Lcom/itextpdf/kernel/geom/Path;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getFirst()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    move-result-object v1

    .line 83
    .local v1, "node":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getContour()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->isOpen()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->addContour(Lcom/itextpdf/kernel/geom/Path;Ljava/util/List;Z)V

    .line 85
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getNext()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_0
    return-object v0
.end method

.method public static getEndType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;
    .locals 1
    .param p0, "lineCapStyle"    # I

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 219
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object v0

    .line 216
    :pswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_SQUARE:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object v0

    .line 213
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;->OPEN_BUTT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$EndType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFillType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;
    .locals 2
    .param p0, "fillingRule"    # I

    .line 230
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 232
    .local v0, "fillType":Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 236
    :cond_0
    return-object v0
.end method

.method public static getJoinType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;
    .locals 1
    .param p0, "lineJoinStyle"    # I

    .line 193
    packed-switch p0, :pswitch_data_0

    .line 201
    :pswitch_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->ROUND:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object v0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->BEVEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object v0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;->MITER:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$JoinType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

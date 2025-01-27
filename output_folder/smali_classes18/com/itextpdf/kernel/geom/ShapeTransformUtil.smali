.class public final Lcom/itextpdf/kernel/geom/ShapeTransformUtil;
.super Ljava/lang/Object;
.source "ShapeTransformUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transformBezierCurve(Lcom/itextpdf/kernel/geom/BezierCurve;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/BezierCurve;
    .locals 1
    .param p0, "bezierCurve"    # Lcom/itextpdf/kernel/geom/BezierCurve;
    .param p1, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 44
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/BezierCurve;

    return-object v0
.end method

.method public static transformLine(Lcom/itextpdf/kernel/geom/Line;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Line;
    .locals 1
    .param p0, "line"    # Lcom/itextpdf/kernel/geom/Line;
    .param p1, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 57
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Line;

    return-object v0
.end method

.method public static transformPath(Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Path;
    .locals 4
    .param p0, "path"    # Lcom/itextpdf/kernel/geom/Path;
    .param p1, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 70
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 72
    .local v0, "newPath":Lcom/itextpdf/kernel/geom/Path;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/Subpath;

    .line 73
    .local v2, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-static {v2, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSubpath(Lcom/itextpdf/kernel/geom/Subpath;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v3

    .line 74
    .local v3, "transformedSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Path;->addSubpath(Lcom/itextpdf/kernel/geom/Subpath;)V

    .line 75
    .end local v2    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    .end local v3    # "transformedSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method private static varargs transformPoints(Lcom/itextpdf/kernel/geom/Matrix;[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 14
    .param p0, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;
    .param p1, "points"    # [Lcom/itextpdf/kernel/geom/Point;

    .line 108
    :try_start_0
    new-instance v13, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v3, v0

    const/4 v0, 0x3

    .line 110
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v5, v0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v7, v0

    const/4 v0, 0x6

    .line 111
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v9, v0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v0

    float-to-double v11, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    move-object v0, v13

    .line 113
    .local v0, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 115
    .end local v0    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v1, "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    array-length v0, p1

    new-array v0, v0, [Lcom/itextpdf/kernel/geom/Point;

    .line 116
    .local v0, "newPoints":[Lcom/itextpdf/kernel/geom/Point;
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 118
    .end local v0    # "newPoints":[Lcom/itextpdf/kernel/geom/Point;
    .end local v1    # "t":Lcom/itextpdf/kernel/geom/AffineTransform;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "A noninvertible matrix has been parsed. The behaviour is unpredictable."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;
    .locals 5
    .param p0, "segment"    # Lcom/itextpdf/kernel/geom/IShape;
    .param p1, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 93
    invoke-interface {p0}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "basePoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/kernel/geom/Point;

    invoke-static {p1, v1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformPoints(Lcom/itextpdf/kernel/geom/Matrix;[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 97
    .local v1, "newBasePoints":[Lcom/itextpdf/kernel/geom/Point;
    instance-of v2, p0, Lcom/itextpdf/kernel/geom/BezierCurve;

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/geom/BezierCurve;-><init>(Ljava/util/List;)V

    .local v2, "newSegment":Lcom/itextpdf/kernel/geom/IShape;
    goto :goto_0

    .line 100
    .end local v2    # "newSegment":Lcom/itextpdf/kernel/geom/IShape;
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/geom/Line;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    .line 103
    .restart local v2    # "newSegment":Lcom/itextpdf/kernel/geom/IShape;
    :goto_0
    return-object v2
.end method

.method private static transformSubpath(Lcom/itextpdf/kernel/geom/Subpath;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Subpath;
    .locals 4
    .param p0, "subpath"    # Lcom/itextpdf/kernel/geom/Subpath;
    .param p1, "ctm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Subpath;-><init>()V

    .line 82
    .local v0, "newSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/IShape;

    .line 85
    .local v2, "segment":Lcom/itextpdf/kernel/geom/IShape;
    invoke-static {v2, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformSegment(Lcom/itextpdf/kernel/geom/IShape;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/IShape;

    move-result-object v3

    .line 86
    .local v3, "transformedSegment":Lcom/itextpdf/kernel/geom/IShape;
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 87
    .end local v2    # "segment":Lcom/itextpdf/kernel/geom/IShape;
    .end local v3    # "transformedSegment":Lcom/itextpdf/kernel/geom/IShape;
    goto :goto_0

    .line 89
    :cond_0
    return-object v0
.end method

.class public Lcom/itextpdf/kernel/geom/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final START_PATH_ERR_MSG:Ljava/lang/String; = "Path shall start with \"re\" or \"m\" operator"

.field private static final serialVersionUID:J = 0x1704643bd172b0a4L


# instance fields
.field private currentPoint:Lcom/itextpdf/kernel/geom/Point;

.field private subpaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Path;)V
    .locals 1
    .param p1, "path"    # Lcom/itextpdf/kernel/geom/Path;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Path;->getSubpaths()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/geom/Path;->addSubpaths(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "subpaths":Ljava/util/List;, "Ljava/util/List<+Lcom/itextpdf/kernel/geom/Subpath;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    .line 69
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/geom/Path;->addSubpaths(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method private getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Subpath;

    return-object v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public addSubpath(Lcom/itextpdf/kernel/geom/Subpath;)V
    .locals 1
    .param p1, "subpath"    # Lcom/itextpdf/kernel/geom/Subpath;

    .line 89
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 91
    return-void
.end method

.method public addSubpaths(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "subpaths":Ljava/util/List;, "Ljava/util/List<+Lcom/itextpdf/kernel/geom/Subpath;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 101
    .local v1, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(Lcom/itextpdf/kernel/geom/Subpath;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v1    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Subpath;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 105
    :cond_1
    return-void
.end method

.method public closeAllSubpaths()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Subpath;

    .line 246
    .local v1, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 247
    .end local v1    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public closeSubpath()V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v0

    .line 234
    .local v0, "lastSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 236
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->getStartPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    .line 237
    .local v1, "startPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    .line 239
    .end local v0    # "lastSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    .end local v1    # "startPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_0
    return-void
.end method

.method public curveFromTo(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x3"    # F
    .param p4, "y3"    # F

    .line 199
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/Path;->curveTo(FFFFFF)V

    .line 203
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public curveTo(FFFF)V
    .locals 9
    .param p1, "x2"    # F
    .param p2, "y2"    # F
    .param p3, "x3"    # F
    .param p4, "y3"    # F

    .line 182
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v3, v0

    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v0

    double-to-float v4, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/kernel/geom/Path;->curveTo(FFFFFF)V

    .line 186
    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public curveTo(FFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 157
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 162
    .local v0, "secondPoint":Lcom/itextpdf/kernel/geom/Point;
    new-instance v1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v2, p3

    float-to-double v4, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 163
    .local v1, "thirdPoint":Lcom/itextpdf/kernel/geom/Point;
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v3, p5

    float-to-double v5, p6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 165
    .local v2, "fourthPoint":Lcom/itextpdf/kernel/geom/Point;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/itextpdf/kernel/geom/Point;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v3, "controlPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v4

    new-instance v5, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/geom/BezierCurve;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 168
    iput-object v2, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 169
    return-void

    .line 158
    .end local v0    # "secondPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v1    # "thirdPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v2    # "fourthPoint":Lcom/itextpdf/kernel/geom/Point;
    .end local v3    # "controlPoints":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-object v0
.end method

.method public getSubpaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Subpath;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineTo(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 138
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 142
    .local v0, "targetPoint":Lcom/itextpdf/kernel/geom/Point;
    invoke-direct {p0}, Lcom/itextpdf/kernel/geom/Path;->getLastSubpath()Lcom/itextpdf/kernel/geom/Subpath;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/geom/Line;

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 143
    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 144
    return-void

    .line 139
    .end local v0    # "targetPoint":Lcom/itextpdf/kernel/geom/Point;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Path shall start with \"re\" or \"m\" operator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveTo(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 122
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 123
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Subpath;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "lastSubpath":Lcom/itextpdf/kernel/geom/Subpath;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setStartPoint(Lcom/itextpdf/kernel/geom/Point;)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/kernel/geom/Subpath;

    iget-object v3, p0, Lcom/itextpdf/kernel/geom/Path;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(Lcom/itextpdf/kernel/geom/Point;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_1
    return-void
.end method

.method public rectangle(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/geom/Path;->moveTo(FF)V

    .line 222
    add-float v0, p1, p3

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 223
    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 224
    add-float v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/geom/Path;->lineTo(FF)V

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Path;->closeSubpath()V

    .line 226
    return-void
.end method

.method public rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 210
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Path;->rectangle(FFFF)V

    .line 211
    return-void
.end method

.method public replaceCloseWithLine()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "modifiedSubpathsIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 264
    .local v1, "i":I
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Path;->subpaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/geom/Subpath;

    .line 265
    .local v3, "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Subpath;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Subpath;->setClosed(Z)V

    .line 267
    new-instance v4, Lcom/itextpdf/kernel/geom/Line;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Subpath;->getLastPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Subpath;->getStartPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/geom/Line;-><init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/Subpath;->addSegment(Lcom/itextpdf/kernel/geom/IShape;)V

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    nop

    .end local v3    # "subpath":Lcom/itextpdf/kernel/geom/Subpath;
    add-int/lit8 v1, v1, 0x1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    return-object v0
.end method

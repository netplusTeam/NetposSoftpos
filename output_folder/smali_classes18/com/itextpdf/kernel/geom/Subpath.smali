.class public Lcom/itextpdf/kernel/geom/Subpath;
.super Ljava/lang/Object;
.source "Subpath.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3014341560cd2fe2L


# instance fields
.field private closed:Z

.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/IShape;",
            ">;"
        }
    .end annotation
.end field

.field private startPoint:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    .line 67
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5
    .param p1, "startPointX"    # F
    .param p2, "startPointY"    # F

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    .line 96
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 3
    .param p1, "startPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 86
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;-><init>(FF)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Subpath;)V
    .locals 2
    .param p1, "subpath"    # Lcom/itextpdf/kernel/geom/Subpath;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    .line 75
    iget-object v1, p1, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    iput-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Subpath;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-boolean v0, p1, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    .line 78
    return-void
.end method


# virtual methods
.method public addSegment(Lcom/itextpdf/kernel/geom/IShape;)V
    .locals 2
    .param p1, "segment"    # Lcom/itextpdf/kernel/geom/IShape;

    .line 143
    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/Subpath;->isSinglePointOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {p1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public getLastPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 129
    .local v0, "lastPoint":Lcom/itextpdf/kernel/geom/Point;
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/IShape;

    .line 131
    .local v1, "shape":Lcom/itextpdf/kernel/geom/IShape;
    invoke-interface {v1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 134
    .end local v1    # "shape":Lcom/itextpdf/kernel/geom/IShape;
    :cond_0
    return-object v0
.end method

.method public getPiecewiseLinearApproximation()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 239
    return-object v0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/geom/BezierCurve;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/BezierCurve;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/IShape;

    invoke-interface {v1}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/kernel/geom/BezierCurve;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/BezierCurve;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/BezierCurve;->getPiecewiseLinearApproximation()Ljava/util/List;

    move-result-object v2

    .line 253
    .local v2, "segApprox":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 255
    .end local v2    # "segApprox":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/IShape;

    invoke-interface {v2}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v2

    .line 256
    .restart local v2    # "segApprox":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 259
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    .end local v2    # "segApprox":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Point;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/IShape;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    return-object v0
.end method

.method public getStartPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    return v0
.end method

.method public isDegenerate()Z
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    .line 215
    return v1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/geom/IShape;

    .line 219
    .local v2, "segment":Lcom/itextpdf/kernel/geom/IShape;
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Lcom/itextpdf/kernel/geom/IShape;->getBasePoints()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 222
    .local v4, "points":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Point;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 223
    return v1

    .line 225
    .end local v2    # "segment":Lcom/itextpdf/kernel/geom/IShape;
    .end local v4    # "points":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/geom/Point;>;"
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSinglePointClosed()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSinglePointOpen()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setClosed(Z)V
    .locals 0
    .param p1, "closed"    # Z

    .line 203
    iput-boolean p1, p0, Lcom/itextpdf/kernel/geom/Subpath;->closed:Z

    .line 204
    return-void
.end method

.method public setStartPoint(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 113
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Subpath;->startPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 114
    return-void
.end method

.method public setStartPoint(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 3
    .param p1, "startPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/geom/Subpath;->setStartPoint(FF)V

    .line 105
    return-void
.end method

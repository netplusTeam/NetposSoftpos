.class public Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;
.source "PolygonSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IMarkerCapable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;-><init>()V

    return-void
.end method

.method private connectPoints()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/geom/Point;

    .line 73
    .local v0, "start":Lcom/itextpdf/kernel/geom/Point;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->points:Ljava/util/List;

    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/geom/Point;

    .line 74
    .local v1, "end":Lcom/itextpdf/kernel/geom/Point;
    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/Point;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    iget-wide v4, v1, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->points:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/kernel/geom/Point;

    iget-wide v4, v0, Lcom/itextpdf/kernel/geom/Point;->x:D

    iget-wide v6, v0, Lcom/itextpdf/kernel/geom/Point;->y:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 81
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;-><init>()V

    .line 82
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 83
    return-object v0
.end method

.method protected setPoints(Ljava/lang/String;)V
    .locals 0
    .param p1, "pointsAttribute"    # Ljava/lang/String;

    .line 60
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PolylineSvgNodeRenderer;->setPoints(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/PolygonSvgNodeRenderer;->connectPoints()V

    .line 62
    return-void
.end method

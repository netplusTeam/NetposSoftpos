.class public Lcom/itextpdf/layout/renderer/CellRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "CellRenderer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Cell;)V
    .locals 2
    .param p1, "modelElement"    # Lcom/itextpdf/layout/element/Cell;

    .line 66
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/16 v0, 0x3c

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 69
    const/16 v0, 0x10

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "borders"    # [Lcom/itextpdf/layout/borders/Border;
    .param p3, "reverse"    # Z

    .line 159
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/layout/renderer/BlockRenderer;->applyBorderBox(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/borders/Border;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 165
    :cond_0
    return-object p1
.end method

.method protected applyMargins(Lcom/itextpdf/kernel/geom/Rectangle;[Lcom/itextpdf/layout/property/UnitValue;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 3
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "margins"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p3, "reverse"    # Z

    .line 171
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/layout/renderer/CellRenderer;->applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 174
    :cond_0
    return-object p1
.end method

.method protected applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 6
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "reverse"    # Z

    .line 178
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 180
    .local v0, "verticalBorderSpacing":Ljava/lang/Float;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 181
    .local v1, "horizontalBorderSpacing":Ljava/lang/Float;
    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 182
    .local v2, "cellSpacings":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 183
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_2
    nop

    :goto_1
    aput v5, v2, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0, p1, v2, p2}, Lcom/itextpdf/layout/renderer/CellRenderer;->applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;[FZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 191
    .end local v0    # "verticalBorderSpacing":Ljava/lang/Float;
    .end local v1    # "horizontalBorderSpacing":Ljava/lang/Float;
    .end local v2    # "cellSpacings":[F
    :cond_4
    return-object p1
.end method

.method protected applySpacings(Lcom/itextpdf/kernel/geom/Rectangle;[FZ)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8
    .param p1, "rect"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "spacings"    # [F
    .param p3, "reverse"    # Z

    .line 195
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    aget v0, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    const/4 v0, 0x1

    aget v0, p2, v0

    div-float v4, v0, v1

    const/4 v0, 0x2

    aget v0, p2, v0

    div-float v5, v0, v1

    const/4 v0, 0x3

    aget v0, p2, v0

    div-float v6, v0, v1

    move-object v2, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/kernel/geom/Rectangle;->applyMargins(FFFFZ)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 200
    :cond_0
    return-object p1
.end method

.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 104
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 105
    .local v0, "overflowRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 106
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 108
    return-object v0
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2
    .param p1, "layoutResult"    # I

    .line 90
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    .line 91
    .local v0, "splitRenderer":Lcom/itextpdf/layout/renderer/CellRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 92
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    .line 93
    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    iput-object v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/layout/renderer/CellRenderer;->isLastRendererForModelElement:Z

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->addAllProperties(Ljava/util/Map;)V

    .line 96
    return-object v0
.end method

.method public drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 28
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 113
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/layout/renderer/DrawContext;->getCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v2

    .line 114
    .local v2, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v3

    .line 117
    .local v3, "ctm":Lcom/itextpdf/kernel/geom/Matrix;
    const/16 v0, 0x37

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v4

    .line 118
    .local v4, "angle":Ljava/lang/Float;
    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v6}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasProperty(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v7

    .line 119
    .local v8, "avoidRotation":Z
    :goto_0
    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->hasOwnProperty(I)Z

    move-result v9

    .line 120
    .local v9, "restoreRotation":Z
    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eqz v8, :cond_1

    .line 121
    new-instance v26, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v14, v13

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    move/from16 v27, v8

    .end local v8    # "avoidRotation":Z
    .local v27, "avoidRotation":Z
    float-to-double v7, v13

    invoke-virtual {v3, v12}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v0, v13

    invoke-virtual {v3, v11}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v11, v13

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    float-to-double v5, v13

    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v13

    move-wide/from16 v20, v11

    float-to-double v10, v13

    move-object/from16 v13, v26

    move-wide/from16 v16, v7

    move-wide/from16 v18, v0

    move-wide/from16 v22, v5

    move-wide/from16 v24, v10

    invoke-direct/range {v13 .. v25}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    move-object/from16 v1, v26

    .line 123
    .local v1, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :try_start_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v0
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v0, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    nop

    .line 127
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 128
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 129
    const/4 v1, 0x0

    const/16 v6, 0x37

    move-object/from16 v5, p0

    invoke-virtual {v5, v6, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    .line 124
    .end local v0    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .restart local v1    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    move-object v6, v0

    move-object v0, v6

    .line 125
    .local v0, "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    new-instance v6, Lcom/itextpdf/kernel/PdfException;

    const-string v7, "A noninvertible matrix has been parsed. The behaviour is unpredictable."

    invoke-direct {v6, v7, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 120
    .end local v0    # "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    .end local v1    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .end local v27    # "avoidRotation":Z
    .restart local v8    # "avoidRotation":Z
    :cond_1
    move-object v5, v1

    move/from16 v27, v8

    .line 132
    .end local v8    # "avoidRotation":Z
    .restart local v27    # "avoidRotation":Z
    :goto_1
    invoke-super/range {p0 .. p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBackground(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 135
    if-eqz v27, :cond_3

    .line 136
    if-eqz v9, :cond_2

    .line 137
    const/16 v0, 0x37

    invoke-virtual {v5, v0, v4}, Lcom/itextpdf/layout/renderer/CellRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_2

    .line 139
    :cond_2
    const/16 v0, 0x37

    invoke-virtual {v5, v0}, Lcom/itextpdf/layout/renderer/CellRenderer;->deleteOwnProperty(I)V

    .line 141
    :goto_2
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v11, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v13, v1

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    float-to-double v6, v1

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    move-object v8, v4

    .end local v4    # "angle":Ljava/lang/Float;
    .local v8, "angle":Ljava/lang/Float;
    float-to-double v4, v1

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    move-object/from16 v24, v8

    move/from16 v23, v9

    .end local v8    # "angle":Ljava/lang/Float;
    .end local v9    # "restoreRotation":Z
    .local v23, "restoreRotation":Z
    .local v24, "angle":Ljava/lang/Float;
    float-to-double v8, v1

    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v1

    move-object/from16 v25, v2

    .end local v2    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v25, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    float-to-double v1, v1

    move-object v10, v0

    move-wide v15, v6

    move-wide/from16 v17, v4

    move-wide/from16 v19, v8

    move-wide/from16 v21, v1

    invoke-direct/range {v10 .. v22}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    move-object/from16 v1, v25

    .end local v25    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v1, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_3

    .line 135
    .end local v1    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v23    # "restoreRotation":Z
    .end local v24    # "angle":Ljava/lang/Float;
    .restart local v2    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v4    # "angle":Ljava/lang/Float;
    .restart local v9    # "restoreRotation":Z
    :cond_3
    move-object v1, v2

    move-object/from16 v24, v4

    move/from16 v23, v9

    .line 143
    .end local v2    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v4    # "angle":Ljava/lang/Float;
    .end local v9    # "restoreRotation":Z
    .restart local v1    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .restart local v23    # "restoreRotation":Z
    .restart local v24    # "angle":Ljava/lang/Float;
    :goto_3
    return-void
.end method

.method public drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V
    .locals 3
    .param p1, "drawContext"    # Lcom/itextpdf/layout/renderer/DrawContext;

    .line 150
    sget-object v0, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->SEPARATE:Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/CellRenderer;->parent:Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->drawBorder(Lcom/itextpdf/layout/renderer/DrawContext;)V

    .line 155
    :cond_0
    return-void
.end method

.method public getModelElement()Lcom/itextpdf/layout/IPropertyContainer;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 208
    new-instance v0, Lcom/itextpdf/layout/renderer/CellRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/CellRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/CellRenderer;-><init>(Lcom/itextpdf/layout/element/Cell;)V

    return-object v0
.end method

.method protected retrieveWidth(F)Ljava/lang/Float;
    .locals 1
    .param p1, "parentBoxWidth"    # F

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

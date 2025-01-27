.class public abstract Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;
.source "AbstractBranchSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/IBranchSvgNodeRenderer;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field protected static final VIEWBOX_VALUES_NUMBER:I = 0x4


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    return-void
.end method

.method private applyViewportClip(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 194
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 195
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 196
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 197
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 198
    return-void
.end method

.method private applyViewportTranslationCorrection(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 4
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 202
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateViewPortTranslation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    .line 203
    .local v1, "tf":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Attributes;->PRESERVE_ASPECT_RATIO:Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 207
    :cond_0
    return-void
.end method

.method private cleanUp(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 307
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->removeCurrentViewPort()V

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 312
    return-void
.end method

.method private static isOverflowVisible(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)Z
    .locals 3
    .param p0, "currentElement"    # Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    .line 448
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string v1, "overflow"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "visible"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    .line 449
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 448
    :goto_1
    return v0
.end method

.method private static scaleViewBoxValues([FFF)[F
    .locals 3
    .param p0, "values"    # [F
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 439
    array-length v0, p0

    new-array v0, v0, [F

    .line 440
    .local v0, "scaledViewBoxValues":[F
    const/4 v1, 0x0

    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 441
    const/4 v1, 0x1

    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 442
    const/4 v1, 0x2

    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 443
    const/4 v1, 0x3

    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 444
    return-object v0
.end method

.method private static writeBBoxAccordingToVisibleOverflow(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 26
    .param p0, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 462
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 463
    .local v2, "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->size()I

    move-result v3

    .line 464
    .local v3, "canvasesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->popCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    move-object v4, v0

    .line 468
    .local v4, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 469
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 470
    .local v6, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v7

    .line 471
    .local v7, "matrix":Lcom/itextpdf/kernel/geom/Matrix;
    new-instance v15, Lcom/itextpdf/kernel/geom/AffineTransform;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v9, v8

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v11, v8

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    float-to-double v13, v8

    const/4 v8, 0x4

    .line 472
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    move-object/from16 v21, v6

    .end local v6    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v21, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    float-to-double v5, v8

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    move-object/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .end local v3    # "canvasesSize":I
    .local v22, "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .local v23, "canvasesSize":I
    float-to-double v2, v8

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Matrix;->get(I)F

    move-result v8

    move/from16 v24, v0

    .end local v0    # "i":I
    .local v24, "i":I
    float-to-double v0, v8

    move-object v8, v15

    move-object/from16 v25, v7

    move-object v7, v15

    .end local v7    # "matrix":Lcom/itextpdf/kernel/geom/Matrix;
    .local v25, "matrix":Lcom/itextpdf/kernel/geom/Matrix;
    move-wide v15, v5

    move-wide/from16 v17, v2

    move-wide/from16 v19, v0

    invoke-direct/range {v8 .. v20}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    .line 471
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 473
    move-object/from16 v1, p0

    move-object/from16 v0, v21

    .end local v21    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .local v0, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 468
    .end local v0    # "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v25    # "matrix":Lcom/itextpdf/kernel/geom/Matrix;
    add-int/lit8 v0, v24, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    const/4 v5, 0x1

    .end local v24    # "i":I
    .local v0, "i":I
    goto :goto_1

    .end local v22    # "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .end local v23    # "canvasesSize":I
    .restart local v2    # "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .restart local v3    # "canvasesSize":I
    :cond_1
    move-object/from16 v1, p0

    move/from16 v24, v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 476
    .end local v0    # "i":I
    .end local v2    # "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .end local v3    # "canvasesSize":I
    .restart local v22    # "canvases":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;>;"
    .restart local v23    # "canvasesSize":I
    :try_start_0
    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->createInverse()Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v5
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v4    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .local v5, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    nop

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getRootViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 486
    .local v0, "points":[Lcom/itextpdf/kernel/geom/Point;
    const/4 v7, 0x0

    const/4 v9, 0x0

    array-length v10, v0

    move-object v6, v0

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform([Lcom/itextpdf/kernel/geom/Point;I[Lcom/itextpdf/kernel/geom/Point;II)V

    .line 487
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 488
    .local v2, "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 489
    return-void

    .line 477
    .end local v0    # "points":[Lcom/itextpdf/kernel/geom/Point;
    .end local v2    # "bbox":Lcom/itextpdf/kernel/geom/Rectangle;
    .end local v5    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .restart local v4    # "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    :catch_0
    move-exception v0

    move-object/from16 v6, p1

    move-object v2, v0

    move-object v0, v2

    .line 480
    .local v0, "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v5, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v7, v7, v7}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v6, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 481
    const-class v2, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 482
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Unable to get inverse transformation matrix and thus calculate a viewport for the element because some of the transformation matrices, which are written to document, have a determinant of zero value. A bbox of zero values will be used as a viewport for this element."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 483
    return-void
.end method


# virtual methods
.method public final addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1
    .param p1, "child"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method

.method applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 4
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getViewBoxValues()[F

    move-result-object v0

    .line 153
    .local v0, "viewBoxValues":[F
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 154
    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    aput v3, v1, v2

    .line 155
    .local v1, "values":[F
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 156
    .local v2, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 157
    .end local v1    # "values":[F
    .end local v2    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    .line 159
    .local v1, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V

    .line 161
    .end local v1    # "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_0
    return-void
.end method

.method calculateAndApplyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 15
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "values"    # [F
    .param p3, "currentViewPort"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 360
    move-object/from16 v0, p2

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->retrieveAlignAndMeet()[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "alignAndMeet":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 362
    .local v2, "align":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v9, v1, v3

    .line 364
    .local v9, "meetOrSlice":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v4

    const/4 v5, 0x2

    aget v5, v0, v5

    div-float/2addr v4, v5

    .line 365
    .local v4, "scaleWidth":F
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    const/4 v6, 0x3

    aget v6, v0, v6

    div-float/2addr v5, v6

    .line 367
    .local v5, "scaleHeight":F
    const-string v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v3, v6

    move v10, v3

    .line 368
    .local v10, "forceUniformScaling":Z
    if-eqz v10, :cond_1

    .line 370
    const-string v3, "meet"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v4, v3

    .end local v4    # "scaleWidth":F
    .local v3, "scaleWidth":F
    goto :goto_0

    .line 373
    .end local v3    # "scaleWidth":F
    .restart local v4    # "scaleWidth":F
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v4, v3

    .line 375
    :goto_0
    move v5, v4

    move v11, v4

    move v12, v5

    goto :goto_1

    .line 368
    :cond_1
    move v11, v4

    move v12, v5

    .line 378
    .end local v4    # "scaleWidth":F
    .end local v5    # "scaleHeight":F
    .local v11, "scaleWidth":F
    .local v12, "scaleHeight":F
    :goto_1
    float-to-double v3, v11

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->getScaleInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v13

    .line 380
    .local v13, "scale":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-static {v0, v11, v12}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->scaleViewBoxValues([FFF)[F

    move-result-object v14

    .line 382
    .local v14, "scaledViewBoxValues":[F
    move-object v3, p0

    move-object/from16 v4, p1

    move-object v5, v14

    move-object v6, v2

    move v7, v11

    move v8, v12

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->processAspectRatioPosition(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLjava/lang/String;FF)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 384
    .local v3, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual {v13}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 388
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v5

    div-float/2addr v5, v11

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 389
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    div-float/2addr v5, v11

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 390
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    div-float/2addr v5, v12

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 391
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    div-float/2addr v5, v12

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 394
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    .line 396
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 400
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateX()D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setX(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 401
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v5

    move-object v6, v1

    .end local v1    # "alignAndMeet":[Ljava/lang/String;
    .local v6, "alignAndMeet":[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v7

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->setY(F)Lcom/itextpdf/kernel/geom/Rectangle;

    goto :goto_2

    .line 394
    .end local v6    # "alignAndMeet":[Ljava/lang/String;
    .restart local v1    # "alignAndMeet":[Ljava/lang/String;
    :cond_3
    move-object v6, v1

    .line 403
    .end local v1    # "alignAndMeet":[Ljava/lang/String;
    .restart local v6    # "alignAndMeet":[Ljava/lang/String;
    :goto_2
    return-void
.end method

.method public abstract createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.end method

.method protected final deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V
    .locals 3
    .param p1, "deepCopy"    # Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    .line 334
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 335
    .local v1, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    .line 336
    .local v2, "newChild":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 337
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->addChild(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 338
    .end local v1    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .end local v2    # "newChild":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 7
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 99
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 100
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 101
    .local v0, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 102
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 104
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->makeXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    .line 106
    .local v1, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 107
    .local v2, "newCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 109
    invoke-static {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->isOverflowVisible(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)Z

    move-result v3

    .line 111
    .local v3, "overflowVisible":Z
    instance-of v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 112
    invoke-static {p1, v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->writeBBoxAccordingToVisibleOverflow(Lcom/itextpdf/svg/renderers/SvgDrawContext;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    .line 115
    .local v4, "bbBox":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 118
    .end local v4    # "bbBox":Lcom/itextpdf/kernel/geom/Rectangle;
    :goto_0
    instance-of v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v4, :cond_1

    .line 119
    move-object v4, p0

    check-cast v4, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    invoke-virtual {v4, p1}, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;->applyMarkerAttributes(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 122
    :cond_1
    invoke-virtual {p1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 125
    instance-of v4, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewportClip(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 129
    :cond_3
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->applyViewportTranslationCorrection(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 132
    .local v5, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v6, v5, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-nez v6, :cond_4

    .line 133
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 134
    invoke-interface {v5, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 135
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 137
    .end local v5    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_4
    goto :goto_1

    .line 139
    :cond_5
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->cleanUp(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 144
    .end local v0    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v1    # "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .end local v2    # "newCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v3    # "overflowVisible":Z
    :cond_6
    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getViewBoxValues()[F
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    new-array v0, v1, [F

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Attributes;->VIEWBOX:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "viewBoxValues":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 411
    new-array v1, v1, [F

    return-object v1

    .line 413
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 414
    .local v2, "valueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    .line 415
    .local v3, "values":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 416
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .end local v4    # "i":I
    :cond_2
    array-length v4, v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    .line 420
    sget-object v4, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 421
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v6, "The viewBox value must be 4 numbers. This viewBox=\"{0}\" will not be processed."

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 424
    :cond_3
    new-array v1, v1, [F

    return-object v1

    .line 428
    :cond_4
    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_6

    const/4 v4, 0x3

    aget v4, v3, v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    goto :goto_1

    .line 435
    :cond_5
    return-object v3

    .line 429
    :cond_6
    :goto_1
    sget-object v4, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 430
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v6, "The viewBox width and height cannot be negative. This viewBox=\"{0}\" will not be processed."

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 433
    :cond_7
    new-array v1, v1, [F

    return-object v1
.end method

.method postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 343
    return-void
.end method

.method processAspectRatioPosition(Lcom/itextpdf/svg/renderers/SvgDrawContext;[FLjava/lang/String;FF)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 16
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;
    .param p2, "viewBoxValues"    # [F
    .param p3, "align"    # Ljava/lang/String;
    .param p4, "scaleWidth"    # F
    .param p5, "scaleHeight"    # F

    .line 221
    move-object/from16 v0, p0

    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 222
    .local v1, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 224
    .local v2, "currentViewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x2

    aget v6, p2, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 225
    .local v4, "midXBox":F
    const/4 v6, 0x1

    aget v8, p2, v6

    const/4 v9, 0x3

    aget v10, p2, v9

    div-float/2addr v10, v7

    add-float/2addr v8, v10

    .line 227
    .local v8, "midYBox":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v11

    div-float/2addr v11, v7

    add-float/2addr v10, v11

    .line 228
    .local v10, "midXPort":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v11

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v12

    div-float/2addr v12, v7

    add-float/2addr v11, v12

    .line 230
    .local v11, "midYPort":F
    const/4 v7, 0x0

    .line 231
    .local v7, "x":F
    const/4 v12, 0x0

    .line 234
    .local v12, "y":F
    iget-object v13, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v14, "x"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 235
    iget-object v13, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    .line 239
    :cond_0
    iget-object v13, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    const-string/jumbo v14, "y"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 240
    iget-object v13, v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v12

    .line 243
    :cond_1
    instance-of v13, v0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-nez v13, :cond_2

    .line 244
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v13

    sub-float/2addr v7, v13

    .line 245
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v13

    sub-float/2addr v12, v13

    .line 250
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_3
    goto/16 :goto_0

    :sswitch_0
    const-string v15, "none"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v14, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v15, "xminymin"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v14, v6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v15, "xminymid"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v14, v5

    goto :goto_0

    :sswitch_3
    const-string/jumbo v15, "xminymax"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v14, v9

    goto :goto_0

    :sswitch_4
    const-string/jumbo v15, "xmidymin"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v14, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v15, "xmidymid"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v14, 0x9

    goto :goto_0

    :sswitch_6
    const-string/jumbo v15, "xmidymax"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v14, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v15, "xmaxymin"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v14, 0x6

    goto :goto_0

    :sswitch_8
    const-string/jumbo v15, "xmaxymid"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v14, 0x7

    goto :goto_0

    :sswitch_9
    const-string/jumbo v15, "xmaxymax"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v14, 0x8

    :goto_0
    packed-switch v14, :pswitch_data_0

    .line 287
    sub-float v3, v10, v4

    add-float/2addr v7, v3

    .line 288
    sub-float v3, v11, v8

    add-float/2addr v12, v3

    goto :goto_1

    .line 282
    :pswitch_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    aget v5, p2, v5

    sub-float/2addr v3, v5

    add-float/2addr v7, v3

    .line 283
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    aget v5, p2, v9

    sub-float/2addr v3, v5

    add-float/2addr v12, v3

    .line 284
    goto :goto_1

    .line 278
    :pswitch_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    aget v5, p2, v5

    sub-float/2addr v3, v5

    add-float/2addr v7, v3

    .line 279
    sub-float v3, v11, v8

    add-float/2addr v12, v3

    .line 280
    goto :goto_1

    .line 274
    :pswitch_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v3

    aget v5, p2, v5

    sub-float/2addr v3, v5

    add-float/2addr v7, v3

    .line 275
    aget v3, p2, v6

    sub-float/2addr v12, v3

    .line 276
    goto :goto_1

    .line 270
    :pswitch_3
    sub-float v3, v10, v4

    add-float/2addr v7, v3

    .line 271
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    aget v5, p2, v9

    sub-float/2addr v3, v5

    add-float/2addr v12, v3

    .line 272
    goto :goto_1

    .line 266
    :pswitch_4
    sub-float v3, v10, v4

    add-float/2addr v7, v3

    .line 267
    aget v3, p2, v6

    sub-float/2addr v12, v3

    .line 268
    goto :goto_1

    .line 262
    :pswitch_5
    aget v3, p2, v3

    sub-float/2addr v7, v3

    .line 263
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    aget v5, p2, v9

    sub-float/2addr v3, v5

    add-float/2addr v12, v3

    .line 264
    goto :goto_1

    .line 258
    :pswitch_6
    aget v3, p2, v3

    sub-float/2addr v7, v3

    .line 259
    sub-float v3, v11, v8

    add-float/2addr v12, v3

    .line 260
    goto :goto_1

    .line 254
    :pswitch_7
    aget v3, p2, v3

    sub-float/2addr v7, v3

    .line 255
    aget v3, p2, v6

    sub-float/2addr v12, v3

    .line 256
    goto :goto_1

    .line 252
    :pswitch_8
    nop

    .line 293
    :goto_1
    div-float v7, v7, p4

    .line 294
    div-float v12, v12, p5

    .line 296
    float-to-double v5, v7

    float-to-double v13, v12

    invoke-virtual {v1, v5, v6, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 298
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x1c11fdc9 -> :sswitch_9
        -0x1c11fce5 -> :sswitch_8
        -0x1c11fcdb -> :sswitch_7
        -0xf850ee5 -> :sswitch_6
        -0xf850e01 -> :sswitch_5
        -0xf850df7 -> :sswitch_4
        -0xef823db -> :sswitch_3
        -0xef822f7 -> :sswitch_2
        -0xef822ed -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method retrieveAlignAndMeet()[Ljava/lang/String;
    .locals 7

    .line 164
    const-string v0, "meet"

    .line 165
    .local v0, "meetOrSlice":Ljava/lang/String;
    const-string/jumbo v1, "xmidymid"

    .line 167
    .local v1, "align":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v3, Lcom/itextpdf/svg/SvgConstants$Attributes;->PRESERVE_ASPECT_RATIO:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->attributesAndStyles:Ljava/util/Map;

    sget-object v5, Lcom/itextpdf/svg/SvgConstants$Attributes;->PRESERVE_ASPECT_RATIO:Ljava/lang/String;

    .line 169
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "preserveAspectRatioValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 172
    .local v5, "aspectRatioValuesSplitValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 174
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local v2    # "preserveAspectRatioValue":Ljava/lang/String;
    .end local v5    # "aspectRatioValuesSplitValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    instance-of v2, p0, Lcom/itextpdf/svg/renderers/impl/MarkerSvgNodeRenderer;

    if-eqz v2, :cond_1

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    const-string v2, "meet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const-string/jumbo v1, "xminymin"

    .line 185
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    return-object v2
.end method

.method setPartOfClipPath(Z)V
    .locals 3
    .param p1, "isPart"    # Z

    .line 350
    invoke-super {p0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 351
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 352
    .local v1, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    instance-of v2, v1, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v2, :cond_0

    .line 353
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v2, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 355
    .end local v1    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :cond_0
    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

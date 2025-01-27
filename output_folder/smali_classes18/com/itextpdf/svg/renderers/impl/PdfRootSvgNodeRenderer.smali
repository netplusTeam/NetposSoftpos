.class public Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;
.super Ljava/lang/Object;
.source "PdfRootSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# instance fields
.field subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0
    .param p1, "subTreeRoot"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 71
    invoke-interface {p1, p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 72
    return-void
.end method


# virtual methods
.method calculateTransformation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 18
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentViewPort()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 117
    .local v0, "viewPort":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    .line 118
    .local v1, "horizontal":F
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 120
    .local v2, "vertical":F
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 121
    .local v3, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    float-to-double v4, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/itextpdf/kernel/geom/AffineTransform;->getTranslateInstance(DD)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 122
    new-instance v4, Lcom/itextpdf/kernel/geom/AffineTransform;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v17}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 124
    return-object v3
.end method

.method calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 7
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "portX":F
    const/4 v1, 0x0

    .line 130
    .local v1, "portY":F
    const/4 v2, 0x0

    .line 131
    .local v2, "portWidth":F
    const/4 v3, 0x0

    .line 133
    .local v3, "portHeight":F
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    .line 135
    .local v4, "contentStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->BBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 141
    .local v5, "bboxArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    .line 142
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    .line 143
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    sub-float/2addr v6, v0

    .line 144
    .end local v2    # "portWidth":F
    .local v6, "portWidth":F
    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    sub-float/2addr v2, v1

    .line 146
    .end local v3    # "portHeight":F
    .local v2, "portHeight":F
    new-instance v3, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v3, v0, v1, v6, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v3

    .line 136
    .end local v5    # "bboxArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v6    # "portWidth":F
    .local v2, "portWidth":F
    .restart local v3    # "portHeight":F
    :cond_0
    new-instance v5, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v6, "The root svg tag needs to have a bounding box defined."

    invoke-direct {v5, v6}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 2

    .line 151
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;

    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    invoke-interface {v1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;-><init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 152
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;
    return-object v0
.end method

.method public draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 88
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->calculateViewPort(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addViewPort(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 90
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0, p1}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->calculateTransformation(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 91
    const-string v1, "% svg root\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 92
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;->subTreeRoot:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    invoke-interface {v1, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 93
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeMapCopy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setAttributesAndStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "attributesAndStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 0
    .param p1, "parent"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 77
    return-void
.end method

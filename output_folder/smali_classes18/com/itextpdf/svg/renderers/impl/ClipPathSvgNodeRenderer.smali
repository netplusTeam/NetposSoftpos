.class public Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "ClipPathSvgNodeRenderer.java"


# instance fields
.field private clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 63
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;-><init>()V

    .line 64
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 66
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 5
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 74
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 75
    .local v2, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 77
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v3, :cond_0

    .line 78
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 81
    :cond_0
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 83
    instance-of v3, v2, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v3, :cond_1

    .line 84
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->setPartOfClipPath(Z)V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v3, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 89
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v3, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 90
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v3, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->postDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 94
    .end local v2    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method

.method preDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 69
    return-void
.end method

.method public setClippedRenderer(Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;)V
    .locals 0
    .param p1, "clippedRenderer"    # Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    .line 99
    iput-object p1, p0, Lcom/itextpdf/svg/renderers/impl/ClipPathSvgNodeRenderer;->clippedRenderer:Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    .line 100
    return-void
.end method

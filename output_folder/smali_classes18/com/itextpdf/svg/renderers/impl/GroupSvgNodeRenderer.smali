.class public Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "GroupSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 67
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;-><init>()V

    .line 68
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 70
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 3
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 56
    invoke-virtual {p1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->getCurrentCanvas()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    .line 58
    .local v0, "currentCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/GroupSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 59
    .local v2, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 60
    invoke-interface {v2, p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 61
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 62
    .end local v2    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

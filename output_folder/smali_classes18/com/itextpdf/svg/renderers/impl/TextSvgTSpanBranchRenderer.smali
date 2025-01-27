.class public Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;
.super Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;
.source "TextSvgTSpanBranchRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgBranchRenderer;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->performRootTransformations:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 56
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/impl/TextSvgTSpanBranchRenderer;->getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/renderers/impl/AbstractSvgNodeRenderer;->getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

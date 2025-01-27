.class public Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.source "SvgTagSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;-><init>()V

    .line 54
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 56
    return-object v0
.end method

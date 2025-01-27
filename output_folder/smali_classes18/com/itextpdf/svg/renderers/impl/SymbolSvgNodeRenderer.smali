.class public Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.source "SymbolSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 31
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;-><init>()V

    .line 32
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    .line 34
    return-object v0
.end method

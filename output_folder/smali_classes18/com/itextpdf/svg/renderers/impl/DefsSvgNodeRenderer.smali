.class public Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "DefsSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 38
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;-><init>()V

    .line 39
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 40
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t draw current SvgNodeRenderer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;
.super Lcom/itextpdf/layout/renderer/TextRenderer;
.source "FormFieldValueNonTrimmingTextRenderer.java"


# instance fields
.field private callTrimFirst:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/Text;)V
    .locals 1
    .param p1, "textElement"    # Lcom/itextpdf/layout/element/Text;

    .line 43
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;->callTrimFirst:Z

    .line 44
    return-void
.end method

.method private setCallTrimFirst(Z)V
    .locals 0
    .param p1, "callTrimFirst"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;->callTrimFirst:Z

    .line 73
    return-void
.end method


# virtual methods
.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 48
    new-instance v0, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, v1}, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 3
    .param p1, "layoutContext"    # Lcom/itextpdf/layout/layout/LayoutContext;

    .line 53
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    .line 54
    .local v0, "baseLayoutResult":Lcom/itextpdf/layout/layout/LayoutResult;
    instance-of v1, v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 56
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isSplitForcedByNewline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;->setCallTrimFirst(Z)V

    .line 61
    :cond_0
    return-object v0
.end method

.method public trimFirst()V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/itextpdf/forms/fields/FormFieldValueNonTrimmingTextRenderer;->callTrimFirst:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-super {p0}, Lcom/itextpdf/layout/renderer/TextRenderer;->trimFirst()V

    .line 69
    :cond_0
    return-void
.end method

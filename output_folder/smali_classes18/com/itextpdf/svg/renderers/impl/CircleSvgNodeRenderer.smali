.class public Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;
.source "CircleSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/EllipseSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 80
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;-><init>()V

    .line 81
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 82
    return-object v0
.end method

.method protected setParameters()Z
    .locals 3

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->cx:F

    .line 59
    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->cy:F

    .line 60
    const-string v1, "cx"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->cx:F

    .line 63
    :cond_0
    const-string v1, "cy"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->cy:F

    .line 67
    :cond_1
    const-string/jumbo v1, "r"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 69
    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->rx:F

    .line 70
    iget v0, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->rx:F

    iput v0, p0, Lcom/itextpdf/svg/renderers/impl/CircleSvgNodeRenderer;->ry:F

    .line 74
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

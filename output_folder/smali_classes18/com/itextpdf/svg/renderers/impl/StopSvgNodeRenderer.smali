.class public Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/NoDrawOperationSvgNodeRenderer;
.source "StopSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/NoDrawOperationSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 92
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;-><init>()V

    .line 93
    .local v0, "copy":Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 94
    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 2
    .param p1, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t draw current SvgNodeRenderer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffset()D
    .locals 9

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "offset":Ljava/lang/Double;
    const-string v1, "offset"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "offsetAttribute":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isPercentageValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNumericValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 54
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v2

    .line 55
    .local v4, "result":D
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    move-wide v2, v6

    goto :goto_2

    :cond_3
    cmpl-double v6, v4, v2

    if-lez v6, :cond_4

    move-wide v2, v4

    :cond_4
    :goto_2
    return-wide v2
.end method

.method public getStopColor()[F
    .locals 3

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "color":[F
    const-string/jumbo v1, "stop-color"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "colorValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const-string v2, "black"

    invoke-static {v2}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    .line 73
    :cond_1
    return-object v0
.end method

.method public getStopOpacity()F
    .locals 3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Ljava/lang/Float;
    const-string/jumbo v1, "stop-opacity"

    invoke-virtual {p0, v1}, Lcom/itextpdf/svg/renderers/impl/StopSvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "opacityValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    return v2
.end method

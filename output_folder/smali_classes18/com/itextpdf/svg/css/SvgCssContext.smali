.class public Lcom/itextpdf/svg/css/SvgCssContext;
.super Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;
.source "SvgCssContext.java"


# instance fields
.field private rootFontSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;-><init>()V

    .line 56
    nop

    .line 57
    const-string v0, "font-size"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/css/SvgCssContext;->rootFontSize:F

    return-void
.end method


# virtual methods
.method public getRootFontSize()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/itextpdf/svg/css/SvgCssContext;->rootFontSize:F

    return v0
.end method

.method public setRootFontSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontSizeStr"    # Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/svg/css/SvgCssContext;->rootFontSize:F

    .line 75
    return-void
.end method

.class public Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
.super Ljava/lang/Object;
.source "SvgProcessorContext.java"


# instance fields
.field private final cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

.field private deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

.field private fontProvider:Lcom/itextpdf/layout/font/FontProvider;

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

.field private tempFonts:Lcom/itextpdf/layout/font/FontSet;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 3
    .param p1, "converterProperties"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getMediaDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 93
    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "retriever":Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    instance-of v1, p1, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    if-eqz v1, :cond_2

    .line 99
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->getResourceRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    move-result-object v0

    .line 101
    :cond_2
    new-instance v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p1}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    iput-object v1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 103
    new-instance v1, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {v1}, Lcom/itextpdf/svg/css/SvgCssContext;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    .line 104
    return-void
.end method


# virtual methods
.method public addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    return-void
.end method

.method public addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)V
    .locals 1
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;

    .line 161
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    .line 165
    return-void
.end method

.method public addTemporaryFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)Z

    .line 188
    return-void
.end method

.method public getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->cssContext:Lcom/itextpdf/svg/css/SvgCssContext;

    return-object v0
.end method

.method public getDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->fontProvider:Lcom/itextpdf/layout/font/FontProvider;

    return-object v0
.end method

.method public getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->tempFonts:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

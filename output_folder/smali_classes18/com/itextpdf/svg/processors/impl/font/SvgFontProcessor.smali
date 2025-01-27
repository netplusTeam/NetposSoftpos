.class public Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;
.super Ljava/lang/Object;
.source "SvgFontProcessor.java"


# instance fields
.field private context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;


# direct methods
.method public constructor <init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 0
    .param p1, "context"    # Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 71
    return-void
.end method

.method private createFont(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;Lcom/itextpdf/layout/font/Range;)Z
    .locals 6
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "src"    # Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    .param p3, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;

    .line 107
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getFormat()Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->isSupportedFontFormat(Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 109
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->isLocal()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/font/FontProvider;->getFontSet()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/font/FontSet;->get(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 111
    .local v0, "fonts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/font/FontInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/font/FontInfo;

    .line 113
    .local v3, "fi":Lcom/itextpdf/layout/font/FontInfo;
    iget-object v4, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v4, v3, p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->addTemporaryFont(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)V

    .line 114
    .end local v3    # "fi":Lcom/itextpdf/layout/font/FontInfo;
    goto :goto_0

    .line 115
    :cond_1
    return v2

    .line 117
    :cond_2
    return v1

    .line 123
    .end local v0    # "fonts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/font/FontInfo;>;"
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromResource(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, "bytes":[B
    if-eqz v0, :cond_4

    .line 125
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    .line 126
    .local v3, "fp":Lcom/itextpdf/io/font/FontProgram;
    iget-object v4, p0, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    const-string v5, "Identity-H"

    invoke-virtual {v4, v3, v5, p1, p3}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->addTemporaryFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return v2

    .line 130
    .end local v0    # "bytes":[B
    .end local v3    # "fp":Lcom/itextpdf/io/font/FontProgram;
    :cond_4
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 131
    :goto_1
    return v1
.end method


# virtual methods
.method public addFontFaceFonts(Lcom/itextpdf/styledxmlparser/css/ICssResolver;)V
    .locals 8
    .param p1, "cssResolver"    # Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    .line 79
    instance-of v0, p1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    if-eqz v0, :cond_3

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    invoke-virtual {v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->getFonts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    .line 81
    .local v1, "fontFace":Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;
    const/4 v2, 0x0

    .line 82
    .local v2, "findSupportedSrc":Z
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;->getProperties()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->create(Ljava/util/List;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;

    move-result-object v3

    .line 83
    .local v3, "ff":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->getSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;

    .line 85
    .local v5, "src":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;->getFontFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;->resolveUnicodeRange()Lcom/itextpdf/layout/font/Range;

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;->createFont(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;Lcom/itextpdf/layout/font/Range;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 87
    goto :goto_2

    .line 89
    .end local v5    # "src":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    :cond_0
    goto :goto_1

    .line 91
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 92
    const-class v4, Lcom/itextpdf/svg/processors/impl/font/SvgFontProcessor;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 93
    const-string v6, "Unable to retrieve font:\n {0}"

    invoke-static {v6, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 95
    .end local v1    # "fontFace":Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;
    .end local v2    # "findSupportedSrc":Z
    .end local v3    # "ff":Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
    :cond_2
    goto :goto_0

    .line 97
    :cond_3
    return-void
.end method

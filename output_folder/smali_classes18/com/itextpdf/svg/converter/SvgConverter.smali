.class public final Lcom/itextpdf/svg/converter/SvgConverter;
.super Ljava/lang/Object;
.source "SvgConverter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lcom/itextpdf/svg/converter/SvgConverter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 102
    if-eqz p0, :cond_0

    .line 105
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Parameters for this method cannot be null."

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToImage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    new-instance v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {p0, p1}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    return-object v0
.end method

.method public static convertToImage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/layout/element/Image;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/itextpdf/layout/element/Image;

    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Image;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V

    return-object v0
.end method

.method private static convertToSvgConverterProps(Lcom/itextpdf/svg/processors/ISvgConverterProperties;Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;
    .locals 2
    .param p0, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 493
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setBaseUri(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object v0

    .line 494
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getMediaDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setMediaDeviceDescription(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object v0

    .line 495
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setFontProvider(Lcom/itextpdf/layout/font/FontProvider;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object v0

    .line 496
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setCharset(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object v0

    .line 497
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getRendererFactory()Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setRendererFactory(Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object v0

    .line 493
    return-object v0
.end method

.method private static convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 3
    .param p0, "processorResult"    # Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 668
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    .line 669
    .local v0, "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    new-instance v1, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    .line 670
    .local v1, "drawContext":Lcom/itextpdf/svg/renderers/SvgDrawContext;
    instance-of v2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz v2, :cond_0

    .line 671
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {v2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 673
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V

    .line 674
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addNamedObjects(Ljava/util/Map;)V

    .line 675
    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v2

    return-object v2
.end method

.method public static convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2
    .param p0, "topSvgRenderer"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 788
    new-instance v0, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method private static convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 6
    .param p0, "topSvgRenderer"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "context"    # Lcom/itextpdf/svg/renderers/SvgDrawContext;

    .line 812
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 813
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 814
    invoke-static {p2}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 817
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F

    move-result-object v0

    .line 818
    .local v0, "wh":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 819
    .local v1, "width":F
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 821
    .local v2, "height":F
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v1, v2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 822
    .local v3, "pdfForm":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v4, v3, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 824
    .local v4, "canvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {p2, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->pushCanvas(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 825
    new-instance v5, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;

    invoke-direct {v5, p0}, Lcom/itextpdf/svg/renderers/impl/PdfRootSvgNodeRenderer;-><init>(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 826
    .local v5, "root":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-interface {v5, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V

    .line 827
    return-object v3
.end method

.method public static convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public static convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 660
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 662
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public static convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 605
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public static convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 630
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 631
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 633
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    return-object v0
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "svgFile"    # Ljava/io/File;
    .param p1, "pdfFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 433
    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .param p0, "svgFile"    # Ljava/io/File;
    .param p1, "pdfFile"    # Ljava/io/File;
    .param p2, "writerProps"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 459
    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "svgFile"    # Ljava/io/File;
    .param p1, "pdfFile"    # Ljava/io/File;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 446
    return-void
.end method

.method public static createPdf(Ljava/io/File;Ljava/io/File;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 5
    .param p0, "svgFile"    # Ljava/io/File;
    .param p1, "pdfFile"    # Ljava/io/File;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .param p3, "writerProps"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    if-nez p2, :cond_0

    .line 473
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-static {p0}, Lcom/itextpdf/io/util/FileUtil;->getParentDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->setBaseUri(Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p2

    goto :goto_0

    .line 474
    :cond_0
    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    :cond_1
    invoke-static {p0}, Lcom/itextpdf/io/util/FileUtil;->getParentDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "baseUri":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToSvgConverterProps(Lcom/itextpdf/svg/processors/ISvgConverterProperties;Ljava/lang/String;)Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    move-result-object p2

    .line 478
    .end local v0    # "baseUri":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 478
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 480
    :try_start_1
    invoke-static {v0, v1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 482
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    return-void

    .line 478
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p0    # "svgFile":Ljava/io/File;
    .end local p1    # "pdfFile":Ljava/io/File;
    .end local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .end local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "svgFile":Ljava/io/File;
    .restart local p1    # "pdfFile":Ljava/io/File;
    .restart local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .restart local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "svgFile":Ljava/io/File;
    .end local p1    # "pdfFile":Ljava/io/File;
    .end local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .end local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 478
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "svgFile":Ljava/io/File;
    .restart local p1    # "pdfFile":Ljava/io/File;
    .restart local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .restart local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :catchall_3
    move-exception v1

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "svgFile":Ljava/io/File;
    .end local p1    # "pdfFile":Ljava/io/File;
    .end local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .end local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 481
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p0    # "svgFile":Ljava/io/File;
    .restart local p1    # "pdfFile":Ljava/io/File;
    .restart local p2    # "props":Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .restart local p3    # "writerProps":Lcom/itextpdf/kernel/pdf/WriterProperties;
    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .param p1, "pdfDest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 509
    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .param p1, "pdfDest"    # Ljava/io/OutputStream;
    .param p2, "writerProps"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 521
    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .param p1, "pdfDest"    # Ljava/io/OutputStream;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 533
    return-void
.end method

.method public static createPdf(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 11
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .param p1, "pdfDest"    # Ljava/io/OutputStream;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .param p3, "writerProps"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    if-nez p3, :cond_0

    .line 547
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    move-object p3, v0

    .line 549
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-direct {v1, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;)V

    .line 551
    .local v0, "pdfDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    invoke-static {p0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v1

    .line 553
    .local v1, "processorResult":Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    invoke-static {v1, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v2

    .line 554
    .local v2, "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    new-instance v3, Lcom/itextpdf/svg/renderers/SvgDrawContext;

    invoke-interface {v1}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;-><init>(Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;Lcom/itextpdf/layout/font/FontProvider;)V

    .line 555
    .local v3, "drawContext":Lcom/itextpdf/svg/renderers/SvgDrawContext;
    instance-of v4, v1, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz v4, :cond_1

    .line 556
    move-object v4, v1

    check-cast v4, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {v4}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getCssContext()Lcom/itextpdf/svg/css/SvgCssContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setCssContext(Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 559
    :cond_1
    invoke-interface {v1}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->addNamedObjects(Ljava/util/Map;)V

    .line 561
    invoke-interface {v1}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/svg/renderers/SvgDrawContext;->setTempFonts(Lcom/itextpdf/layout/font/FontSet;)V

    .line 563
    invoke-interface {v1}, Lcom/itextpdf/svg/processors/ISvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v4

    .line 565
    .local v4, "topSvgRenderer":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-static {v4}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 566
    invoke-static {v0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 569
    invoke-static {v4}, Lcom/itextpdf/svg/converter/SvgConverter;->extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F

    move-result-object v5

    .line 570
    .local v5, "wh":[F
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 571
    .local v6, "width":F
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 574
    .local v7, "height":F
    new-instance v8, Lcom/itextpdf/kernel/geom/PageSize;

    invoke-direct {v8, v6, v7}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setDefaultPageSize(Lcom/itextpdf/kernel/geom/PageSize;)V

    .line 575
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    .line 576
    .local v8, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v9, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 578
    .local v9, "pageCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-static {v4, v0, v3}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v10

    .line 580
    .local v10, "xObject":Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    invoke-static {v10, v9}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 581
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 582
    return-void
.end method

.method private static createResourceResolver(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 3
    .param p0, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 1018
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1019
    new-instance v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1021
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    if-eqz v1, :cond_1

    .line 1022
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-virtual {v2}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;->getResourceRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    return-object v0

    .line 1024
    :cond_1
    new-instance v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    return-object v1
.end method

.method private static draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p0, "pdfForm"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 756
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 757
    return-void
.end method

.method private static draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 0
    .param p0, "pdfForm"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 763
    invoke-virtual {p1, p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 764
    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 381
    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 395
    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 422
    return-void
.end method

.method public static drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 407
    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 331
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 332
    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 343
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 345
    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 368
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->convertToXObject(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->draw(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 370
    return-void
.end method

.method public static drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 355
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 356
    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V

    .line 174
    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    .line 190
    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 221
    return-void
.end method

.method public static drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 204
    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V

    .line 117
    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFF)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 130
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    .line 132
    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 159
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 161
    return-void
.end method

.method public static drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "pageNo"    # I
    .param p3, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 144
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnDocument(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;IFFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 145
    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    .line 281
    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 294
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 295
    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 321
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 322
    return-void
.end method

.method public static drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 307
    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V

    .line 231
    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FF)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 242
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 243
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FF)V

    .line 244
    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 268
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 269
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnCanvas(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 270
    return-void
.end method

.method public static drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;
    .param p2, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/svg/converter/SvgConverter;->drawOnPage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;FFLcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    .line 256
    return-void
.end method

.method public static extractWidthAndHeight(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)[F
    .locals 9
    .param p0, "topSvgRenderer"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 943
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 944
    .local v1, "res":[F
    const/4 v2, 0x0

    .line 947
    .local v2, "viewBoxPresent":Z
    sget-object v3, Lcom/itextpdf/svg/SvgConstants$Attributes;->VIEWBOX:Ljava/lang/String;

    invoke-interface {p0, v3}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, "vbString":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 949
    .local v4, "values":[F
    if-eqz v3, :cond_1

    .line 950
    invoke-static {v3}, Lcom/itextpdf/svg/utils/SvgCssUtils;->splitValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 951
    .local v5, "valueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [F

    .line 952
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 953
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    aput v7, v4, v6

    .line 952
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 955
    .end local v6    # "i":I
    :cond_0
    const/4 v2, 0x1

    .line 959
    .end local v5    # "valueStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v5, "width"

    invoke-interface {p0, v5}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 960
    .local v5, "wString":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 961
    if-eqz v2, :cond_2

    .line 962
    aget v0, v4, v0

    .local v0, "width":F
    goto :goto_1

    .line 965
    .end local v0    # "width":F
    :cond_2
    sget-object v0, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Top Svg tag has no defined width attribute and viewbox width is not present, so browser default of 300px is used"

    invoke-interface {v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 967
    const-string v0, "300px"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .restart local v0    # "width":F
    goto :goto_1

    .line 970
    .end local v0    # "width":F
    :cond_3
    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 972
    .restart local v0    # "width":F
    :goto_1
    const-string v6, "height"

    invoke-interface {p0, v6}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "hString":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 974
    if-eqz v2, :cond_4

    .line 975
    const/4 v7, 0x3

    aget v7, v4, v7

    .local v7, "height":F
    goto :goto_2

    .line 978
    .end local v7    # "height":F
    :cond_4
    sget-object v7, Lcom/itextpdf/svg/converter/SvgConverter;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Top Svg tag has no defined height attribute and viewbox height is not present, so browser default of 150px is used"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 980
    const-string v7, "150px"

    invoke-static {v7}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    .restart local v7    # "height":F
    goto :goto_2

    .line 983
    .end local v7    # "height":F
    :cond_5
    invoke-static {v6}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v7

    .line 986
    .restart local v7    # "height":F
    :goto_2
    const/4 v8, 0x0

    aput v0, v1, v8

    .line 987
    const/4 v8, 0x1

    aput v7, v1, v8

    .line 988
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static getResourceResolver(Lcom/itextpdf/svg/processors/ISvgProcessorResult;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 2
    .param p0, "processorResult"    # Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .param p1, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    instance-of v1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    if-eqz v1, :cond_0

    .line 996
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    move-result-object v1

    .line 997
    .local v1, "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    .line 1001
    .end local v1    # "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    :cond_0
    if-nez v0, :cond_1

    .line 1002
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->createResourceResolver(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    .line 1004
    :cond_1
    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 912
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 929
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    .line 930
    .local v0, "xmlParser":Lcom/itextpdf/styledxmlparser/IXmlParser;
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/IXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 897
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 898
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object v0

    return-object v0
.end method

.method public static parseAndProcess(Ljava/io/InputStream;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->parseAndProcess(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseAndProcess(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 5
    .param p0, "svgStream"    # Ljava/io/InputStream;
    .param p1, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupXmlParser;-><init>()V

    .line 853
    .local v0, "parser":Lcom/itextpdf/styledxmlparser/IXmlParser;
    invoke-static {p1}, Lcom/itextpdf/svg/converter/SvgConverter;->tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "charset":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/IXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .local v2, "nodeTree":Lcom/itextpdf/styledxmlparser/node/INode;
    nop

    .line 860
    new-instance v3, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;

    invoke-direct {v3}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;-><init>()V

    invoke-virtual {v3, v2, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v3

    return-object v3

    .line 857
    .end local v2    # "nodeTree":Lcom/itextpdf/styledxmlparser/node/INode;
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v4, "Failed to parse InputStream."

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static process(Lcom/itextpdf/styledxmlparser/node/INode;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1
    .param p0, "root"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/svg/converter/SvgConverter;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public static process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;
    .locals 1
    .param p0, "root"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p1, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 885
    invoke-static {p0}, Lcom/itextpdf/svg/converter/SvgConverter;->checkNull(Ljava/lang/Object;)V

    .line 886
    new-instance v0, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;

    invoke-direct {v0}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/svg/processors/impl/DefaultSvgProcessor;->process(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Lcom/itextpdf/svg/processors/ISvgProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method private static tryToExtractCharset(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "props"    # Lcom/itextpdf/svg/processors/ISvgConverterProperties;

    .line 1014
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/itextpdf/svg/processors/ISvgConverterProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

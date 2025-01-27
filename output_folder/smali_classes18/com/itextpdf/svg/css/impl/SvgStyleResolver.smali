.class public Lcom/itextpdf/svg/css/impl/SvgStyleResolver;
.super Ljava/lang/Object;
.source "SvgStyleResolver.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/ICssResolver;


# static fields
.field private static final DEFAULT_CSS_PATH:Ljava/lang/String; = "com/itextpdf/svg/default.css"

.field private static final DEFAULT_FONT_SIZE:F

.field private static final ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

.field public static final INHERITANCE_RULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

.field private deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstSvgElement:Z

.field private final resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/itextpdf/styledxmlparser/css/resolve/IStyleInheritance;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;

    invoke-direct {v3}, Lcom/itextpdf/styledxmlparser/css/resolve/CssInheritance;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;

    invoke-direct {v3}, Lcom/itextpdf/svg/css/impl/SvgAttributeInheritance;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 106
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "marker"

    aput-object v2, v0, v4

    sget-object v2, Lcom/itextpdf/svg/SvgConstants$Tags;->LINEAR_GRADIENT:Ljava/lang/String;

    aput-object v2, v0, v5

    const-string v2, "pattern"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

    .line 111
    nop

    .line 112
    const-string v0, "font-size"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    .line 114
    const-class v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    new-instance v1, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;-><init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;-><init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 1
    .param p1, "rootNode"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "context"    # Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 195
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getDeviceDescription()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 196
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;)V

    .line 198
    invoke-direct {p0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts()V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 4
    .param p1, "context"    # Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 177
    :try_start_0
    const-string v0, "com/itextpdf/svg/default.css"

    invoke-static {v0}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v0, "defaultCss":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    .end local v0    # "defaultCss":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 177
    .restart local v0    # "defaultCss":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "defaultCss":Ljava/io/InputStream;
    .end local p1    # "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    .restart local v0    # "defaultCss":Ljava/io/InputStream;
    .restart local p1    # "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "defaultCss":Ljava/io/InputStream;
    .restart local p1    # "context":Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Error loading the default CSS. Initializing an empty style sheet."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "defaultCssStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    new-instance v0, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    new-instance v1, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;

    invoke-direct {v1}, Lcom/itextpdf/svg/processors/impl/SvgConverterProperties;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;-><init>(Lcom/itextpdf/svg/processors/ISvgConverterProperties;)V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;-><init>(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 1
    .param p1, "defaultCssStream"    # Ljava/io/InputStream;
    .param p2, "context"    # Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    .line 167
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 168
    invoke-virtual {p2}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getResourceResolver()Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 169
    return-void
.end method

.method private collectCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;)V
    .locals 8
    .param p1, "rootNode"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "resourceResolver"    # Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    .line 362
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 363
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 364
    .local v0, "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 368
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 369
    .local v1, "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_7

    .line 370
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 371
    .local v2, "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    if-nez v3, :cond_1

    .line 374
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    if-eqz v3, :cond_7

    .line 376
    :cond_1
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    if-eqz v3, :cond_2

    .line 377
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/IDataNode;

    invoke-interface {v3}, Lcom/itextpdf/styledxmlparser/node/IDataNode;->getWholeData()Ljava/lang/String;

    move-result-object v3

    .local v3, "styleData":Ljava/lang/String;
    goto :goto_1

    .line 379
    .end local v3    # "styleData":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    invoke-interface {v3}, Lcom/itextpdf/styledxmlparser/node/ITextNode;->wholeText()Ljava/lang/String;

    move-result-object v3

    .line 381
    .restart local v3    # "styleData":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v4

    .line 384
    .local v4, "styleSheet":Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    iget-object v5, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v5, v4}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V

    .line 385
    .end local v3    # "styleData":Ljava/lang/String;
    .end local v4    # "styleSheet":Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    goto :goto_4

    .line 387
    :cond_3
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->isStyleSheetLink(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    const-string v3, "href"

    invoke-interface {v2, v3}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "styleSheetUri":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveResourceAsInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_5

    .line 391
    nop

    .line 392
    :try_start_1
    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-static {v4, v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v5

    .line 393
    .local v5, "styleSheet":Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    iget-object v6, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v6, v5}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 389
    .end local v5    # "styleSheet":Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    :catchall_0
    move-exception v5

    .end local v0    # "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .end local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .end local v2    # "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v3    # "styleSheetUri":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local p1    # "rootNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .end local p2    # "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 395
    .restart local v0    # "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .restart local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .restart local v2    # "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .restart local v3    # "styleSheetUri":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local p1    # "rootNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .restart local p2    # "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .end local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .end local v2    # "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v3    # "styleSheetUri":Ljava/lang/String;
    .end local p1    # "rootNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .end local p2    # "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    :cond_4
    :goto_2
    throw v6

    .restart local v0    # "q":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .restart local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .restart local v2    # "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .restart local v3    # "styleSheetUri":Ljava/lang/String;
    .restart local p1    # "rootNode":Lcom/itextpdf/styledxmlparser/node/INode;
    .restart local p2    # "resourceResolver":Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 397
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_6
    goto :goto_4

    .line 395
    :catch_0
    move-exception v4

    .line 396
    .local v4, "exc":Ljava/lang/Exception;
    sget-object v5, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Unable to process external css file"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .end local v2    # "headChildElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v3    # "styleSheetUri":Ljava/lang/String;
    .end local v4    # "exc":Ljava/lang/Exception;
    :cond_7
    :goto_4
    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 401
    .local v3, "child":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v4, v3, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v4, :cond_8

    .line 402
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v3    # "child":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_8
    goto :goto_5

    .line 405
    .end local v1    # "currentNode":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_9
    goto/16 :goto_0

    .line 406
    :cond_a
    return-void
.end method

.method private collectFonts()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 422
    .local v1, "cssStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-direct {p0, v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 423
    .end local v1    # "cssStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 424
    :cond_0
    return-void
.end method

.method private collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 2
    .param p1, "cssStatement"    # Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 432
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->deviceDescription:Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 435
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->matchMediaDevice(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 437
    .local v1, "cssSubStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-direct {p0, v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->collectFonts(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 438
    .end local v1    # "cssSubStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 440
    :cond_1
    :goto_1
    return-void
.end method

.method public static isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z
    .locals 2
    .param p0, "element"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .param p1, "parentElementNameForSearch"    # Ljava/lang/String;

    .line 232
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    return v1

    .line 235
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 236
    .local v0, "parentElement":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    if-nez v0, :cond_1

    .line 237
    return v1

    .line 239
    :cond_1
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const/4 v1, 0x1

    return v1

    .line 243
    :cond_2
    invoke-static {v0, p1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isStartedWithHash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 358
    if-eqz p1, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static onlyNativeStylesShouldBeResolved(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 6
    .param p0, "element"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 281
    sget-object v0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->ELEMENTS_INHERITING_PARENT_STYLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 282
    .local v4, "elementInheritingParentStyles":Ljava/lang/String;
    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 283
    invoke-static {p0, v4}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 281
    .end local v4    # "elementInheritingParentStyles":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    .restart local v4    # "elementInheritingParentStyles":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 287
    .end local v4    # "elementInheritingParentStyles":Ljava/lang/String;
    :cond_2
    const-string v0, "defs"

    invoke-static {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isElementNested(Lcom/itextpdf/styledxmlparser/node/IElementNode;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseStylesFromStyleAttribute(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v0, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssRuleSetParser;->parsePropertyDeclarations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 462
    .local v1, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 463
    .local v3, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v3    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    goto :goto_0

    .line 465
    :cond_0
    return-object v0
.end method

.method private processAttribute(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V
    .locals 5
    .param p1, "attr"    # Lcom/itextpdf/styledxmlparser/node/IAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/IAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p2, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "xlink:href"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 455
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 452
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->processXLink(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V

    .line 453
    goto :goto_3

    .line 446
    :pswitch_1
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->parseStylesFromStyleAttribute(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 447
    .local v0, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 448
    .local v2, "style":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v2    # "style":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 450
    :cond_1
    nop

    .line 457
    .end local v0    # "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x68b1db1 -> :sswitch_1
        0x1f8d9533 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processXLink(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V
    .locals 4
    .param p1, "attr"    # Lcom/itextpdf/styledxmlparser/node/IAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/IAttribute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p2, "attributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "xlinkValue":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isStartedWithHash(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isDataSrc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resourceResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "mue":Ljava/net/MalformedURLException;
    sget-object v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to resolve image path with given base URI ({0}) and image source path ({1})"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .end local v1    # "mue":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method public static resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "cssContext"    # Lcom/itextpdf/svg/css/SvgCssContext;
    .param p2, "parentFontSizeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/svg/css/SvgCssContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    .local p0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "font-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "elementFontSize":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isNegativeValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    move-object v1, p2

    .line 208
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "0.####"

    if-nez v2, :cond_3

    const-string v2, "larger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    const-string/jumbo v2, "smaller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    if-nez v1, :cond_2

    .line 224
    sget v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    float-to-double v4, v2

    invoke-static {v4, v5, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "resolvedFontSize":Ljava/lang/String;
    goto :goto_3

    .line 226
    .end local v2    # "resolvedFontSize":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "resolvedFontSize":Ljava/lang/String;
    goto :goto_3

    .line 211
    .end local v2    # "resolvedFontSize":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRemValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 212
    if-nez p1, :cond_4

    sget v2, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->DEFAULT_FONT_SIZE:F

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/svg/css/SvgCssContext;->getRootFontSize()F

    move-result v2

    .local v2, "baseFontSize":F
    :goto_1
    goto :goto_2

    .line 213
    .end local v2    # "baseFontSize":F
    :cond_5
    if-nez p2, :cond_6

    .line 214
    nop

    .line 215
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssDefaults;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteFontSize(Ljava/lang/String;)F

    move-result v2

    .restart local v2    # "baseFontSize":F
    goto :goto_2

    .line 217
    .end local v2    # "baseFontSize":F
    :cond_6
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v2

    .line 220
    .restart local v2    # "baseFontSize":F
    :goto_2
    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeFontSize(Ljava/lang/String;F)F

    move-result v4

    .line 222
    .local v4, "absoluteFontSize":F
    float-to-double v5, v4

    invoke-static {v5, v6, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .end local v4    # "absoluteFontSize":F
    .local v2, "resolvedFontSize":Ljava/lang/String;
    nop

    .line 228
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/css/SvgCssContext;)Ljava/util/Map;
    .locals 10
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "context"    # Lcom/itextpdf/svg/css/SvgCssContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/svg/css/SvgCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveNativeStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;

    move-result-object v0

    .line 293
    .local v0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-static {v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->onlyNativeStylesShouldBeResolved(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    return-object v0

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 299
    .local v1, "parentFontSizeStr":Ljava/lang/String;
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;

    const-string v3, "font-size"

    if-eqz v2, :cond_2

    .line 300
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;

    .line 301
    .local v2, "parentNode":Lcom/itextpdf/styledxmlparser/node/IStylesContainer;
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IStylesContainer;->getStyles()Ljava/util/Map;

    move-result-object v4

    .line 303
    .local v4, "parentStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_1

    instance-of v5, v2, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-nez v5, :cond_1

    .line 304
    sget-object v5, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "Element parent styles are not resolved. Styles for current element might be incorrect."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 307
    :cond_1
    if-eqz v4, :cond_2

    .line 308
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 309
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 310
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    invoke-static {v0, v7, v8, v1, v9}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 312
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 316
    .end local v2    # "parentNode":Lcom/itextpdf/styledxmlparser/node/IStylesContainer;
    .end local v4    # "parentStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {v0, p2, v1}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V

    .line 319
    instance-of v2, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 320
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "svg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 321
    .local v2, "isSvgElement":Z
    :goto_1
    iget-boolean v5, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 322
    iput-boolean v4, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->isFirstSvgElement:Z

    .line 323
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, "rootFontSize":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 325
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/itextpdf/svg/css/SvgCssContext;->setRootFontSize(Ljava/lang/String;)V

    .line 329
    .end local v4    # "rootFontSize":Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public getFonts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssFontFaceRule;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->fonts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public resolveNativeStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;
    .locals 6
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "cssContext"    # Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->css:Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 265
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->createDefault()Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    move-result-object v2

    .line 264
    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v1

    .line 266
    .local v1, "styleSheetDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 267
    .local v3, "ssd":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v3    # "ssd":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    goto :goto_0

    .line 271
    :cond_0
    instance-of v2, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v2, :cond_1

    .line 272
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 273
    .local v2, "eNode":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;

    move-result-object v3

    invoke-interface {v3}, Lcom/itextpdf/styledxmlparser/node/IAttributes;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/IAttribute;

    .line 274
    .local v4, "attr":Lcom/itextpdf/styledxmlparser/node/IAttribute;
    invoke-direct {p0, v4, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->processAttribute(Lcom/itextpdf/styledxmlparser/node/IAttribute;Ljava/util/Map;)V

    .line 275
    .end local v4    # "attr":Lcom/itextpdf/styledxmlparser/node/IAttribute;
    goto :goto_1

    .line 277
    .end local v2    # "eNode":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    :cond_1
    return-object v0
.end method

.method public resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;)Ljava/util/Map;
    .locals 2
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "context"    # Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/resolve/AbstractCssContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    instance-of v0, p2, Lcom/itextpdf/svg/css/SvgCssContext;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, p2

    check-cast v0, Lcom/itextpdf/svg/css/SvgCssContext;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveStyles(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/svg/css/SvgCssContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Custom AbstractCssContext implementations are not supported yet"

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

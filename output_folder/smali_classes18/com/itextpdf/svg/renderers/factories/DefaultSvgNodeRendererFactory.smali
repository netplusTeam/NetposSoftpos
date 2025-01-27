.class public Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;
.super Ljava/lang/Object;
.source "DefaultSvgNodeRendererFactory.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;


# instance fields
.field private ignoredTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rendererMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;-><init>(Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;)V
    .locals 3
    .param p1, "mapper"    # Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;->getMapping()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 91
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;->getIgnoredTags()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;-><init>()V

    .line 94
    .local v0, "defaultMapper":Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;->getMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    iget-object v1, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;->getIgnoredTags()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 97
    .end local v0    # "defaultMapper":Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;
    :goto_0
    return-void
.end method


# virtual methods
.method public createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 7
    .param p1, "tag"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .param p2, "parent"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 103
    if-eqz p1, :cond_2

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 110
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;>;"
    if-nez v2, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 112
    .local v3, "logger":Lorg/slf4j/Logger;
    const-string v4, "Could not find implementation for tag {0}"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 116
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 119
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;>;"
    .local v0, "result":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    nop

    .line 122
    if-eqz p2, :cond_1

    instance-of v1, v0, Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    if-nez v1, :cond_1

    .line 123
    invoke-interface {v0, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 126
    :cond_1
    return-object v0

    .line 117
    .end local v0    # "result":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v4, "Could not instantiate Renderer for tag {0}"

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 104
    .end local v2    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_2
    new-instance v0, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string v1, "Tag parameter must not be null"

    invoke-direct {v0, v1}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 2
    .param p1, "tag"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 131
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

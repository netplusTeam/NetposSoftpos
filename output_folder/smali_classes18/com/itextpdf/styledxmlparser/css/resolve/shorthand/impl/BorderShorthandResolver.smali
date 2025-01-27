.class public Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;
.super Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;
.source "BorderShorthandResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "border"

    return-object v0
.end method

.method public resolveShorthand(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "shorthandExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/AbstractBorderShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "preResolvedProps":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "resolvedProps":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 77
    .local v3, "prop":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    move-result-object v4

    .line 78
    .local v4, "shorthandResolver":Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;
    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 81
    :cond_0
    const-class v5, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/impl/BorderShorthandResolver;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 82
    .local v5, "logger":Lorg/slf4j/Logger;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 83
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 82
    const-string v7, "Cannot find a shorthand resolver for the \"{0}\" property. Expected border-width, border-style or border-color properties."

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 85
    .end local v3    # "prop":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v4    # "shorthandResolver":Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;
    .end local v5    # "logger":Lorg/slf4j/Logger;
    :goto_1
    goto :goto_0

    .line 86
    :cond_1
    return-object v1
.end method

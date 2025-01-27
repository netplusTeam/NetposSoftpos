.class public Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;
.super Ljava/lang/Object;
.source "SvgNodeRendererInheritanceResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 3
    .param p0, "root"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p1, "subTree"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p2, "cssContext"    # Lcom/itextpdf/svg/css/SvgCssContext;

    .line 73
    invoke-static {p0, p1, p2}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 75
    instance-of v0, p1, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;

    .line 77
    .local v0, "subTreeAsBranch":Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    .line 78
    .local v2, "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    invoke-static {v0, v2, p2}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 79
    .end local v2    # "child":Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    goto :goto_0

    .line 81
    .end local v0    # "subTreeAsBranch":Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
    :cond_0
    return-void
.end method

.method private static applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V
    .locals 8
    .param p0, "parent"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p1, "child"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p2, "cssContext"    # Lcom/itextpdf/svg/css/SvgCssContext;

    .line 84
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttributeMapCopy()Ljava/util/Map;

    move-result-object v0

    .line 86
    .local v0, "childStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 89
    :cond_0
    invoke-interface {p0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttributeMapCopy()Ljava/util/Map;

    move-result-object v1

    .line 90
    .local v1, "parentStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "font-size"

    invoke-interface {p0, v2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "parentFontSize":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 93
    .local v4, "parentAttribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->INHERITANCE_RULES:Ljava/util/Set;

    .line 93
    invoke-static {v0, v5, v6, v2, v7}, Lcom/itextpdf/styledxmlparser/util/StyleUtil;->mergeParentStyleDeclaration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 95
    .end local v4    # "parentAttribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v0, p2, v2}, Lcom/itextpdf/svg/css/impl/SvgStyleResolver;->resolveFontSizeStyle(Ljava/util/Map;Lcom/itextpdf/svg/css/SvgCssContext;Ljava/lang/String;)V

    .line 99
    invoke-interface {p1, v0}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setAttributesAndStyles(Ljava/util/Map;)V

    .line 101
    .end local v0    # "childStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "parentStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "parentFontSize":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1
    .param p1, "root"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p2, "subTree"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyInheritanceToSubTree(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 114
    return-void
.end method

.method protected applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
    .locals 1
    .param p1, "parent"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .param p2, "child"    # Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/itextpdf/svg/css/impl/SvgNodeRendererInheritanceResolver;->applyStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/css/SvgCssContext;)V

    .line 119
    return-void
.end method

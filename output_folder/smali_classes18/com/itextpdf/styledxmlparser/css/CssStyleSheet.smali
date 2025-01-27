.class public Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
.super Ljava/lang/Object;
.source "CssStyleSheet.java"


# instance fields
.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    .line 75
    return-void
.end method

.method public static extractStylesFromRuleSets(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    .local p0, "ruleSets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    .local v0, "declarations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 148
    .local v2, "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    .line 149
    .end local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 151
    .restart local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    .line 152
    .end local v2    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    goto :goto_1

    .line 153
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 154
    .local v1, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 155
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    goto :goto_2

    .line 157
    :cond_2
    return-object v1
.end method

.method private static populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p0, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 168
    .local v1, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/ShorthandResolverFactory;->getShorthandResolver(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;

    move-result-object v2

    .line 169
    .local v2, "shorthandResolver":Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;
    if-nez v2, :cond_0

    .line 170
    invoke-static {p1, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->putDeclarationInMapIfValid(Ljava/util/Map;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)V

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;->resolveShorthand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 173
    .local v3, "resolvedShorthandProps":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-static {v3, p1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    .line 175
    .end local v1    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v2    # "shorthandResolver":Lcom/itextpdf/styledxmlparser/css/resolve/shorthand/IShorthandResolver;
    .end local v3    # "resolvedShorthandProps":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    :goto_1
    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method

.method private static putDeclarationInMapIfValid(Ljava/util/Map;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)V
    .locals 3
    .param p1, "cssDeclaration"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ")V"
        }
    .end annotation

    .line 201
    .local p0, "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/validate/CssDeclarationValidationMaster;->checkDeclaration(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_0
    const-class v0, Lcom/itextpdf/styledxmlparser/css/ICssResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 205
    .local v0, "logger":Lorg/slf4j/Logger;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Invalid css property declaration: {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 207
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method


# virtual methods
.method public addStatement(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public appendCssStyleSheet(Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;)V
    .locals 2
    .param p1, "anotherCssStyleSheet"    # Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    .line 93
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method

.method public getCssDeclarations(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 5
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "ruleSets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    .local v1, "declarations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 131
    .local v3, "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    .line 132
    .end local v3    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;

    .line 134
    .restart local v3    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->populateDeclarationsMap(Ljava/util/List;Ljava/util/Map;)V

    .line 135
    .end local v3    # "ruleSet":Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
    goto :goto_1

    .line 136
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "ruleSets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 188
    .local v2, "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    .end local v2    # "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 190
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;

    invoke-direct {v1}, Lcom/itextpdf/styledxmlparser/CssRuleSetComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    return-object v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;->statements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 103
    .local v2, "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .end local v2    # "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

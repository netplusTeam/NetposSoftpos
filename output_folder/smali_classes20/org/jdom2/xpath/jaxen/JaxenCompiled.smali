.class Lorg/jdom2/xpath/jaxen/JaxenCompiled;
.super Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.source "JaxenCompiled.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;
.implements Lorg/jaxen/VariableContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdom2/xpath/util/AbstractXPathCompiled<",
        "TT;>;",
        "Lorg/jaxen/NamespaceContext;",
        "Lorg/jaxen/VariableContext;"
    }
.end annotation


# instance fields
.field private final navigator:Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

.field private final xPath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;
    .param p4, "namespaces"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lorg/jdom2/Namespace;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;-><init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V

    .line 138
    new-instance v0, Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

    invoke-direct {v0}, Lorg/jdom2/xpath/jaxen/JDOM2Navigator;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->navigator:Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

    .line 150
    :try_start_0
    new-instance v1, Lorg/jaxen/BaseXPath;

    invoke-direct {v1, p1, v0}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    iput-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    nop

    .line 155
    invoke-interface {v1, p0}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 156
    invoke-interface {v1, p0}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 157
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to compile \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. See Cause."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Lorg/jdom2/xpath/jaxen/JaxenCompiled;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/xpath/jaxen/JaxenCompiled<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    .local p1, "toclone":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getExpression()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getFilter()Lorg/jdom2/filter/Filter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getVariables()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getNamespaces()[Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;-><init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V

    .line 167
    return-void
.end method

.method private static final unWrap(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 109
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    return-object v0
.end method

.method private static final unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p0

    check-cast v0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->clone()Lorg/jdom2/xpath/jaxen/JaxenCompiled;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/xpath/XPathExpression;
    .locals 1

    .line 80
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->clone()Lorg/jdom2/xpath/jaxen/JaxenCompiled;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/xpath/jaxen/JaxenCompiled;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/xpath/jaxen/JaxenCompiled<",
            "TT;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    new-instance v0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;

    invoke-direct {v0, p0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;-><init>(Lorg/jdom2/xpath/jaxen/JaxenCompiled;)V

    return-object v0
.end method

.method protected evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrap(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to evaluate expression. See cause"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Ljava/lang/Object;

    .line 208
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to evaluate expression. See cause"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    if-nez p1, :cond_0

    .line 178
    const-string p1, ""

    .line 180
    :cond_0
    if-nez p2, :cond_1

    .line 181
    const-string p2, ""

    .line 184
    :cond_1
    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0, p2}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 187
    :cond_2
    invoke-static {p1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/jaxen/UnresolvableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in namespace \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to a vaulue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 171
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

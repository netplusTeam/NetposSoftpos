.class Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;
.super Lorg/jaxen/DefaultNavigator;
.source "JDOMCoreNavigator.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private transient emtnsmap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/jdom2/Element;",
            "[",
            "Lorg/jdom2/xpath/jaxen/NamespaceContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/jaxen/DefaultNavigator;-><init>()V

    .line 91
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 331
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    .line 332
    return-void
.end method

.method private final recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 170
    .local v1, "c":Lorg/jdom2/Content;
    instance-of v2, v1, Lorg/jdom2/Element;

    if-eqz v2, :cond_0

    .line 171
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Element;

    invoke-direct {p0, v2, p2}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 172
    :cond_0
    instance-of v2, v1, Lorg/jdom2/Text;

    if-eqz v2, :cond_1

    .line 173
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Text;

    invoke-virtual {v2}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .end local v1    # "c":Lorg/jdom2/Content;
    :cond_1
    :goto_1
    goto :goto_0

    .line 176
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 337
    return-void
.end method


# virtual methods
.method public final getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/Object;

    .line 230
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/Object;

    .line 225
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "att"    # Ljava/lang/Object;

    .line 216
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    .line 217
    .local v0, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/Object;

    .line 211
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 284
    instance-of v0, p1, Lorg/jdom2/Parent;

    if-eqz v0, :cond_0

    .line 285
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Parent;

    invoke-interface {v0}, Lorg/jdom2/Parent;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public final getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "comment"    # Ljava/lang/Object;

    .line 206
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Comment;

    invoke-virtual {v0}, Lorg/jdom2/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 108
    .local v0, "sb":Lorg/jdom2/input/SAXBuilder;
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jaxen/FunctionCallException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Lorg/jdom2/JDOMException;
    new-instance v2, Lorg/jaxen/FunctionCallException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "contextNode"    # Ljava/lang/Object;

    .line 245
    instance-of v0, p1, Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    .line 246
    return-object p1

    .line 248
    :cond_0
    instance-of v0, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_1

    .line 249
    move-object v0, p1

    check-cast v0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    instance-of v0, p1, Lorg/jdom2/Attribute;

    if-eqz v0, :cond_2

    .line 252
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0

    .line 254
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {v0}, Lorg/jdom2/Content;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public final getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 201
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 196
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 187
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    .line 188
    .local v0, "e":Lorg/jdom2/Element;
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    check-cast v1, Lorg/jdom2/Element;

    invoke-direct {p0, v1, v0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 8
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .line 297
    .local v0, "ret":[Lorg/jdom2/xpath/jaxen/NamespaceContainer;
    if-nez v0, :cond_2

    .line 298
    move-object v1, p1

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 302
    .local v4, "ns":Lorg/jdom2/Namespace;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-instance v6, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    move-object v7, p1

    check-cast v7, Lorg/jdom2/Element;

    invoke-direct {v6, v4, v7}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;-><init>(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)V

    aput-object v6, v0, v2

    .line 303
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    move v2, v5

    goto :goto_0

    .line 304
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    move-object v4, p1

    check-cast v4, Lorg/jdom2/Element;

    invoke-virtual {v3, v4, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v1    # "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    .end local v2    # "i":I
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public final getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/Object;

    .line 164
    move-object v0, p1

    check-cast v0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/Object;

    .line 159
    move-object v0, p1

    check-cast v0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, p1, Lorg/jdom2/Content;

    if-eqz v1, :cond_0

    .line 316
    move-object v1, p1

    check-cast v1, Lorg/jdom2/Content;

    invoke-virtual {v1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_0
    instance-of v1, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v1, :cond_1

    .line 318
    move-object v1, p1

    check-cast v1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    instance-of v1, p1, Lorg/jdom2/Attribute;

    if-eqz v1, :cond_2

    .line 320
    move-object v1, p1

    check-cast v1, Lorg/jdom2/Attribute;

    invoke-virtual {v1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 322
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 323
    new-instance v1, Lorg/jaxen/util/SingleObjectIterator;

    invoke-direct {v1, v0}, Lorg/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 325
    :cond_3
    sget-object v1, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v1
.end method

.method public final getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .line 259
    instance-of v0, p1, Lorg/jdom2/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    return-object v1

    .line 262
    :cond_0
    instance-of v0, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_1

    .line 263
    move-object v0, p1

    check-cast v0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1
    instance-of v0, p1, Lorg/jdom2/Content;

    if-eqz v0, :cond_2

    .line 266
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Content;

    invoke-virtual {v0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    return-object v0

    .line 268
    :cond_2
    instance-of v0, p1, Lorg/jdom2/Attribute;

    if-eqz v0, :cond_3

    .line 269
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0

    .line 271
    :cond_3
    return-object v1
.end method

.method public final getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "pi"    # Ljava/lang/Object;

    .line 240
    move-object v0, p1

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {v0}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "pi"    # Ljava/lang/Object;

    .line 235
    move-object v0, p1

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {v0}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/Object;

    .line 154
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Text;

    invoke-virtual {v0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAttribute(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 148
    instance-of v0, p1, Lorg/jdom2/Attribute;

    return v0
.end method

.method public final isComment(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Lorg/jdom2/Comment;

    return v0
.end method

.method public final isDocument(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 138
    instance-of v0, p1, Lorg/jdom2/Document;

    return v0
.end method

.method public final isElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Lorg/jdom2/Element;

    return v0
.end method

.method public final isNamespace(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    return v0
.end method

.method public final isProcessingInstruction(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 123
    instance-of v0, p1, Lorg/jdom2/ProcessingInstruction;

    return v0
.end method

.method public final isText(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "isit"    # Ljava/lang/Object;

    .line 118
    instance-of v0, p1, Lorg/jdom2/Text;

    return v0
.end method

.method public final parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/jaxen/BaseXPath;

    invoke-direct {v0, p1, p0}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    return-object v0
.end method

.method reset()V
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 96
    return-void
.end method

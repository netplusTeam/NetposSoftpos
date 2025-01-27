.class final Lorg/jdom2/xpath/jaxen/JDOMNavigator;
.super Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;
.source "JDOMNavigator.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final nsFromContext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nsFromUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method includeNamespace(Lorg/jdom2/Namespace;)V
    .locals 3
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .line 98
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method reset()V
    .locals 1

    .line 77
    invoke-super {p0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->reset()V

    .line 78
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    return-void
.end method

.method setContext(Ljava/lang/Object;)V
    .locals 6
    .param p1, "node"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    instance-of v1, p1, Lorg/jdom2/NamespaceAware;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, p1

    check-cast v1, Lorg/jdom2/NamespaceAware;

    invoke-interface {v1}, Lorg/jdom2/NamespaceAware;->getNamespacesInScope()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_0
    instance-of v1, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v1, :cond_1

    .line 88
    move-object v1, p1

    check-cast v1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    invoke-virtual {v1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v0

    .line 90
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 92
    .local v2, "ns":Lorg/jdom2/Namespace;
    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v2    # "ns":Lorg/jdom2/Namespace;
    goto :goto_1

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 108
    return-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

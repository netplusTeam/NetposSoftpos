.class public Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;
.super Ljava/lang/Object;
.source "XmlElementAdapter.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# instance fields
.field private parent:Lorg/xmlpull/v1/builder/XmlContainer;

.field private target:Lorg/xmlpull/v1/builder/XmlElement;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/builder/XmlElement;)V
    .locals 2
    .param p1, "target"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    .line 20
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    move-result-object v0

    .line 24
    .local v0, "parent":Lorg/xmlpull/v1/builder/XmlContainer;
    instance-of v1, v0, Lorg/xmlpull/v1/builder/XmlDocument;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, v0

    check-cast v1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 26
    .local v1, "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    invoke-interface {v1, p0}, Lorg/xmlpull/v1/builder/XmlDocument;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 27
    .end local v1    # "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    :cond_0
    instance-of v1, v0, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 29
    .local v1, "parentEl":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {v1, p0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .end local v0    # "parent":Lorg/xmlpull/v1/builder/XmlContainer;
    .end local v1    # "parentEl":Lorg/xmlpull/v1/builder/XmlElement;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    .local v0, "iter":Ljava/util/Iterator;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    .end local v0    # "iter":Ljava/util/Iterator;
    return-void

    .line 36
    .restart local v0    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "child":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0
    .param p1, "el"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 51
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 52
    return-object p1
.end method

.method private fixParent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 46
    .local v0, "childEl":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 48
    .end local v0    # "childEl":Lorg/xmlpull/v1/builder/XmlElement;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 7
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "attributePrefix"    # Ljava/lang/String;
    .param p3, "attributeNamespace"    # Ljava/lang/String;
    .param p4, "attributeName"    # Ljava/lang/String;
    .param p5, "attributeValue"    # Ljava/lang/String;
    .param p6, "specified"    # Z

    .line 87
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "specified"    # Z

    .line 144
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "attributeValueToAdd"    # Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 196
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "child"    # Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(ILjava/lang/Object;)V

    .line 268
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    .line 224
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "element"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 211
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixElementParent(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public attributes()Ljava/util/Iterator;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->attributes()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public children()Ljava/util/Iterator;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 148
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public ensureAttributeCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 192
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureAttributeCapacity(I)V

    .line 193
    return-void
.end method

.method public ensureChildrenCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 108
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureChildrenCapacity(I)V

    .line 109
    return-void
.end method

.method public ensureNamespaceDeclarationsCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 176
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->ensureNamespaceDeclarationsCapacity(I)V

    .line 177
    return-void
.end method

.method public findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "attributeNamespaceName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "elementToStartLooking"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 238
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2, p3}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementToStartLooking"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 202
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getBaseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public hasChild(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasChild(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->hasChildren()Z

    move-result v0

    return v0
.end method

.method public hasNamespaceDeclarations()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->hasNamespaceDeclarations()Z

    move-result v0

    return v0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "childToInsert"    # Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->insertChild(ILjava/lang/Object;)V

    .line 229
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "namespacePrefix"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public namespaces()Ljava/util/Iterator;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->namespaces()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public removeAllAttributes()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllAttributes()V

    .line 117
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllChildren()V

    .line 78
    return-void
.end method

.method public removeAllNamespaceDeclarations()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->removeAllNamespaceDeclarations()V

    .line 137
    return-void
.end method

.method public removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 128
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V

    .line 129
    return-void
.end method

.method public removeChild(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->removeChild(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "newChild"    # Ljava/lang/Object;
    .param p2, "oldChild"    # Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/builder/XmlElement;->replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->fixParent(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setBaseUri(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setName(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 172
    iget-object v0, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->target:Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/builder/XmlElement;->setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V

    .line 173
    return-void
.end method

.method public setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
    .locals 0
    .param p1, "parent"    # Lorg/xmlpull/v1/builder/XmlContainer;

    .line 60
    iput-object p1, p0, Lorg/xmlpull/v1/builder/adapter/XmlElementAdapter;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 62
    return-void
.end method

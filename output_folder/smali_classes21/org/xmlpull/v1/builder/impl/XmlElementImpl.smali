.class public Lorg/xmlpull/v1/builder/impl/XmlElementImpl;
.super Ljava/lang/Object;
.source "XmlElementImpl.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private attrs:Ljava/util/List;

.field private children:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

.field private nsList:Ljava/util/List;

.field private parent:Lorg/xmlpull/v1/builder/XmlContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 526
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl$EmptyIterator;-><init>(Lorg/xmlpull/v1/builder/impl/XmlElementImpl$1;)V

    sput-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 34
    :cond_0
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 27
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private checkChildParent(Ljava/lang/Object;)V
    .locals 4
    .param p1, "child"    # Ljava/lang/Object;

    .line 344
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlContainer;

    if-eqz v0, :cond_4

    .line 345
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_2

    .line 346
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 347
    .local v0, "elChild":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    move-result-object v1

    .line 348
    .local v1, "p":Lorg/xmlpull/v1/builder/XmlContainer;
    if-eqz v1, :cond_1

    .line 349
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "child must have no parent to be added to this node"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "elChild":Lorg/xmlpull/v1/builder/XmlElement;
    .end local v1    # "p":Lorg/xmlpull/v1/builder/XmlContainer;
    :cond_1
    :goto_0
    goto :goto_1

    .line 354
    :cond_2
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    if-nez v0, :cond_3

    goto :goto_1

    .line 355
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "docuemet can not be stored as element child"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4
    :goto_1
    return-void
.end method

.method private setChildParent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 361
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_0

    .line 362
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 363
    .local v0, "elChild":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 365
    .end local v0    # "elChild":Lorg/xmlpull/v1/builder/XmlElement;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 130
    const-string v1, "CDATA"

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

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

    .line 151
    invoke-virtual {p0, p2, p3}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v6

    .line 152
    .local v6, "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 8
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "specified"    # Z

    .line 140
    new-instance v7, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/xmlpull/v1/builder/impl/XmlAttributeImpl;-><init>(Lorg/xmlpull/v1/builder/XmlElement;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    .local v0, "a":Lorg/xmlpull/v1/builder/XmlAttribute;
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v1

    return-object v1
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 1
    .param p1, "attributeValueToAdd"    # Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureAttributeCapacity(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p1
.end method

.method public addAttribute(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 6
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 126
    const-string v1, "CDATA"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addAttribute(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 338
    :cond_0
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 340
    invoke-direct {p0, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public addChild(Ljava/lang/Object;)V
    .locals 1
    .param p1, "child"    # Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureChildrenCapacity(I)V

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->checkChildParent(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->setChildParent(Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public addElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0
    .param p1, "element"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 369
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    .line 370
    return-object p1
.end method

.method public addElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    .line 375
    .local v0, "el":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->addChild(Ljava/lang/Object;)V

    .line 376
    return-object v0
.end method

.method public attributes()Ljava/util/Iterator;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public children()Ljava/util/Iterator;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 387
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceName"    # Ljava/lang/String;

    .line 240
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    .line 244
    .local v0, "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v1

    return-object v1

    .line 241
    .end local v0    # "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "namespace added to element must have not null prefix"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declareNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 2
    .param p1, "n"    # Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->ensureNamespaceDeclarationsCapacity(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object p1

    .line 249
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "namespace added to element must have not null prefix"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureAttributeCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 156
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 161
    :goto_0
    return-void
.end method

.method public ensureChildrenCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 392
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    goto :goto_0

    .line 395
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 397
    :goto_0
    return-void
.end method

.method public ensureNamespaceDeclarationsCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .line 313
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    goto :goto_0

    .line 316
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 318
    :goto_0
    return-void
.end method

.method public findAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlAttribute;
    .locals 8
    .param p1, "attributeNamespace"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;

    .line 171
    if-eqz p2, :cond_8

    .line 176
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    return-object v1

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 218
    return-object v1

    .line 184
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 185
    .local v3, "a":Lorg/xmlpull/v1/builder/XmlAttribute;
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "aName":Ljava/lang/String;
    if-eq v4, p2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 189
    :cond_2
    const-string v5, ""

    if-eqz p1, :cond_5

    .line 190
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespaceName()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "aNamespace":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    return-object v3

    .line 193
    :cond_3
    if-ne p1, v5, :cond_4

    if-nez v6, :cond_4

    .line 194
    return-object v3

    .end local v6    # "aNamespace":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 206
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v6

    if-nez v6, :cond_6

    .line 208
    return-object v3

    .line 210
    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v6

    invoke-interface {v6}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v5, :cond_7

    .line 211
    return-object v3

    .line 182
    .end local v3    # "a":Lorg/xmlpull/v1/builder/XmlAttribute;
    .end local v4    # "aName":Ljava/lang/String;
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "length":I
    .end local v2    # "i":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name ca not ber null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findElementByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 401
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 412
    return-object v1

    .line 404
    :cond_1
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 405
    .local v3, "child":Ljava/lang/Object;
    instance-of v4, v3, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v4, :cond_2

    .line 406
    move-object v4, v3

    check-cast v4, Lorg/xmlpull/v1/builder/XmlElement;

    .line 407
    .local v4, "childEl":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-interface {v4}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    return-object v4

    .line 402
    .end local v3    # "child":Ljava/lang/Object;
    .end local v4    # "childEl":Lorg/xmlpull/v1/builder/XmlElement;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findElementByName(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "elementToStartLooking"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findElementByName(Ljava/lang/String;Lorg/xmlpull/v1/builder/XmlElement;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementToStartLooking"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChild(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "child"    # Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    return v1

    .line 438
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 444
    return v1

    .line 440
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 441
    const/4 v1, 0x1

    return v1

    .line 438
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasChildren()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNamespaceDeclarations()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "childToInsert"    # Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public lookupNamespaceByName(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 4
    .param p1, "namespaceName"    # Ljava/lang/String;

    .line 279
    if-eqz p1, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 284
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 287
    .local v2, "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    invoke-interface {v2}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    return-object v2

    .line 284
    .end local v2    # "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "namespace name can not ber null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupNamespaceByPrefix(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 4
    .param p1, "namespacePrefix"    # Ljava/lang/String;

    .line 262
    if-eqz p1, :cond_3

    .line 265
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasNamespaceDeclarations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 267
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 270
    .local v2, "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    invoke-interface {v2}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    return-object v2

    .line 267
    .end local v2    # "n":Lorg/xmlpull/v1/builder/XmlNamespace;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "namespace prefix can not ber null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public namespaces()Ljava/util/Iterator;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/xmlpull/v1/builder/XmlNamespace;

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public newElement(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 462
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 466
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "namespaceName"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceName"    # Ljava/lang/String;

    .line 308
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeAllAttributes()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    .line 223
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    .line 488
    return-void
.end method

.method public removeAllNamespaceDeclarations()V
    .locals 1

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->nsList:Ljava/util/List;

    .line 322
    return-void
.end method

.method public removeAttribute(Lorg/xmlpull/v1/builder/XmlAttribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->attrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    nop

    .line 233
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 226
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeChild(Ljava/lang/Object;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/Object;

    .line 491
    if-eqz p1, :cond_2

    .line 494
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 498
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 499
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 508
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 495
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "no children to remove"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child to remove can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "newChild"    # Ljava/lang/Object;
    .param p2, "oldChild"    # Ljava/lang/Object;

    .line 470
    if-eqz p1, :cond_3

    .line 473
    if-eqz p2, :cond_2

    .line 476
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 480
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 483
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 484
    .end local v0    # "pos":I
    return-void

    .line 481
    .restart local v0    # "pos":I
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "could not find child to replace"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    .end local v0    # "pos":I
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "no children available for replacement"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "old child to replace can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new child to replace can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 104
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNamespace(Lorg/xmlpull/v1/builder/XmlNamespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 82
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 83
    return-void
.end method

.method public setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V
    .locals 4
    .param p1, "parent"    # Lorg/xmlpull/v1/builder/XmlContainer;

    .line 43
    if-eqz p1, :cond_5

    .line 45
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    if-eqz v0, :cond_3

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    move-result-object v0

    .line 47
    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 48
    .local v1, "found":Z
    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "element":Ljava/lang/Object;
    if-ne v2, p0, :cond_0

    .line 52
    const/4 v1, 0x1

    .line 53
    nop

    .line 56
    .end local v2    # "element":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_2

    .line 57
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "found":Z
    goto :goto_1

    .restart local v0    # "iter":Ljava/util/Iterator;
    .restart local v1    # "found":Z
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v3, "this element must be child of parent to set its parent"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "found":Z
    :cond_3
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    if-eqz v0, :cond_5

    .line 61
    move-object v0, p1

    check-cast v0, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 62
    .local v0, "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlDocument;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    if-ne v1, p0, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "this element must be root docuemnt element to have document set as parent but already different element is set as root document element"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "doc":Lorg/xmlpull/v1/builder/XmlDocument;
    :cond_5
    :goto_1
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->parent:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] namespace["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;->namespace:Lorg/xmlpull/v1/builder/XmlNamespace;

    invoke-interface {v1}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bea/xml/stream/EventFactory;
.super Ljavax/xml/stream/XMLEventFactory;
.source "EventFactory.java"


# instance fields
.field private location:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljavax/xml/stream/XMLEventFactory;-><init>()V

    return-void
.end method

.method public static checkPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .line 103
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 104
    :cond_0
    return-object p0
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 73
    new-instance v6, Lcom/bea/xml/stream/AttributeBase;

    const-string v5, "CDATA"

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 1
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p2, "value"    # Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/bea/xml/stream/events/CharactersEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/bea/xml/stream/events/CharactersEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/bea/xml/stream/events/CommentEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;
    .locals 1
    .param p1, "dtd"    # Ljava/lang/String;

    .line 240
    new-instance v0, Lcom/bea/xml/stream/events/DTDEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createEndDocument()Ljavax/xml/stream/events/EndDocument;
    .locals 1

    .line 199
    new-instance v0, Lcom/bea/xml/stream/events/EndDocumentEvent;

    invoke-direct {v0}, Lcom/bea/xml/stream/events/EndDocumentEvent;-><init>()V

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/bea/xml/stream/EventFactory;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Lcom/bea/xml/stream/events/EndElementEvent;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "namespaces"    # Ljava/util/Iterator;

    .line 158
    invoke-static {p1}, Lcom/bea/xml/stream/EventFactory;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v0, Lcom/bea/xml/stream/events/EndElementEvent;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 161
    .local v0, "e":Lcom/bea/xml/stream/events/EndElementEvent;
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_0

    .line 163
    :cond_0
    return-object v0
.end method

.method public createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p2, "namespaces"    # Ljava/util/Iterator;

    .line 139
    new-instance v0, Lcom/bea/xml/stream/events/EndElementEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 141
    .local v0, "e":Lcom/bea/xml/stream/events/EndElementEvent;
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_0

    .line 143
    :cond_0
    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaration"    # Ljavax/xml/stream/events/EntityDeclaration;

    .line 215
    new-instance v0, Lcom/bea/xml/stream/events/EntityReferenceEvent;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V

    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/bea/xml/stream/events/CharactersEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "c":Lcom/bea/xml/stream/events/CharactersEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/CharactersEvent;->setSpace(Z)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/CharactersEvent;->setIgnorable(Z)V

    .line 228
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_0

    .line 82
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The prefix of a namespace may not be set to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/bea/xml/stream/events/ProcessingInstructionEvent;

    invoke-direct {v0, p1, p2}, Lcom/bea/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/bea/xml/stream/events/CharactersEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/CharactersEvent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "c":Lcom/bea/xml/stream/events/CharactersEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/CharactersEvent;->setSpace(Z)V

    .line 221
    return-object v0
.end method

.method public createStartDocument()Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 175
    new-instance v0, Lcom/bea/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/bea/xml/stream/events/StartDocumentEvent;-><init>()V

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/bea/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/bea/xml/stream/events/StartDocumentEvent;-><init>()V

    .line 194
    .local v0, "e":Lcom/bea/xml/stream/events/StartDocumentEvent;
    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/bea/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/bea/xml/stream/events/StartDocumentEvent;-><init>()V

    .line 187
    .local v0, "e":Lcom/bea/xml/stream/events/StartDocumentEvent;
    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setVersion(Ljava/lang/String;)V

    .line 189
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "standalone"    # Z

    .line 179
    new-instance v0, Lcom/bea/xml/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/bea/xml/stream/events/StartDocumentEvent;-><init>()V

    .line 180
    .local v0, "e":Lcom/bea/xml/stream/events/StartDocumentEvent;
    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setVersion(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p3}, Lcom/bea/xml/stream/events/StartDocumentEvent;->setStandalone(Z)V

    .line 183
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartElement;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/bea/xml/stream/events/StartElementEvent;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attributes"    # Ljava/util/Iterator;
    .param p5, "namespaces"    # Ljava/util/Iterator;

    .line 111
    invoke-static {p1}, Lcom/bea/xml/stream/EventFactory;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v0, Lcom/bea/xml/stream/events/StartElementEvent;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 114
    .local v0, "e":Lcom/bea/xml/stream/events/StartElementEvent;
    :goto_0
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    goto :goto_0

    .line 116
    :cond_0
    :goto_1
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_1

    .line 118
    :cond_1
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attributes"    # Ljava/util/Iterator;
    .param p5, "namespaces"    # Ljava/util/Iterator;
    .param p6, "context"    # Ljavax/xml/namespace/NamespaceContext;

    .line 126
    invoke-static {p1}, Lcom/bea/xml/stream/EventFactory;->checkPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v0, Lcom/bea/xml/stream/events/StartElementEvent;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 129
    .local v0, "e":Lcom/bea/xml/stream/events/StartElementEvent;
    :goto_0
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    goto :goto_0

    .line 131
    :cond_0
    :goto_1
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v0, p6}, Lcom/bea/xml/stream/events/StartElementEvent;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 134
    return-object v0
.end method

.method public createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 2
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p2, "attributes"    # Ljava/util/Iterator;
    .param p3, "namespaces"    # Ljava/util/Iterator;

    .line 87
    new-instance v0, Lcom/bea/xml/stream/events/StartElementEvent;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 89
    .local v0, "e":Lcom/bea/xml/stream/events/StartElementEvent;
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    goto :goto_0

    .line 91
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/events/StartElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_1

    .line 93
    :cond_1
    return-object v0
.end method

.method public setLocation(Ljavax/xml/stream/Location;)V
    .locals 0
    .param p1, "l"    # Ljavax/xml/stream/Location;

    .line 58
    iput-object p1, p0, Lcom/bea/xml/stream/EventFactory;->location:Ljavax/xml/stream/Location;

    .line 59
    return-void
.end method

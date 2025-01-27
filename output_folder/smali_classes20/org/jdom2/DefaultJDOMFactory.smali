.class public Lorg/jdom2/DefaultJDOMFactory;
.super Ljava/lang/Object;
.source "DefaultJDOMFactory.java"

# interfaces
.implements Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V
    .locals 1
    .param p1, "parent"    # Lorg/jdom2/Parent;
    .param p2, "child"    # Lorg/jdom2/Content;

    .line 309
    instance-of v0, p1, Lorg/jdom2/Document;

    if-eqz v0, :cond_0

    .line 310
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Document;

    invoke-virtual {v0, p2}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto :goto_0

    .line 312
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0, p2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 314
    :goto_0
    return-void
.end method

.method public addNamespaceDeclaration(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "additional"    # Lorg/jdom2/Namespace;

    .line 323
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 324
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom2/Namespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-static {p3}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .line 111
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .line 95
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .line 81
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lorg/jdom2/CDATA;

    invoke-direct {v0, p3}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 141
    new-instance v0, Lorg/jdom2/Comment;

    invoke-direct {v0, p3}, Lorg/jdom2/Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final comment(Ljava/lang/String;)Lorg/jdom2/Comment;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .line 174
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .line 163
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .line 152
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final docType(Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 168
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public final docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .line 157
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public final docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 6
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .line 146
    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .line 190
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;

    .line 179
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;)V

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .line 185
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 211
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .line 222
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .line 233
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .line 201
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public final element(Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 216
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .line 227
    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .line 195
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 278
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .line 300
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .line 289
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .line 294
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .line 283
    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .line 244
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .line 268
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .line 256
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .line 238
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 262
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .line 250
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "a"    # Lorg/jdom2/Attribute;

    .line 318
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 319
    return-void
.end method

.method public setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "root"    # Lorg/jdom2/Element;

    .line 328
    invoke-virtual {p1, p2}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 329
    return-void
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 131
    new-instance v0, Lorg/jdom2/Text;

    invoke-direct {v0, p3}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final text(Ljava/lang/String;)Lorg/jdom2/Text;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

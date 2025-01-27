.class public Lorg/jdom2/SlimJDOMFactory;
.super Lorg/jdom2/DefaultJDOMFactory;
.source "SlimJDOMFactory.java"


# instance fields
.field private cache:Lorg/jdom2/StringBin;

.field private final cachetext:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom2/SlimJDOMFactory;-><init>(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "cachetext"    # Z

    .line 89
    invoke-direct {p0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    .line 71
    new-instance v0, Lorg/jdom2/StringBin;

    invoke-direct {v0}, Lorg/jdom2/StringBin;-><init>()V

    iput-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    .line 90
    iput-boolean p1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    .line 91
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;

    move-result-object v0

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

    .line 112
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1, p3, p4}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .line 141
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .line 120
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1, p3, p4}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .line 103
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-super {p0, v0, v1, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 148
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    .line 98
    new-instance v0, Lorg/jdom2/StringBin;

    invoke-direct {v0}, Lorg/jdom2/StringBin;-><init>()V

    iput-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    .line 99
    return-void
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 158
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .locals 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .line 178
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .locals 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

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

    .line 199
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .locals 1
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 153
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

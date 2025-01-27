.class public Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;
.super Ljava/lang/Object;
.source "XmlDocumentImpl.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlDocument;


# instance fields
.field private characterEncoding:Ljava/lang/String;

.field private children:Ljava/util/List;

.field private root:Lorg/xmlpull/v1/builder/XmlElement;

.field private standalone:Ljava/lang/Boolean;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .param p3, "characterEncoding"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->version:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->standalone:Ljava/lang/Boolean;

    .line 29
    iput-object p3, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/Object;

    .line 251
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 171
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;

    invoke-direct {v0, p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;-><init>(Lorg/xmlpull/v1/builder/XmlContainer;Ljava/lang/String;)V

    .line 172
    .local v0, "comment":Lorg/xmlpull/v1/builder/XmlComment;
    iget-object v1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v0
.end method

.method public addDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
    .locals 2
    .param p1, "systemIdentifier"    # Ljava/lang/String;
    .param p2, "publicIdentifier"    # Ljava/lang/String;

    .line 240
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDocumentElement(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->addDocumentElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public addDocumentElement(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 3
    .param p1, "namespace"    # Lorg/xmlpull/v1/builder/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 310
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {v0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    .line 311
    .local v0, "el":Lorg/xmlpull/v1/builder/XmlElement;
    invoke-virtual {p0}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    move-result-object v1

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 315
    return-object v0

    .line 312
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v2, "document already has root element"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNotation;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemIdentifier"    # Ljava/lang/String;
    .param p3, "publicIdentifier"    # Ljava/lang/String;
    .param p4, "declarationBaseUri"    # Ljava/lang/String;

    .line 267
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 95
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public children()Ljava/util/Iterator;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public insertChild(ILjava/lang/Object;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "child"    # Ljava/lang/Object;

    .line 157
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAllDeclarationsProcessed()Z
    .locals 2

    .line 327
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isStandalone()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->standalone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public newComment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlComment;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 218
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;-><init>(Lorg/xmlpull/v1/builder/XmlContainer;Ljava/lang/String;)V

    return-object v0
.end method

.method public newDoctype(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDoctype;
    .locals 2
    .param p1, "systemIdentifier"    # Ljava/lang/String;
    .param p2, "publicIdentifier"    # Ljava/lang/String;

    .line 187
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlProcessingInstruction;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notations()Ljava/util/Iterator;
    .locals 2

    .line 293
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remocveAllUnparsedEntities()V
    .locals 2

    .line 120
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllChildren()V
    .locals 2

    .line 205
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllNotations()V
    .locals 2

    .line 227
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterEncodingScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "characterEncoding"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->characterEncoding:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V
    .locals 4
    .param p1, "rootElement"    # Lorg/xmlpull/v1/builder/XmlElement;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "replaced":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 140
    if-nez v0, :cond_0

    .line 141
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    .line 144
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/builder/XmlElement;->setParent(Lorg/xmlpull/v1/builder/XmlContainer;)V

    .line 146
    .end local v0    # "replaced":Z
    .end local v1    # "i":I
    return-void

    .line 134
    .restart local v0    # "replaced":Z
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "element":Ljava/lang/Object;
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->root:Lorg/xmlpull/v1/builder/XmlElement;

    if-ne v2, v3, :cond_2

    .line 136
    iget-object v3, p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;->children:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    .line 132
    .end local v2    # "element":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unparsedEntities()Ljava/util/Iterator;
    .locals 2

    .line 196
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

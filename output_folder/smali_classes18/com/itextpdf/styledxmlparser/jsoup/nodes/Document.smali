.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    }
.end annotation


# instance fields
.field private location:Ljava/lang/String;

.field private outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

.field private quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 73
    const-string v0, "#root"

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 62
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;->noQuirks:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 74
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->location:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static createShell(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 3
    .param p0, "baseUri"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 87
    .local v1, "html":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const-string v2, "head"

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 88
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 90
    return-object v0
.end method

.method private ensureMetaCharsetElement()V
    .locals 10

    .line 353
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v0, :cond_6

    .line 354
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    .line 356
    .local v0, "syntax":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_2

    .line 357
    const-string v1, "meta[charset]"

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 359
    .local v1, "metaCharset":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const-string v2, "charset"

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    .line 364
    .local v3, "head":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v3, :cond_1

    .line 365
    const-string v4, "meta"

    invoke-virtual {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 370
    .end local v3    # "head":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    :goto_0
    const-string v2, "meta[name=charset]"

    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->remove()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    .end local v1    # "metaCharset":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto/16 :goto_2

    .line 371
    :cond_2
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_6

    .line 372
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 374
    .local v1, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    const-string v4, "encoding"

    const-string v5, "1.0"

    const-string/jumbo v6, "xml"

    const-string/jumbo v7, "version"

    if-eqz v3, :cond_5

    .line 375
    move-object v3, v1

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    .line 377
    .local v3, "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 380
    invoke-virtual {v3, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "version":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 383
    invoke-virtual {v3, v7, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 385
    .end local v2    # "version":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 386
    :cond_4
    new-instance v8, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    iget-object v9, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri:Ljava/lang/String;

    invoke-direct {v8, v6, v9, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v8

    .line 387
    .end local v3    # "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    .local v2, "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v2, v7, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 388
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 390
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 392
    .end local v2    # "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    :goto_1
    goto :goto_2

    .line 393
    :cond_5
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    iget-object v8, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri:Ljava/lang/String;

    invoke-direct {v3, v6, v8, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v3

    .line 394
    .restart local v2    # "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v2, v7, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 395
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 397
    invoke-virtual {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    nop

    .line 401
    .end local v0    # "syntax":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    .end local v1    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v2    # "decl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;
    :cond_6
    :goto_2
    return-void
.end method

.method private findFirstElementByTagName(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 223
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p2

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 227
    .local v1, "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-direct {p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .line 228
    .local v2, "found":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v2, :cond_1

    .line 229
    return-object v2

    .line 230
    .end local v1    # "child":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v2    # "found":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "htmlEl"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 201
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 202
    .local v0, "elements":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 203
    .local v1, "master":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, "toMove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 206
    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 207
    .local v4, "dupe":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    iget-object v5, v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 208
    .local v6, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v6    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->remove()V

    .line 205
    .end local v4    # "dupe":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 213
    .restart local v4    # "dupe":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_2

    .line 216
    .end local v2    # "toMove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    .end local v4    # "dupe":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 219
    :cond_3
    return-void
.end method

.method private normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 7
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "toMove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 184
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 185
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 186
    .local v3, "tn":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->isBlank()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v3    # "tn":Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 192
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 193
    .restart local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-virtual {p1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 194
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    const-string v5, " "

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 195
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 191
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 197
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 115
    const-string v0, "body"

    invoke-direct {p0, v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    .line 282
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 283
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 284
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 329
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 330
    .local v0, "clone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 331
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 107
    const-string v0, "head"

    invoke-direct {p0, v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->location:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 253
    const-string v0, "#document"

    return-object v0
.end method

.method public normalise()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 4

    .line 158
    const-string v0, "html"

    invoke-direct {p0, v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 159
    .local v1, "htmlEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "head"

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    const-string v3, "body"

    if-nez v0, :cond_2

    .line 164
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 170
    invoke-direct {p0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseTextNodes(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 172
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 173
    invoke-direct {p0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 175
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 177
    return-object p0
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0
    .param p1, "outputSettings"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 594
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 595
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 596
    return-object p0
.end method

.method public quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 0
    .param p1, "quirksMode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    .line 608
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    .line 609
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 248
    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 124
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 125
    .local v0, "titleEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public title(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v1

    .line 136
    .local v1, "titleEl":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->head()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 141
    :goto_0
    return-void
.end method

.method public updateMetaCharsetElement(Z)V
    .locals 0
    .param p1, "update"    # Z

    .line 312
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 313
    return-void
.end method

.method public updateMetaCharsetElement()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->updateMetaCharset:Z

    return v0
.end method

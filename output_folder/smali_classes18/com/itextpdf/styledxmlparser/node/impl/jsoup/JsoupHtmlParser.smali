.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;
.super Ljava/lang/Object;
.source "JsoupHtmlParser.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/IXmlParser;


# static fields
.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 5
    .param p1, "jsoupNode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "resultNode":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)V

    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V

    move-object v0, v1

    goto :goto_0

    .line 119
    :cond_1
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    move-object v0, v1

    goto :goto_0

    .line 121
    :cond_2
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    if-eqz v1, :cond_3

    .line 122
    new-instance v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;)V

    move-object v0, v1

    goto :goto_0

    .line 123
    :cond_3
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentTypeNode;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentTypeNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;)V

    move-object v0, v1

    goto :goto_0

    .line 125
    :cond_4
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 127
    :cond_5
    sget-object v1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Could not map node type: {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 131
    .local v2, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v3

    .line 132
    .local v3, "childNode":Lcom/itextpdf/styledxmlparser/node/INode;
    if-eqz v3, :cond_6

    .line 133
    invoke-interface {v0, v3}, Lcom/itextpdf/styledxmlparser/node/INode;->addChild(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 135
    .end local v2    # "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .end local v3    # "childNode":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_6
    goto :goto_1

    .line 137
    :cond_7
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
    .locals 4
    .param p1, "htmlStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-string v0, ""

    .line 84
    .local v0, "baseUri":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v1

    .line 85
    .local v1, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v2

    .line 86
    .local v2, "result":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v3, :cond_0

    .line 87
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    return-object v3

    .line 89
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 99
    .local v0, "doc":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/JsoupHtmlParser;->wrapJsoupHierarchy(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v1

    .line 100
    .local v1, "result":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    return-object v2

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

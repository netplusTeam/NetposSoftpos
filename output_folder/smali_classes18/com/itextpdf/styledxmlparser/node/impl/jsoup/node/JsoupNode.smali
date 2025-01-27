.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;
.super Ljava/lang/Object;
.source "JsoupNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/INode;


# instance fields
.field private childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation
.end field

.field private node:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

.field parentNode:Lcom/itextpdf/styledxmlparser/node/INode;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->childNodes:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->node:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 76
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 91
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;

    iput-object p0, v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

    goto :goto_0

    .line 95
    :cond_0
    const-class v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 96
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Error adding child node."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 98
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method

.method public childNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->childNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parentNode()Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;->parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

    return-object v0
.end method

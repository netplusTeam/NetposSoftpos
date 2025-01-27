.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;
.super Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;
.source "JsoupDataNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IDataNode;


# instance fields
.field private dataNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;)V
    .locals 0
    .param p1, "dataNode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;->dataNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    .line 65
    return-void
.end method


# virtual methods
.method public getWholeData()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDataNode;->dataNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

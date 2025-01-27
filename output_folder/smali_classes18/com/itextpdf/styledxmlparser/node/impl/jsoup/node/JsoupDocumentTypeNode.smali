.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentTypeNode;
.super Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;
.source "JsoupDocumentTypeNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IDocumentTypeNode;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;)V
    .locals 0
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    .line 60
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 61
    return-void
.end method

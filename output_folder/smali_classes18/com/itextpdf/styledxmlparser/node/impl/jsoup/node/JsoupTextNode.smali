.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;
.super Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;
.source "JsoupTextNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/ITextNode;


# instance fields
.field private textNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;)V
    .locals 0
    .param p1, "textNode"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;->textNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    .line 65
    return-void
.end method


# virtual methods
.method public wholeText()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupTextNode;->textNode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

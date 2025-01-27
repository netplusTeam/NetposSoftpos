.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;
.super Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;
.source "JsoupDocumentNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IDocumentNode;


# instance fields
.field private document:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;->document:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 65
    return-void
.end method


# virtual methods
.method public getDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupDocumentNode;->document:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    return-object v0
.end method

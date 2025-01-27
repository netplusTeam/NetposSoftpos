.class public Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# instance fields
.field private visitor:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->visitor:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    .line 61
    return-void
.end method


# virtual methods
.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V
    .locals 3
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 68
    move-object v0, p1

    .line 69
    .local v0, "node":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    const/4 v1, 0x0

    .line 71
    .local v1, "depth":I
    :goto_0
    if-eqz v0, :cond_3

    .line 72
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->visitor:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    invoke-interface {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;->head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V

    .line 73
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNodeSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->childNode(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nextSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->visitor:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    invoke-interface {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;->tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V

    .line 79
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->parentNode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->visitor:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    invoke-interface {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;->tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V

    .line 83
    if-ne v0, p1, :cond_2

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;->nextSibling()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    :goto_2
    return-void
.end method

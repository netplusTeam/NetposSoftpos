.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassChildSelectorItem.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pseudoClass"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pseudoClass"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method getAllSiblings(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;
    .locals 6
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    .line 74
    .local v0, "parentElement":Lcom/itextpdf/styledxmlparser/node/INode;
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "childrenUnmodifiable":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 78
    .local v4, "iNode":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v5, :cond_0

    .line 79
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v4    # "iNode":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    return-object v2

    .line 83
    .end local v1    # "childrenUnmodifiable":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getAllSiblingsOfNodeType(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;
    .locals 7
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    .line 94
    .local v0, "parentElement":Lcom/itextpdf/styledxmlparser/node/INode;
    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "childrenUnmodifiable":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 98
    .local v4, "iNode":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v5}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "iNode":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    return-object v2

    .line 103
    .end local v1    # "childrenUnmodifiable":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

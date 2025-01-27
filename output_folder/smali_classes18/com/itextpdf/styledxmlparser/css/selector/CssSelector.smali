.class public Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;
.super Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;
.source "CssSelector.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "selector"    # Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->parseSelectorItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;-><init>(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;-><init>(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method private matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z
    .locals 11
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "lastSelectorItemInd"    # I

    .line 94
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    const/4 v0, 0x1

    if-gez p2, :cond_1

    .line 98
    return v0

    .line 100
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    .line 101
    .local v2, "isPseudoElement":Z
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_d

    .line 102
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    if-eqz v4, :cond_2

    if-ge v3, p2, :cond_2

    .line 106
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    .line 107
    const/4 v2, 0x0

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 110
    .local v4, "currentItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    instance-of v5, v4, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    if-eqz v5, :cond_b

    .line 111
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->getSeparator()C

    move-result v5

    .line 112
    .local v5, "separator":C
    sparse-switch v5, :sswitch_data_0

    .line 155
    return v1

    .line 128
    :sswitch_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v6

    .line 129
    .local v6, "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    if-eqz v6, :cond_4

    .line 130
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 131
    .local v7, "indexOfElement":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "j":I
    :goto_1
    if-ltz v8, :cond_4

    .line 132
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/styledxmlparser/node/INode;

    add-int/lit8 v10, v3, -0x1

    invoke-direct {p0, v9, v10}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    return v0

    .line 131
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 137
    .end local v7    # "indexOfElement":I
    .end local v8    # "j":I
    :cond_4
    return v1

    .line 114
    .end local v6    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    :sswitch_1
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v0

    return v0

    .line 140
    :sswitch_2
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v6

    .line 141
    .restart local v6    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    if-eqz v6, :cond_8

    .line 142
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 143
    .restart local v7    # "indexOfElement":I
    const/4 v8, 0x0

    .line 144
    .local v8, "previousElement":Lcom/itextpdf/styledxmlparser/node/INode;
    add-int/lit8 v9, v7, -0x1

    .local v9, "j":I
    :goto_2
    if-ltz v9, :cond_6

    .line 145
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v10, :cond_5

    .line 146
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 147
    goto :goto_3

    .line 144
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 149
    .end local v9    # "j":I
    :cond_6
    :goto_3
    if-eqz v8, :cond_8

    .line 150
    if-lez v7, :cond_7

    add-int/lit8 v9, v3, -0x1

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v9

    if-eqz v9, :cond_7

    move v1, v0

    :cond_7
    return v1

    .line 152
    .end local v7    # "indexOfElement":I
    .end local v8    # "previousElement":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_8
    return v1

    .line 116
    .end local v6    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    :sswitch_3
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v6

    .line 117
    .restart local v6    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    :goto_4
    if-eqz v6, :cond_a

    .line 118
    add-int/lit8 v7, v3, -0x1

    invoke-direct {p0, v6, v7}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v7

    .line 119
    .local v7, "parentMatches":Z
    if-eqz v7, :cond_9

    .line 120
    return v0

    .line 122
    :cond_9
    invoke-interface {v6}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v6

    .line 124
    .end local v7    # "parentMatches":Z
    goto :goto_4

    .line 125
    :cond_a
    return v1

    .line 158
    .end local v5    # "separator":C
    .end local v6    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_b
    invoke-interface {v4, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 159
    return v1

    .line 101
    .end local v4    # "currentItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_d
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x2b -> :sswitch_2
        0x3e -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;I)Z

    move-result v0

    return v0
.end method

.class public Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;
.super Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;
.source "CssPageSelector.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageSelectorStr"    # Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssPageSelectorParser;->parseSelectorItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;-><init>(Ljava/util/List;)V

    .line 62
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 69
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    return v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 74
    .local v2, "selectorItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    invoke-interface {v2, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    return v1

    .line 77
    .end local v2    # "selectorItem":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;
.super Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.source "CssPageRule.java"


# instance fields
.field private pageSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "ruleParameters"    # Ljava/lang/String;

    .line 71
    const-string v0, "page"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    .line 74
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "selectors":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    .local v3, "currentSelectorStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;

    invoke-direct {v5, v3}, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v3    # "currentSelectorStr":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public addBodyCssDeclarations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 100
    .local v1, "pageSelector":Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->body:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;

    invoke-direct {v3, v1, p1}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v1    # "pageSelector":Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 2
    .param p1, "statement"    # Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 109
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->setPageSelectors(Ljava/util/List;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->body:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addStatementsToBody(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/css/CssStatement;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 121
    .local v1, "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    .line 122
    .end local v1    # "statement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

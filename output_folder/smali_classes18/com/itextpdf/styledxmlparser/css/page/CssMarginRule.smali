.class public Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;
.super Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.source "CssMarginRule.java"


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
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;

    .line 67
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "ruleParameters"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public addBodyCssDeclarations(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->pageSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 88
    .local v1, "pageSelector":Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->body:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->getRuleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)V

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "pageSelector":Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method setPageSelectors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "pageSelectors":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->pageSelectors:Ljava/util/List;

    .line 99
    return-void
.end method

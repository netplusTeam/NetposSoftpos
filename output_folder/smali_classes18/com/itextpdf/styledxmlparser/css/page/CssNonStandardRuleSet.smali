.class Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;
.super Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
.source "CssNonStandardRuleSet.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V
    .locals 0
    .param p1, "selector"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    .line 64
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "\n"

    const-string v4, ";"

    if-ge v1, v2, :cond_1

    .line 73
    if-lez v1, :cond_0

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 77
    .local v2, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .end local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 80
    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 81
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 84
    .restart local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !important"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

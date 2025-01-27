.class public Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.super Lcom/itextpdf/styledxmlparser/css/CssAtRule;
.source "CssNestedAtRule.java"


# instance fields
.field protected body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation
.end field

.field private ruleParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "ruleParameters"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssAtRule;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->ruleParameters:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public addBodyCssDeclarations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "cssDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    return-void
.end method

.method public addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 84
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public addStatementsToBody(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/css/CssStatement;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method

.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssRuleSet;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 112
    .local v2, "childStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    .end local v2    # "childStatement":Lcom/itextpdf/styledxmlparser/css/CssStatement;
    goto :goto_0

    .line 114
    :cond_0
    return-object v0
.end method

.method public getRuleParameters()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->ruleParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->ruleName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->ruleParameters:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "@{0} {1} "

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 136
    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n    "

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;->body:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_0

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    :cond_1
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

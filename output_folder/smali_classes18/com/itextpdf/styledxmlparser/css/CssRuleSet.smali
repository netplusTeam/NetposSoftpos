.class public Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
.super Lcom/itextpdf/styledxmlparser/css/CssStatement;
.source "CssRuleSet.java"


# static fields
.field private static final importantMatcher:Ljava/util/regex/Pattern;


# instance fields
.field private importantDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private normalDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, ".*!\\s*important$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantMatcher:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V
    .locals 2
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

    .line 80
    .local p2, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/CssStatement;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-static {p2, v1, v0}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->splitDeclarationsIntoNormalAndImportant(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "selector"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "normalDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .local p3, "importantDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/CssStatement;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 89
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    .line 90
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    .line 91
    return-void
.end method

.method private static splitDeclarationsIntoNormalAndImportant(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p0, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .local p1, "normalDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    .local p2, "importantDeclarations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/CssDeclaration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 165
    .local v1, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 166
    .local v2, "exclIndex":I
    if-lez v2, :cond_0

    sget-object v3, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantMatcher:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    new-instance v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v1    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    .end local v2    # "exclIndex":I
    :goto_1
    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method


# virtual methods
.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/node/INode;
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

    .line 98
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImportantDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getNormalDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    return-object v0
.end method

.method public getSelector()Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->selector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "\n"

    const-string v4, ";"

    const-string v5, "    "

    if-ge v1, v2, :cond_1

    .line 114
    if-lez v1, :cond_0

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 118
    .local v2, "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .end local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 121
    if-gtz v1, :cond_2

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->normalDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 122
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;->importantDeclarations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 125
    .restart local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !important"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v2    # "declaration":Lcom/itextpdf/styledxmlparser/css/CssDeclaration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v1    # "i":I
    :cond_4
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassNotSelectorItem.java"


# instance fields
.field private argumentsSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)V
    .locals 2
    .param p1, "argumentsSelector"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;->argumentsSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 61
    return-void
.end method


# virtual methods
.method public getArgumentsSelector()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;->arguments:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssSelectorParser;->parseSelectorItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 69
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;->argumentsSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 70
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

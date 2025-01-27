.class public Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;
.super Ljava/lang/Object;
.source "CssPageMarginBoxSelector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# instance fields
.field private pageMarginBoxName:Ljava/lang/String;

.field private pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)V
    .locals 0
    .param p1, "pageMarginBoxName"    # Ljava/lang/String;
    .param p2, "pageSelector"    # Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageMarginBoxName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 68
    return-void
.end method


# virtual methods
.method public calculateSpecificity()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->calculateSpecificity()I

    move-result v0

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 83
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;

    .line 87
    .local v0, "marginBoxNode":Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageMarginBoxName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->getMarginBoxName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object v1

    .line 89
    .local v1, "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v2, v1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result v2

    return v2

    .line 91
    .end local v1    # "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    :cond_1
    return v1
.end method

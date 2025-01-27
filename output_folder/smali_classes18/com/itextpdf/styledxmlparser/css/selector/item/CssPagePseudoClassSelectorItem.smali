.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;
.super Ljava/lang/Object;
.source "CssPagePseudoClassSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private isSpreadPseudoClass:Z

.field private pagePseudoClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pagePseudoClass"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;->isSpreadPseudoClass:Z

    .line 67
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;->pagePseudoClass:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;->isSpreadPseudoClass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 83
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->getPageClasses()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPagePseudoClassSelectorItem;->pagePseudoClass:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

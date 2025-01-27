.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;
.super Ljava/lang/Object;
.source "CssTagSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private isUniversal:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    .line 69
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 85
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 89
    .local v0, "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 86
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    :cond_3
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    return-object v0
.end method

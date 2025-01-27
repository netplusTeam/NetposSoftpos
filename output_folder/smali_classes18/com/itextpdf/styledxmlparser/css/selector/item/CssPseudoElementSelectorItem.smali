.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;
.super Ljava/lang/Object;
.source "CssPseudoElementSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private pseudoElementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pseudoElementName"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 2
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 79
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->getPseudoElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

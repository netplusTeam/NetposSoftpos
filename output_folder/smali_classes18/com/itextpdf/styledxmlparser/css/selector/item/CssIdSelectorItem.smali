.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;
.super Ljava/lang/Object;
.source "CssIdSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 73
    const/high16 v0, 0x100000

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 81
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 85
    .local v0, "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 82
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

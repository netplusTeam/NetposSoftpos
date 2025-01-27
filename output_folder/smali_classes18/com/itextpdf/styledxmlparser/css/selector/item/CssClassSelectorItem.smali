.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;
.super Ljava/lang/Object;
.source "CssClassSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;->className:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 74
    const/16 v0, 0x400

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 9
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 90
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 94
    .local v0, "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    const-string v2, "class"

    invoke-interface {v0, v2}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "classAttr":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 96
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "classNames":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 98
    .local v6, "currClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;->className:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v6    # "currClassName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "classNames":[Ljava/lang/String;
    :cond_2
    return v1

    .line 91
    .end local v0    # "element":Lcom/itextpdf/styledxmlparser/node/IElementNode;
    .end local v2    # "classAttr":Ljava/lang/String;
    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssClassSelectorItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;
.super Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;
.source "JsoupElementNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IElementNode;


# instance fields
.field private attributes:Lcom/itextpdf/styledxmlparser/node/IAttributes;

.field private customDefaultStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private element:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

.field private elementResolvedStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 2
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 83
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupNode;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->element:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 85
    new-instance v0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttributes;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupAttributes;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->attributes:Lcom/itextpdf/styledxmlparser/node/IAttributes;

    .line 86
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public addAdditionalHtmlStyles(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->customDefaultStyles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->customDefaultStyles:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->customDefaultStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public getAdditionalHtmlStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->customDefaultStyles:Ljava/util/List;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->attributes:Lcom/itextpdf/styledxmlparser/node/IAttributes;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/node/IAttributes;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->attributes:Lcom/itextpdf/styledxmlparser/node/IAttributes;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

    .line 156
    .local v0, "parent":Lcom/itextpdf/styledxmlparser/node/INode;
    instance-of v1, v0, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    invoke-interface {v1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getLang()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    .line 157
    if-nez v1, :cond_2

    .line 160
    const-string v1, ""

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->lang:Ljava/lang/String;

    return-object v1
.end method

.method public getStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->elementResolvedStyles:Ljava/util/Map;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->element:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "elementResolvedStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->elementResolvedStyles:Ljava/util/Map;

    .line 118
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/node/impl/jsoup/node/JsoupElementNode;->element:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

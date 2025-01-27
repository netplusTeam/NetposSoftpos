.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
.super Ljava/util/ArrayList;
.source "Elements.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 72
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    return-void
.end method

.method public varargs constructor <init>([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V
    .locals 1
    .param p1, "elements"    # [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 84
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 162
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->addClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 163
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 164
    :cond_0
    return-object p0
.end method

.method public after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 370
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->after(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 371
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 372
    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 344
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 345
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 346
    :cond_0
    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 138
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 139
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 140
    :cond_0
    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 111
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 357
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->before(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 358
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 359
    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 93
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(I)V

    .line 95
    .local v0, "clone":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 96
    .local v2, "e":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v2    # "e":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    return-object v0
.end method

.method public empty()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 429
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->empty()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 430
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 431
    :cond_0
    return-object p0
.end method

.method public eq(I)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4
    .param p1, "index"    # I

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>([Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    :goto_0
    return-object v0
.end method

.method public first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    return-object v0
.end method

.method public forms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "forms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;>;"
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 552
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    if-eqz v3, :cond_0

    .line 553
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 554
    :cond_1
    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 124
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const/4 v0, 0x1

    return v0

    .line 126
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 198
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const/4 v0, 0x1

    return v0

    .line 200
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasText()Z
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 247
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 249
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 318
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 319
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 320
    :cond_0
    return-object p0
.end method

.method public html()Ljava/lang/String;
    .locals 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 262
    .local v2, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v2    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public is(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 497
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 498
    .local v0, "children":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public last()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :goto_0
    return-object v0
.end method

.method public not(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 476
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    .line 477
    .local v0, "out":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->filterOut(Ljava/util/Collection;Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v1

    return-object v1
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 278
    .local v2, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->outerHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .end local v2    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4

    .line 506
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 507
    .local v0, "combo":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;>;"
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 508
    .local v2, "e":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parents()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 509
    .end local v2    # "e":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 510
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 331
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->prepend(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 332
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 333
    :cond_0
    return-object p0
.end method

.method public remove()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 449
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 450
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 451
    :cond_0
    return-object p0
.end method

.method public removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "attributeKey"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 150
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 151
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 152
    :cond_0
    return-object p0
.end method

.method public removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 174
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->removeClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 175
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 176
    :cond_0
    return-object p0
.end method

.method public select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 462
    invoke-static {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 305
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 306
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 307
    :cond_0
    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 238
    .local v2, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .end local v2    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 186
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->toggleClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 187
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 188
    :cond_0
    return-object p0
.end method

.method public traverse(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3
    .param p1, "nodeVisitor"    # Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;

    .line 536
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 537
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    .line 538
    .local v0, "traversor":Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 539
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 540
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 541
    :cond_0
    return-object p0
.end method

.method public unwrap()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 410
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->unwrap()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 411
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 412
    :cond_0
    return-object p0
.end method

.method public val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 223
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0

    .line 224
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    return-object p0
.end method

.method public val()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .line 385
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 387
    .local v1, "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->wrap(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 388
    .end local v1    # "element":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_0

    .line 389
    :cond_0
    return-object p0
.end method

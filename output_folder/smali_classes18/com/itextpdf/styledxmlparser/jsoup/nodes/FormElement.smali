.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
.source "FormElement.java"


# instance fields
.field private final elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 1
    .param p1, "tag"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "attributes"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 56
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    .line 67
    return-void
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;
    .locals 1
    .param p1, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 84
    return-object p0
.end method

.method public elements()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    return-object v0
.end method

.method public formData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 115
    .local v2, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->isFormSubmittable()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const-string v3, "disabled"

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "select"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 122
    const-string v5, "option[selected]"

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v5

    .line 123
    .local v5, "options":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    const/4 v6, 0x0

    .line 124
    .local v6, "set":Z
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 125
    .local v8, "option":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v6, 0x1

    .line 127
    .end local v8    # "option":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    goto :goto_1

    .line 128
    :cond_3
    if-nez v6, :cond_4

    .line 129
    const-string v7, "option"

    invoke-virtual {v2, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->select(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->first()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v7

    .line 130
    .local v7, "option":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    if-eqz v7, :cond_4

    .line 131
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v5    # "options":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .end local v6    # "set":Z
    .end local v7    # "option":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_4
    goto :goto_4

    :cond_5
    const-string v5, "checkbox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "radio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 140
    :cond_6
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 135
    :cond_7
    :goto_2
    const-string v5, "checked"

    invoke-virtual {v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 136
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->val()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    const-string v5, "on"

    .line 137
    .local v5, "val":Ljava/lang/String;
    :goto_3
    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v2    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_9
    :goto_4
    goto/16 :goto_0

    .line 143
    :cond_a
    return-object v0
.end method

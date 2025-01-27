.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsOnlyOfType;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 8
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 620
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 621
    .local v0, "p":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 623
    :cond_0
    const/4 v2, 0x0

    .line 624
    .local v2, "pos":I
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v3

    .line 625
    .local v3, "family":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 626
    .local v5, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 627
    .end local v5    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_1
    goto :goto_0

    .line 628
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 621
    .end local v2    # "pos":I
    .end local v3    # "family":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 632
    const-string v0, ":only-of-type"

    return-object v0
.end method

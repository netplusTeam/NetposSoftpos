.class public abstract Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;
.super Ljava/lang/Object;
.source "AbstractCssSelector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# instance fields
.field protected selectorItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;->selectorItems:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public calculateSpecificity()I
    .locals 4

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "specificity":I
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 79
    .local v2, "item":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    invoke-interface {v2}, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;->getSpecificity()I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    .end local v2    # "item":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    goto :goto_0

    .line 81
    :cond_0
    return v0
.end method

.method public getSelectorItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;->selectorItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/AbstractCssSelector;->selectorItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 91
    .local v2, "item":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v2    # "item":Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

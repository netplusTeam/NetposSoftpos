.class final Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "And"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;-><init>(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method varargs constructor <init>([Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 1
    .param p1, "evaluators"    # [Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 90
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    .line 91
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;->num:I

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 97
    .local v1, "s":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    return v2

    .line 95
    .end local v1    # "s":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;->evaluators:Ljava/util/ArrayList;

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

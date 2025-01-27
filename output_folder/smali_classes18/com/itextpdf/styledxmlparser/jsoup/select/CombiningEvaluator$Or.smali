.class final Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Or"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;-><init>()V

    .line 125
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;>;"
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;-><init>()V

    .line 116
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->num:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;

    invoke-direct {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->updateNumEvaluators()V

    .line 121
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 1
    .param p1, "e"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 128
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->updateNumEvaluators()V

    .line 130
    return-void
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->num:I

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 136
    .local v1, "s":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    return v2

    .line 134
    .end local v1    # "s":Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":or{0}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

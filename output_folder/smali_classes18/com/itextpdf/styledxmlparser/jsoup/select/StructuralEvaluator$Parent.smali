.class Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "evaluator"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 96
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 98
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 101
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 106
    .local v1, "parent":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    invoke-virtual {v2, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    if-ne v1, p1, :cond_2

    .line 109
    nop

    .line 112
    return v0

    .line 110
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/StructuralEvaluator$Parent;->evaluator:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":parent{0}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

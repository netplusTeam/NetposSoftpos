.class abstract Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$Or;,
        Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator$And;
    }
.end annotation


# instance fields
.field final evaluators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field num:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->num:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;>;"
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->updateNumEvaluators()V

    .line 69
    return-void
.end method


# virtual methods
.method replaceRightMostEvaluator(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 2
    .param p1, "replacement"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 76
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->num:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method rightMostEvaluator()Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .locals 2

    .line 72
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->num:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method updateNumEvaluators()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/CombiningEvaluator;->num:I

    .line 82
    return-void
.end method

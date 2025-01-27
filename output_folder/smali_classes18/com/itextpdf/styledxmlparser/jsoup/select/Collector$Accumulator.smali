.class Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accumulator"
.end annotation


# instance fields
.field private final elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

.field private final eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

.field private final root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "elements"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .param p3, "eval"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 77
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    .line 78
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    .line 79
    return-void
.end method


# virtual methods
.method public head(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 82
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 84
    .local v0, "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->eval:Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->root:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;->matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;->elements:Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v0    # "el":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :cond_0
    return-void
.end method

.method public tail(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 91
    return-void
.end method

.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 3
    .param p0, "eval"    # Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 65
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 66
    .local v0, "elements":Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;

    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;

    invoke-direct {v2, p1, v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector$Accumulator;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeTraversor;->traverse(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    .line 67
    return-object v0
.end method

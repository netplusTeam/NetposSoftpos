.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexLessThan"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 356
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;-><init>(I)V

    .line 357
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 361
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;->index:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 366
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexLessThan;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":lt({0})"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

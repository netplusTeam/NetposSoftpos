.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexEquals"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .line 396
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEvaluator;-><init>(I)V

    .line 397
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 401
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;->index:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 406
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IndexEquals;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":eq({0})"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

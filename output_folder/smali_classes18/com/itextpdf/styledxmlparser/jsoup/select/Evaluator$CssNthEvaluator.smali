.class public abstract Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CssNthEvaluator"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "b"    # I

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    .line 457
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 451
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 452
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 453
    iput p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 454
    return-void
.end method


# virtual methods
.method protected abstract calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I
.end method

.method protected abstract getPseudoClass()Ljava/lang/String;
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 7
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 461
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 462
    .local v0, "p":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->calculatePosition(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result v2

    .line 465
    .local v2, "pos":I
    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-ne v2, v3, :cond_1

    move v1, v4

    :cond_1
    return v1

    .line 467
    :cond_2
    iget v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    sub-int v6, v2, v5

    mul-int/2addr v6, v3

    if-ltz v6, :cond_3

    sub-int v5, v2, v5

    rem-int/2addr v5, v3

    if-nez v5, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 462
    .end local v2    # "pos":I
    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 472
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 473
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":{0}({1})"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 474
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-nez v0, :cond_1

    .line 475
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":{0}({1}n)"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 476
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":{0}({1}n{2,number,+#;-#})"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

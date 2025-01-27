.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsLastChild;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsLastChild"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 417
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 418
    .local v0, "p":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->children()Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 423
    const-string v0, ":last-child"

    return-object v0
.end method

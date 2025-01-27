.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsEmpty;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 639
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 641
    .local v2, "n":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Comment;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/XmlDeclaration;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    .line 642
    .end local v2    # "n":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;
    :cond_0
    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 647
    const-string v0, ":empty"

    return-object v0
.end method

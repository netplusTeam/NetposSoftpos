.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$IsRoot;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsRoot"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 2
    .param p1, "root"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .param p2, "element"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 596
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->child(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 597
    .local v0, "r":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    :goto_0
    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 601
    const-string v0, ":root"

    return-object v0
.end method

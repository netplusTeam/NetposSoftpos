.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthChildSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;
.source "CssPseudoClassNthChildSelectorItem.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "arguments"    # Ljava/lang/String;

    .line 50
    const-string v0, "nth-child"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

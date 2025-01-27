.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysNotApplySelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassSelectorItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlwaysNotApplySelectorItem"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pseudoClass"    # Ljava/lang/String;
    .param p2, "arguments"    # Ljava/lang/String;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 194
    const/4 v0, 0x0

    return v0
.end method

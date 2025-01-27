.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;
.source "CssPseudoClassLastOfTypeSelectorItem.java"


# static fields
.field private static final instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    const-string v0, "last-of-type"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;
    .locals 1

    .line 60
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 4
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 65
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;->getAllSiblingsOfNodeType(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 66
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/node/INode;>;"
    :cond_2
    :goto_0
    return v1
.end method

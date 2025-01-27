.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;
.super Ljava/lang/Object;
.source "CssPageTypeSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private pageTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageTypeName"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 71
    const/high16 v0, 0x100000

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 79
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->getPageTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

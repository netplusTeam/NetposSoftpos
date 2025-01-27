.class public Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;
.super Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.source "PageMarginBoxContextNode.java"


# static fields
.field public static final PAGE_MARGIN_BOX_TAG:Ljava/lang/String; = "_064ef03_page-margin-box"


# instance fields
.field private containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field private marginBoxName:Ljava/lang/String;

.field private pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)V
    .locals 2
    .param p1, "parentNode"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "marginBoxName"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 71
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->marginBoxName:Ljava/lang/String;

    .line 72
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page-margin-box context node shall have a page context node as parent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContainingBlockForMarginBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getMarginBoxName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->marginBoxName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageMarginBoxRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public setContainingBlockForMarginBox(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "containingBlockForMarginBox"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 109
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 110
    return-void
.end method

.method public setPageMarginBoxRectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0
    .param p1, "pageMarginBoxRectangle"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 91
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    .line 92
    return-void
.end method

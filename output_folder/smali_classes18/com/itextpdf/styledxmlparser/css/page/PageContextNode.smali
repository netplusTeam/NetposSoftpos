.class public Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
.super Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.source "PageContextNode.java"


# instance fields
.field private pageClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 1
    .param p1, "parentNode"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public addPageClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
    .locals 2
    .param p1, "pageClass"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public getPageClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageTypeName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setPageTypeName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
    .locals 0
    .param p1, "pageTypeName"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageTypeName:Ljava/lang/String;

    .line 108
    return-object p0
.end method

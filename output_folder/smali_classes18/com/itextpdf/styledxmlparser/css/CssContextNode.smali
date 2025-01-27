.class public abstract Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.super Ljava/lang/Object;
.source "CssContextNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/INode;
.implements Lcom/itextpdf/styledxmlparser/node/IStylesContainer;


# instance fields
.field private childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation
.end field

.field private parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

.field private styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 1
    .param p1, "parentNode"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->childNodes:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

    .line 75
    return-void
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 1
    .param p1, "node"    # Lcom/itextpdf/styledxmlparser/node/INode;

    .line 91
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public childNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->childNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->styles:Ljava/util/Map;

    return-object v0
.end method

.method public parentNode()Lcom/itextpdf/styledxmlparser/node/INode;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->parentNode:Lcom/itextpdf/styledxmlparser/node/INode;

    return-object v0
.end method

.method public setStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "stringStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/CssContextNode;->styles:Ljava/util/Map;

    .line 108
    return-void
.end method

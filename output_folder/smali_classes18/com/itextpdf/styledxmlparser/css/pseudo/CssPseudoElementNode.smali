.class public Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;
.super Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.source "CssPseudoElementNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/IElementNode;
.implements Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$AttributesStub;
    }
.end annotation


# instance fields
.field private pseudoElementName:Ljava/lang/String;

.field private pseudoElementTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)V
    .locals 1
    .param p1, "parentNode"    # Lcom/itextpdf/styledxmlparser/node/INode;
    .param p2, "pseudoElementName"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 78
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->pseudoElementName:Ljava/lang/String;

    .line 79
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementUtil;->createPseudoElementTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->pseudoElementTagName:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public addAdditionalHtmlStyles(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAdditionalHtmlStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;
    .locals 2

    .line 104
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$AttributesStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$AttributesStub;-><init>(Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode$1;)V

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPseudoElementName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->pseudoElementName:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->pseudoElementTagName:Ljava/lang/String;

    return-object v0
.end method

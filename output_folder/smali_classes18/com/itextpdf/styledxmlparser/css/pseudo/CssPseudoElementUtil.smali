.class public Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementUtil;
.super Ljava/lang/Object;
.source "CssPseudoElementUtil.java"


# static fields
.field private static final TAG_NAME_PREFIX:Ljava/lang/String; = "pseudo-element::"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPseudoElementTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pseudoElementName"    # Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pseudo-element::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBeforeAfterElements(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 2
    .param p0, "node"    # Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 75
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pseudo-element::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

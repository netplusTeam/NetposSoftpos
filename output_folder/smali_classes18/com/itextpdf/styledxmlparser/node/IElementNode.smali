.class public interface abstract Lcom/itextpdf/styledxmlparser/node/IElementNode;
.super Ljava/lang/Object;
.source "IElementNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/INode;
.implements Lcom/itextpdf/styledxmlparser/node/IStylesContainer;


# virtual methods
.method public abstract addAdditionalHtmlStyles(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAdditionalHtmlStyles()Ljava/util/List;
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
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

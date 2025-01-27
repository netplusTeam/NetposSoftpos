.class public interface abstract Lcom/itextpdf/styledxmlparser/node/INode;
.super Ljava/lang/Object;
.source "INode.java"


# virtual methods
.method public abstract addChild(Lcom/itextpdf/styledxmlparser/node/INode;)V
.end method

.method public abstract childNodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parentNode()Lcom/itextpdf/styledxmlparser/node/INode;
.end method

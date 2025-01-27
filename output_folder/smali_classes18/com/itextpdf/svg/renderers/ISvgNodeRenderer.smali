.class public interface abstract Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.super Ljava/lang/Object;
.source "ISvgNodeRenderer.java"


# virtual methods
.method public abstract createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.end method

.method public abstract draw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeMapCopy()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParent()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAttributesAndStyles(Ljava/util/Map;)V
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

.method public abstract setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V
.end method

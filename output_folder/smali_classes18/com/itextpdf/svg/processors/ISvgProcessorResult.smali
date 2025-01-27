.class public interface abstract Lcom/itextpdf/svg/processors/ISvgProcessorResult;
.super Ljava/lang/Object;
.source "ISvgProcessorResult.java"


# virtual methods
.method public abstract getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
.end method

.method public abstract getNamedObjects()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
.end method

.method public abstract getTempFonts()Lcom/itextpdf/layout/font/FontSet;
.end method

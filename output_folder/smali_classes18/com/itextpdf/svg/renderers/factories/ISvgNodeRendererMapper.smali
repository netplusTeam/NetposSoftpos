.class public interface abstract Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererMapper;
.super Ljava/lang/Object;
.source "ISvgNodeRendererMapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getIgnoredTags()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;>;"
        }
    .end annotation
.end method

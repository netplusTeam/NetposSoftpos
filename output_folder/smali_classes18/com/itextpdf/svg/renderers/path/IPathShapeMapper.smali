.class public interface abstract Lcom/itextpdf/svg/renderers/path/IPathShapeMapper;
.super Ljava/lang/Object;
.source "IPathShapeMapper.java"


# virtual methods
.method public abstract getArgumentCount()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation
.end method

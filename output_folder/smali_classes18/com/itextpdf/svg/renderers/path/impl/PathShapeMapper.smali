.class public Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;
.super Ljava/lang/Object;
.source "PathShapeMapper.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/IPathShapeMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentCount()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "V"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "H"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Z"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v2, "M"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "C"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "S"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "Q"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "T"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "A"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method

.method public getMapping()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/path/IPathShape;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/svg/renderers/path/IPathShape;>;"
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/LineTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;-><init>()V

    const-string v2, "L"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/LineTo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;-><init>(Z)V

    const-string v3, "l"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;-><init>()V

    const-string v3, "V"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;-><init>(Z)V

    const-string/jumbo v3, "v"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/HorizontalLineTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/HorizontalLineTo;-><init>()V

    const-string v3, "H"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/HorizontalLineTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/HorizontalLineTo;-><init>(Z)V

    const-string v3, "h"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;-><init>()V

    const-string v3, "Z"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;

    invoke-direct {v3}, Lcom/itextpdf/svg/renderers/path/impl/ClosePath;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;-><init>()V

    const-string v3, "M"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/MoveTo;-><init>(Z)V

    const-string v3, "m"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>()V

    const-string v3, "C"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/CurveTo;-><init>(Z)V

    const-string v3, "c"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;-><init>()V

    const-string v3, "S"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/SmoothSCurveTo;-><init>(Z)V

    const-string/jumbo v3, "s"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>()V

    const-string v3, "Q"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticCurveTo;-><init>(Z)V

    const-string/jumbo v3, "q"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;-><init>()V

    const-string v3, "T"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/QuadraticSmoothCurveTo;-><init>(Z)V

    const-string/jumbo v3, "t"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;

    invoke-direct {v1}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;-><init>()V

    const-string v3, "A"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;

    invoke-direct {v1, v2}, Lcom/itextpdf/svg/renderers/path/impl/EllipticalCurveTo;-><init>(Z)V

    const-string v2, "a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

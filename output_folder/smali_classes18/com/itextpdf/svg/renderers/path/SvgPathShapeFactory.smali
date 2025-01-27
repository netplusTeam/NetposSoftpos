.class public Lcom/itextpdf/svg/renderers/path/SvgPathShapeFactory;
.super Ljava/lang/Object;
.source "SvgPathShapeFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static createPathShape(Ljava/lang/String;)Lcom/itextpdf/svg/renderers/path/IPathShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;->getMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/path/IPathShape;

    return-object v0
.end method

.method public static getArgumentCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;-><init>()V

    invoke-virtual {v0}, Lcom/itextpdf/svg/renderers/path/impl/PathShapeMapper;->getArgumentCount()Ljava/util/Map;

    move-result-object v0

    .line 75
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 78
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

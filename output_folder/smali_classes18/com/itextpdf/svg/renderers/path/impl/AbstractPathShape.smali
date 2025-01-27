.class public abstract Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;
.super Ljava/lang/Object;
.source "AbstractPathShape.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/IPathShape;


# instance fields
.field protected coordinates:[Ljava/lang/String;

.field protected final copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected relative:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .line 76
    new-instance v0, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;-><init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZLcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;)V
    .locals 0
    .param p1, "relative"    # Z
    .param p2, "copier"    # Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->relative:Z

    .line 81
    iput-object p2, p0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->copier:Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;

    .line 82
    return-void
.end method


# virtual methods
.method protected createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;
    .locals 5
    .param p1, "coordX"    # Ljava/lang/String;
    .param p2, "coordY"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v0
.end method

.method public getEndingPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->coordinates:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->createPoint(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPathShapeRectangle(Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 4
    .param p1, "lastPoint"    # Lcom/itextpdf/kernel/geom/Point;

    .line 105
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 106
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->getEndingPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->convertPxToPts(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 105
    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/itextpdf/svg/renderers/path/impl/AbstractPathShape;->relative:Z

    return v0
.end method

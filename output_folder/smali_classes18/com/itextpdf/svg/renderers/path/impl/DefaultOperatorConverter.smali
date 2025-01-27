.class Lcom/itextpdf/svg/renderers/path/impl/DefaultOperatorConverter;
.super Ljava/lang/Object;
.source "IOperatorConverter.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;
    .locals 1
    .param p1, "relativeCoordinates"    # [Ljava/lang/String;
    .param p2, "initialPoint"    # [D

    .line 88
    invoke-static {p1, p2}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->makeRelativeOperatorCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

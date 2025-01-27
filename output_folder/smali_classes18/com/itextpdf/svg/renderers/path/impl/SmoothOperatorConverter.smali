.class Lcom/itextpdf/svg/renderers/path/impl/SmoothOperatorConverter;
.super Ljava/lang/Object;
.source "IOperatorConverter.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/path/impl/IOperatorConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;
    .locals 3
    .param p1, "relativeCoordinates"    # [Ljava/lang/String;
    .param p2, "initialPoint"    # [D

    .line 71
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {p1, p2}, Lcom/itextpdf/svg/utils/SvgCoordinateUtils;->makeRelativeOperatorCoordinatesAbsolute([Ljava/lang/String;[D)[Ljava/lang/String;

    move-result-object p1

    .line 76
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-object v0
.end method

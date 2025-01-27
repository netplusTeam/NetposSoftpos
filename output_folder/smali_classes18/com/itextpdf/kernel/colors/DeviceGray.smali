.class public Lcom/itextpdf/kernel/colors/DeviceGray;
.super Lcom/itextpdf/kernel/colors/Color;
.source "DeviceGray.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

.field public static final GRAY:Lcom/itextpdf/kernel/colors/DeviceGray;

.field public static final WHITE:Lcom/itextpdf/kernel/colors/DeviceGray;

.field private static final serialVersionUID:J = 0x734afc00e1f22252L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->WHITE:Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->GRAY:Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 67
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    .line 92
    return-void
.end method

.method public constructor <init>(F)V
    .locals 6
    .param p1, "value"    # F

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    cmpl-float v3, p1, v4

    if-lez v3, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/4 v5, 0x0

    aput v3, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 81
    cmpl-float v0, p1, v2

    if-gtz v0, :cond_2

    cmpg-float v0, p1, v4

    if-gez v0, :cond_3

    .line 82
    :cond_2
    const-class v0, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 83
    .local v0, "LOGGER":Lorg/slf4j/Logger;
    const-string v1, "Some of colorant intensities are invalid: they are bigger than 1 or less than 0. We will force them to become 1 or 0 respectively."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 85
    .end local v0    # "LOGGER":Lorg/slf4j/Logger;
    :cond_3
    return-void
.end method

.method public static makeDarker(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;
    .locals 4
    .param p0, "grayColor"    # Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceGray;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 119
    .local v0, "v":F
    const v1, 0x3ea8f5c3    # 0.33f

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 121
    .local v1, "multiplier":F
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceGray;

    mul-float v3, v0, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v2
.end method

.method public static makeLighter(Lcom/itextpdf/kernel/colors/DeviceGray;)Lcom/itextpdf/kernel/colors/DeviceGray;
    .locals 4
    .param p0, "grayColor"    # Lcom/itextpdf/kernel/colors/DeviceGray;

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceGray;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 103
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1

    .line 106
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v0

    .line 108
    .local v1, "multiplier":F
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceGray;

    mul-float v3, v0, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v2
.end method

.class public Lcom/itextpdf/kernel/colors/DeviceCmyk;
.super Lcom/itextpdf/kernel/colors/Color;
.source "DeviceCmyk.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/kernel/colors/DeviceCmyk;

.field public static final CYAN:Lcom/itextpdf/kernel/colors/DeviceCmyk;

.field public static final MAGENTA:Lcom/itextpdf/kernel/colors/DeviceCmyk;

.field public static final YELLOW:Lcom/itextpdf/kernel/colors/DeviceCmyk;

.field private static final serialVersionUID:J = 0x4bdcf92be2402cc2L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(IIII)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;->CYAN:Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(IIII)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;->MAGENTA:Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 67
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(IIII)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;->YELLOW:Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 71
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(IIII)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;->BLACK:Lcom/itextpdf/kernel/colors/DeviceCmyk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    .line 80
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "c"    # F
    .param p2, "m"    # F
    .param p3, "y"    # F
    .param p4, "k"    # F

    .line 109
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;-><init>()V

    const/4 v1, 0x4

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

    const/4 v3, 0x1

    cmpl-float v5, p2, v2

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    cmpl-float v5, p2, v4

    if-lez v5, :cond_3

    move v5, p2

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    aput v5, v1, v3

    const/4 v3, 0x2

    cmpl-float v5, p3, v2

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    cmpl-float v5, p3, v4

    if-lez v5, :cond_5

    move v5, p3

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    aput v5, v1, v3

    const/4 v3, 0x3

    cmpl-float v5, p4, v2

    if-lez v5, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    cmpl-float v5, p4, v4

    if-lez v5, :cond_7

    move v5, p4

    goto :goto_3

    :cond_7
    move v5, v4

    :goto_3
    aput v5, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 115
    cmpl-float v0, p1, v2

    if-gtz v0, :cond_8

    cmpg-float v0, p1, v4

    if-ltz v0, :cond_8

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_8

    cmpg-float v0, p2, v4

    if-ltz v0, :cond_8

    cmpl-float v0, p3, v2

    if-gtz v0, :cond_8

    cmpg-float v0, p3, v4

    if-ltz v0, :cond_8

    cmpl-float v0, p4, v2

    if-gtz v0, :cond_8

    cmpg-float v0, p4, v4

    if-gez v0, :cond_9

    .line 116
    :cond_8
    const-class v0, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 117
    .local v0, "LOGGER":Lorg/slf4j/Logger;
    const-string v1, "Some of colorant intensities are invalid: they are bigger than 1 or less than 0. We will force them to become 1 or 0 respectively."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 119
    .end local v0    # "LOGGER":Lorg/slf4j/Logger;
    :cond_9
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5
    .param p1, "c"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I
    .param p4, "k"    # I

    .line 94
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    int-to-float v3, p3

    div-float/2addr v3, v1

    int-to-float v4, p4

    div-float/2addr v4, v1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    .line 95
    return-void
.end method

.method public static makeDarker(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .locals 3
    .param p0, "cmykColor"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 140
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->convertCmykToRgb(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v0

    .line 141
    .local v0, "rgbEquivalent":Lcom/itextpdf/kernel/colors/DeviceRgb;
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v1

    .line 142
    .local v1, "darkerRgb":Lcom/itextpdf/kernel/colors/DeviceRgb;
    invoke-static {v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->convertRgbToCmyk(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object v2

    return-object v2
.end method

.method public static makeLighter(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .locals 3
    .param p0, "cmykColor"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 128
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->convertCmykToRgb(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v0

    .line 129
    .local v0, "rgbEquivalent":Lcom/itextpdf/kernel/colors/DeviceRgb;
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->makeLighter(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;

    move-result-object v1

    .line 130
    .local v1, "lighterRgb":Lcom/itextpdf/kernel/colors/DeviceRgb;
    invoke-static {v1}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->convertRgbToCmyk(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceCmyk;

    move-result-object v2

    return-object v2
.end method

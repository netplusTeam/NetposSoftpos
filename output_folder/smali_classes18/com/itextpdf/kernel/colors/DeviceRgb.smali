.class public Lcom/itextpdf/kernel/colors/DeviceRgb;
.super Lcom/itextpdf/kernel/colors/Color;
.source "DeviceRgb.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/kernel/colors/Color;

.field public static final BLUE:Lcom/itextpdf/kernel/colors/Color;

.field public static final GREEN:Lcom/itextpdf/kernel/colors/Color;

.field public static final RED:Lcom/itextpdf/kernel/colors/Color;

.field public static final WHITE:Lcom/itextpdf/kernel/colors/Color;

.field private static final serialVersionUID:J = 0x63897c1fedabfedeL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v2, 0xff

    invoke-direct {v0, v2, v2, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v2, v1, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->RED:Lcom/itextpdf/kernel/colors/Color;

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v1, v2, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->GREEN:Lcom/itextpdf/kernel/colors/Color;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v0, v1, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    sput-object v0, Lcom/itextpdf/kernel/colors/DeviceRgb;->BLUE:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    .line 140
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 108
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    const/4 v1, 0x3

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

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    .line 113
    cmpl-float v0, p1, v2

    if-gtz v0, :cond_6

    cmpg-float v0, p1, v4

    if-ltz v0, :cond_6

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_6

    cmpg-float v0, p2, v4

    if-ltz v0, :cond_6

    cmpl-float v0, p3, v2

    if-gtz v0, :cond_6

    cmpg-float v0, p3, v4

    if-gez v0, :cond_7

    .line 114
    :cond_6
    const-class v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 115
    .local v0, "LOGGER":Lorg/slf4j/Logger;
    const-string v1, "Some of colorant intensities are invalid: they are bigger than 1 or less than 0. We will force them to become 1 or 0 respectively."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 117
    .end local v0    # "LOGGER":Lorg/slf4j/Logger;
    :cond_7
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 94
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    int-to-float v3, p3

    div-float/2addr v3, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 4
    .param p1, "color"    # Ljava/awt/Color;

    .line 128
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    .line 129
    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 130
    const-class v0, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 131
    .local v0, "LOGGER":Lorg/slf4j/Logger;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Alpha channel {0} was ignored during color creation. Note that opacity can be achieved in some places by using \'setOpacity\' method or \'TransparentColor\' class"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 133
    .end local v0    # "LOGGER":Lorg/slf4j/Logger;
    :cond_0
    return-void
.end method

.method public static makeDarker(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 6
    .param p0, "rgbColor"    # Lcom/itextpdf/kernel/colors/DeviceRgb;

    .line 174
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 175
    .local v0, "r":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 176
    .local v1, "g":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 178
    .local v2, "b":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 180
    .local v3, "v":F
    const v4, 0x3ea8f5c3    # 0.33f

    sub-float v4, v3, v4

    div-float/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 182
    .local v4, "multiplier":F
    mul-float/2addr v0, v4

    .line 183
    mul-float/2addr v1, v4

    .line 184
    mul-float/2addr v2, v4

    .line 185
    new-instance v5, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v5, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v5
.end method

.method public static makeLighter(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 6
    .param p0, "rgbColor"    # Lcom/itextpdf/kernel/colors/DeviceRgb;

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 150
    .local v0, "r":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 151
    .local v1, "g":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 153
    .local v2, "b":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 155
    .local v3, "v":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    .line 156
    new-instance v4, Lcom/itextpdf/kernel/colors/DeviceRgb;

    const/16 v5, 0x54

    invoke-direct {v4, v5, v5, v5}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    return-object v4

    .line 159
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ea8f5c3    # 0.33f

    add-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    .line 161
    .local v4, "multiplier":F
    mul-float/2addr v0, v4

    .line 162
    mul-float/2addr v1, v4

    .line 163
    mul-float/2addr v2, v4

    .line 164
    new-instance v5, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v5, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v5
.end method

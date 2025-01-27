.class public Lcom/itextpdf/kernel/colors/Color;
.super Ljava/lang/Object;
.source "Color.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c253f6384c86106L


# instance fields
.field protected colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

.field protected colorValue:[F


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V
    .locals 1
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "colorValue"    # [F

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 81
    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    goto :goto_0

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    .line 85
    :goto_0
    return-void
.end method

.method public static convertCmykToRgb(Lcom/itextpdf/kernel/colors/DeviceCmyk;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 8
    .param p0, "cmykColor"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;

    .line 167
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 168
    .local v0, "cyanComp":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float v2, v1, v2

    .line 169
    .local v2, "magentaComp":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float v3, v1, v3

    .line 170
    .local v3, "yellowComp":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceCmyk;->getColorValue()[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    sub-float/2addr v1, v4

    .line 172
    .local v1, "blackComp":F
    mul-float v4, v0, v1

    .line 173
    .local v4, "r":F
    mul-float v5, v2, v1

    .line 174
    .local v5, "g":F
    mul-float v6, v3, v1

    .line 175
    .local v6, "b":F
    new-instance v7, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v7, v4, v5, v6}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v7
.end method

.method public static convertRgbToCmyk(Lcom/itextpdf/kernel/colors/DeviceRgb;)Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .locals 8
    .param p0, "rgbColor"    # Lcom/itextpdf/kernel/colors/DeviceRgb;

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 187
    .local v0, "redComp":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 188
    .local v1, "greenComp":F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/DeviceRgb;->getColorValue()[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 190
    .local v2, "blueComp":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 191
    .local v3, "k":F
    sub-float v5, v4, v0

    sub-float/2addr v5, v3

    sub-float v6, v4, v3

    div-float/2addr v5, v6

    .line 192
    .local v5, "c":F
    sub-float v6, v4, v1

    sub-float/2addr v6, v3

    sub-float v7, v4, v3

    div-float/2addr v6, v7

    .line 193
    .local v6, "m":F
    sub-float v7, v4, v2

    sub-float/2addr v7, v3

    sub-float/2addr v4, v3

    div-float/2addr v7, v4

    .line 194
    .local v7, "y":F
    new-instance v4, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object v4
.end method

.method public static makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1
    .param p0, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/colors/Color;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public static makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;
    .locals 7
    .param p0, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p1, "colorValue"    # [F

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "c":Lcom/itextpdf/kernel/colors/Color;
    const/4 v1, 0x0

    .line 109
    .local v1, "unknownColorSpace":Z
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 110
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v2, :cond_1

    .line 111
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceGray;

    if-eqz p1, :cond_0

    aget v3, p1, v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-direct {v2}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>()V

    :goto_0
    move-object v0, v2

    goto/16 :goto_a

    .line 112
    :cond_1
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 113
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    if-eqz p1, :cond_2

    aget v3, p1, v3

    aget v5, p1, v5

    aget v4, p1, v4

    invoke-direct {v2, v3, v5, v4}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    goto :goto_1

    :cond_2
    invoke-direct {v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>()V

    :goto_1
    move-object v0, v2

    goto/16 :goto_a

    .line 114
    :cond_3
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz v2, :cond_5

    .line 115
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    if-eqz p1, :cond_4

    aget v3, p1, v3

    aget v5, p1, v5

    aget v4, p1, v4

    const/4 v6, 0x3

    aget v6, p1, v6

    invoke-direct {v2, v3, v5, v4, v6}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    goto :goto_2

    :cond_4
    invoke-direct {v2}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>()V

    :goto_2
    move-object v0, v2

    goto/16 :goto_a

    .line 117
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_a

    .line 119
    :cond_6
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs;

    if-eqz v2, :cond_f

    .line 120
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    if-eqz v2, :cond_8

    .line 121
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    .line 122
    .local v2, "calGray":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;
    new-instance v4, Lcom/itextpdf/kernel/colors/CalGray;

    if-eqz p1, :cond_7

    aget v3, p1, v3

    invoke-direct {v4, v2, v3}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;F)V

    goto :goto_3

    :cond_7
    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;)V

    :goto_3
    move-object v0, v4

    .line 123
    .end local v2    # "calGray":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;
    goto/16 :goto_a

    :cond_8
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    if-eqz v2, :cond_a

    .line 124
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    .line 125
    .local v2, "calRgb":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;
    new-instance v3, Lcom/itextpdf/kernel/colors/CalRgb;

    if-eqz p1, :cond_9

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;[F)V

    goto :goto_4

    :cond_9
    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;)V

    :goto_4
    move-object v0, v3

    .line 126
    .end local v2    # "calRgb":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;
    goto/16 :goto_a

    :cond_a
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    if-eqz v2, :cond_c

    .line 127
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    .line 128
    .local v2, "iccBased":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;
    new-instance v3, Lcom/itextpdf/kernel/colors/IccBased;

    if-eqz p1, :cond_b

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    goto :goto_5

    :cond_b
    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;)V

    :goto_5
    move-object v0, v3

    .line 129
    .end local v2    # "iccBased":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;
    goto/16 :goto_a

    :cond_c
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    if-eqz v2, :cond_e

    .line 130
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    .line 131
    .local v2, "lab":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;
    new-instance v3, Lcom/itextpdf/kernel/colors/Lab;

    if-eqz p1, :cond_d

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;[F)V

    goto :goto_6

    :cond_d
    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;)V

    :goto_6
    move-object v0, v3

    .line 132
    .end local v2    # "lab":Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;
    goto :goto_a

    .line 133
    :cond_e
    const/4 v1, 0x1

    goto :goto_a

    .line 135
    :cond_f
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs;

    if-eqz v2, :cond_16

    .line 136
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    if-eqz v2, :cond_11

    .line 137
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    .line 138
    .local v2, "separation":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;
    new-instance v4, Lcom/itextpdf/kernel/colors/Separation;

    if-eqz p1, :cond_10

    aget v3, p1, v3

    invoke-direct {v4, v2, v3}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;F)V

    goto :goto_7

    :cond_10
    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;)V

    :goto_7
    move-object v0, v4

    .line 139
    .end local v2    # "separation":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;
    goto :goto_a

    :cond_11
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    if-eqz v2, :cond_13

    .line 141
    move-object v2, p0

    check-cast v2, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    .line 142
    .local v2, "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    new-instance v3, Lcom/itextpdf/kernel/colors/DeviceN;

    if-eqz p1, :cond_12

    invoke-direct {v3, v2, p1}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;[F)V

    goto :goto_8

    :cond_12
    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;)V

    :goto_8
    move-object v0, v3

    .line 143
    .end local v2    # "deviceN":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    goto :goto_a

    :cond_13
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v2, :cond_15

    .line 144
    new-instance v2, Lcom/itextpdf/kernel/colors/Indexed;

    if-eqz p1, :cond_14

    aget v3, p1, v3

    float-to-int v3, v3

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V

    goto :goto_9

    :cond_14
    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    :goto_9
    move-object v0, v2

    goto :goto_a

    .line 146
    :cond_15
    const/4 v1, 0x1

    goto :goto_a

    .line 148
    :cond_16
    instance-of v2, p0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v2, :cond_17

    .line 149
    new-instance v2, Lcom/itextpdf/kernel/colors/Color;

    invoke-direct {v2, p0, p1}, Lcom/itextpdf/kernel/colors/Color;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    move-object v0, v2

    goto :goto_a

    .line 151
    :cond_17
    const/4 v1, 0x1

    .line 153
    :goto_a
    if-nez v1, :cond_18

    .line 156
    return-object v0

    .line 154
    :cond_18
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Unknown color space."

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 249
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/colors/Color;

    .line 250
    .local v2, "color":Lcom/itextpdf/kernel/colors/Color;
    iget-object v3, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    iget-object v4, v2, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    if-nez v3, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    iget-object v4, v2, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    .line 251
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 250
    :goto_1
    return v0

    .line 247
    .end local v2    # "color":Lcom/itextpdf/kernel/colors/Color;
    :cond_4
    :goto_2
    return v1
.end method

.method public getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    return-object v0
.end method

.method public getColorValue()[F
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorSpace:Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 260
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 261
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public setColorValue([F)V
    .locals 2
    .param p1, "value"    # [F

    .line 231
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/Color;->colorValue:[F

    .line 235
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Incorrect number of components."

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

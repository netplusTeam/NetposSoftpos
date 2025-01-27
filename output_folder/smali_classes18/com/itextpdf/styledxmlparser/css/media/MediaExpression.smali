.class public Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
.super Ljava/lang/Object;
.source "MediaExpression.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:F = 12.0f


# instance fields
.field private feature:Ljava/lang/String;

.field private maxPrefix:Z

.field private minPrefix:Z

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    .line 93
    :cond_0
    const-string v0, "min-"

    .line 94
    .local v0, "minPref":Ljava/lang/String;
    const-string v1, "max-"

    .line 95
    .local v1, "maxPref":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    .line 96
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    .line 99
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    .line 100
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    .line 103
    :cond_2
    return-void
.end method

.method private static parseAbsoluteLength(Ljava/lang/String;)F
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 205
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssTypesValidationUtils;->isRelativeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseRelativeValue(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 209
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 6
    .param p1, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->feature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "scan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "color-index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "aspect-ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "monochrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 194
    return v3

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseResolution(Ljava/lang/String;)F

    move-result v0

    .line 185
    .local v0, "val":F
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    return v2

    .line 187
    :cond_2
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_4

    .line 188
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2

    .line 190
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getResolution()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2

    .line 174
    .end local v0    # "val":F
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 175
    .restart local v0    # "val":F
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_7

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    return v2

    .line 177
    :cond_7
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_9

    .line 178
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_8

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    return v2

    .line 180
    :cond_9
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_a

    goto :goto_7

    :cond_a
    move v2, v3

    :goto_7
    return v2

    .line 164
    .end local v0    # "val":F
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->parseAbsoluteLength(Ljava/lang/String;)F

    move-result v0

    .line 165
    .restart local v0    # "val":F
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v4, :cond_c

    .line 166
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_b

    goto :goto_8

    :cond_b
    move v2, v3

    :goto_8
    return v2

    .line 167
    :cond_c
    iget-boolean v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v4, :cond_e

    .line 168
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_d

    goto :goto_9

    :cond_d
    move v2, v3

    :goto_9
    return v2

    .line 170
    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_f

    goto :goto_a

    :cond_f
    move v2, v3

    :goto_a
    return v2

    .line 154
    .end local v0    # "val":F
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    .local v0, "val":Ljava/lang/Integer;
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_11

    .line 156
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v1, v4, :cond_10

    goto :goto_b

    :cond_10
    move v2, v3

    :goto_b
    return v2

    .line 157
    :cond_11
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_13

    .line 158
    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_12

    goto :goto_c

    :cond_12
    move v2, v3

    :goto_c
    return v2

    .line 160
    :cond_13
    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result v1

    if-lez v1, :cond_15

    goto :goto_d

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getMonochrome()I

    move-result v4

    if-ne v1, v4, :cond_15

    :goto_d
    goto :goto_e

    :cond_15
    move v2, v3

    :goto_e
    return v2

    .line 151
    .end local v0    # "val":Ljava/lang/Integer;
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 148
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getScan()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 144
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .restart local v0    # "val":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->isGrid()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    goto :goto_f

    :cond_18
    move v2, v3

    :goto_f
    return v2

    .line 134
    .end local v0    # "val":Ljava/lang/Integer;
    :pswitch_7
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseAspectRatio(Ljava/lang/String;)[I

    move-result-object v0

    .line 135
    .local v0, "aspectRatio":[I
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_1a

    .line 136
    if-eqz v0, :cond_19

    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v4, v0, v2

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v5

    mul-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_19

    goto :goto_10

    :cond_19
    move v2, v3

    :goto_10
    return v2

    .line 137
    :cond_1a
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_1c

    .line 138
    if-eqz v0, :cond_1b

    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v4, v0, v2

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v5

    mul-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1b

    goto :goto_11

    :cond_1b
    move v2, v3

    :goto_11
    return v2

    .line 140
    :cond_1c
    if-eqz v0, :cond_1d

    aget v1, v0, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    aget v4, v0, v2

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getWidth()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->compareFloats(FF)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_12

    :cond_1d
    move v2, v3

    :goto_12
    return v2

    .line 124
    .end local v0    # "aspectRatio":[I
    :pswitch_8
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    .local v0, "val":Ljava/lang/Integer;
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_1f

    .line 126
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v1, v4, :cond_1e

    goto :goto_13

    :cond_1e
    move v2, v3

    :goto_13
    return v2

    .line 127
    :cond_1f
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_21

    .line 128
    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_20

    goto :goto_14

    :cond_20
    move v2, v3

    :goto_14
    return v2

    .line 130
    :cond_21
    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_15

    :cond_22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getColorIndex()I

    move-result v4

    if-ne v1, v4, :cond_23

    :goto_15
    goto :goto_16

    :cond_23
    move v2, v3

    :goto_16
    return v2

    .line 114
    .end local v0    # "val":Ljava/lang/Integer;
    :pswitch_9
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/css/util/CssDimensionParsingUtils;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    .restart local v0    # "val":Ljava/lang/Integer;
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->minPrefix:Z

    if-eqz v1, :cond_25

    .line 116
    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v1, v4, :cond_24

    goto :goto_17

    :cond_24
    move v2, v3

    :goto_17
    return v2

    .line 117
    :cond_25
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->maxPrefix:Z

    if-eqz v1, :cond_27

    .line 118
    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_26

    goto :goto_18

    :cond_26
    move v2, v3

    :goto_18
    return v2

    .line 120
    :cond_27
    if-nez v0, :cond_28

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_19

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getBitsPerComponent()I

    move-result v4

    if-ne v1, v4, :cond_29

    :goto_19
    goto :goto_1a

    :cond_29
    move v2, v3

    :goto_1a
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x719ae8e3 -> :sswitch_9
        -0x5f5e8754 -> :sswitch_8
        -0x5c2d29aa -> :sswitch_7
        -0x55cd0a30 -> :sswitch_6
        -0x48c76ed9 -> :sswitch_5
        -0x6e9ea18 -> :sswitch_4
        0x308b46 -> :sswitch_3
        0x35c67d -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

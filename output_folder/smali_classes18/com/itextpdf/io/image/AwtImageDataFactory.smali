.class Lcom/itextpdf/io/image/AwtImageDataFactory;
.super Ljava/lang/Object;
.source "AwtImageDataFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;)Lcom/itextpdf/io/image/ImageData;
    .locals 1
    .param p0, "image"    # Ljava/awt/Image;
    .param p1, "color"    # Ljava/awt/Color;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/image/AwtImageDataFactory;->create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/awt/Image;Ljava/awt/Color;Z)Lcom/itextpdf/io/image/ImageData;
    .locals 24
    .param p0, "image"    # Ljava/awt/Image;
    .param p1, "color"    # Ljava/awt/Color;
    .param p2, "forceBW"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    move-object/from16 v8, p0

    instance-of v0, v8, Ljava/awt/image/BufferedImage;

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 70
    move-object v0, v8

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 71
    .local v0, "bi":Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getPixelSize()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 72
    const/4 v1, 0x1

    move v10, v1

    .end local p2    # "forceBW":Z
    .local v1, "forceBW":Z
    goto :goto_0

    .line 76
    .end local v0    # "bi":Ljava/awt/image/BufferedImage;
    .end local v1    # "forceBW":Z
    .restart local p2    # "forceBW":Z
    :cond_0
    move/from16 v10, p2

    .end local p2    # "forceBW":Z
    .local v10, "forceBW":Z
    :goto_0
    new-instance v0, Ljava/awt/image/PixelGrabber;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIIIZ)V

    .line 78
    .local v1, "pg":Ljava/awt/image/PixelGrabber;
    :try_start_0
    invoke-virtual {v1}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    invoke-virtual {v1}, Ljava/awt/image/PixelGrabber;->getStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_22

    .line 85
    invoke-virtual {v1}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v0

    .line 86
    .local v0, "w":I
    invoke-virtual {v1}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v11

    .line 87
    .local v11, "h":I
    invoke-virtual {v1}, Ljava/awt/image/PixelGrabber;->getPixels()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v12, v2

    check-cast v12, [I

    .line 88
    .local v12, "pixels":[I
    const/16 v5, 0xff

    if-eqz v10, :cond_12

    .line 89
    div-int/lit8 v6, v0, 0x8

    and-int/lit8 v7, v0, 0x7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    add-int v13, v6, v7

    .line 90
    .local v13, "byteWidth":I
    mul-int v6, v13, v11

    new-array v14, v6, [B

    .line 92
    .local v14, "pixelsByte":[B
    const/4 v6, 0x0

    .line 93
    .local v6, "index":I
    mul-int v15, v11, v0

    .line 94
    .local v15, "size":I
    const/4 v7, 0x1

    .line 95
    .local v7, "transColor":I
    if-eqz p1, :cond_3

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v17

    add-int v16, v16, v17

    .line 97
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v17

    add-int v4, v16, v17

    const/16 v2, 0x180

    if-ge v4, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, v9

    :goto_2
    move v7, v2

    .line 99
    :cond_3
    const/4 v2, 0x0

    .line 100
    .local v2, "transparency":[I
    const/16 v4, 0x80

    .line 101
    .local v4, "cbyte":I
    const/16 v17, 0x0

    .line 102
    .local v17, "wMarker":I
    const/16 v18, 0x0

    .line 103
    .local v18, "currByte":I
    if-eqz p1, :cond_a

    .line 104
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "j":I
    :goto_3
    if-ge v9, v15, :cond_9

    .line 105
    aget v16, v12, v9

    shr-int/lit8 v3, v16, 0x18

    and-int/2addr v3, v5

    .line 106
    .local v3, "alpha":I
    const/16 v5, 0xfa

    if-ge v3, v5, :cond_4

    .line 107
    const/4 v5, 0x1

    if-ne v7, v5, :cond_5

    .line 108
    or-int v18, v18, v4

    move/from16 v5, v18

    goto :goto_4

    .line 110
    :cond_4
    aget v5, v12, v9

    and-int/lit16 v5, v5, 0x888

    if-eqz v5, :cond_5

    .line 111
    or-int v18, v18, v4

    move/from16 v5, v18

    goto :goto_4

    .line 113
    :cond_5
    move/from16 v5, v18

    .end local v18    # "currByte":I
    .local v5, "currByte":I
    :goto_4
    shr-int/lit8 v4, v4, 0x1

    .line 114
    if-eqz v4, :cond_7

    move-object/from16 v20, v1

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .local v20, "pg":Ljava/awt/image/PixelGrabber;
    add-int/lit8 v1, v17, 0x1

    if-lt v1, v0, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v18, v5

    goto :goto_6

    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v1    # "pg":Ljava/awt/image/PixelGrabber;
    :cond_7
    move-object/from16 v20, v1

    .line 115
    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    :goto_5
    add-int/lit8 v1, v6, 0x1

    move/from16 p2, v1

    .end local v6    # "index":I
    .local p2, "index":I
    int-to-byte v1, v5

    aput-byte v1, v14, v6

    .line 116
    const/16 v1, 0x80

    .line 117
    .end local v4    # "cbyte":I
    .local v1, "cbyte":I
    const/4 v4, 0x0

    move/from16 v6, p2

    move/from16 v18, v4

    move v4, v1

    .line 119
    .end local v1    # "cbyte":I
    .end local v5    # "currByte":I
    .end local p2    # "index":I
    .restart local v4    # "cbyte":I
    .restart local v6    # "index":I
    .restart local v18    # "currByte":I
    :goto_6
    add-int/lit8 v1, v17, 0x1

    .line 120
    .end local v17    # "wMarker":I
    .local v1, "wMarker":I
    if-lt v1, v0, :cond_8

    .line 121
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_7

    .line 120
    :cond_8
    move/from16 v17, v1

    .line 104
    .end local v1    # "wMarker":I
    .end local v3    # "alpha":I
    .restart local v17    # "wMarker":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v20

    const/16 v5, 0xff

    goto :goto_3

    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .local v1, "pg":Ljava/awt/image/PixelGrabber;
    :cond_9
    move-object/from16 v20, v1

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    move-object v1, v2

    move v9, v4

    move/from16 v16, v6

    .end local v9    # "j":I
    goto :goto_e

    .line 124
    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v1    # "pg":Ljava/awt/image/PixelGrabber;
    :cond_a
    move-object/from16 v20, v1

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    if-ge v1, v15, :cond_11

    .line 125
    if-nez v2, :cond_c

    .line 126
    aget v3, v12, v1

    shr-int/lit8 v3, v3, 0x18

    const/16 v5, 0xff

    and-int/2addr v3, v5

    .line 127
    .restart local v3    # "alpha":I
    if-nez v3, :cond_c

    .line 128
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 130
    aget v5, v12, v1

    and-int/lit16 v5, v5, 0x888

    if-eqz v5, :cond_b

    const/16 v5, 0xff

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    const/4 v9, 0x1

    aput v5, v2, v9

    const/4 v9, 0x0

    aput v5, v2, v9

    .line 133
    .end local v3    # "alpha":I
    :cond_c
    aget v3, v12, v1

    and-int/lit16 v3, v3, 0x888

    if-eqz v3, :cond_d

    .line 134
    or-int v18, v18, v4

    move/from16 v3, v18

    goto :goto_a

    .line 133
    :cond_d
    move/from16 v3, v18

    .line 135
    .end local v18    # "currByte":I
    .local v3, "currByte":I
    :goto_a
    shr-int/lit8 v4, v4, 0x1

    .line 136
    if-eqz v4, :cond_f

    add-int/lit8 v5, v17, 0x1

    if-lt v5, v0, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v18, v3

    goto :goto_c

    .line 137
    :cond_f
    :goto_b
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .local v5, "index":I
    int-to-byte v9, v3

    aput-byte v9, v14, v6

    .line 138
    const/16 v4, 0x80

    .line 139
    const/4 v3, 0x0

    move/from16 v18, v3

    move v6, v5

    .line 141
    .end local v3    # "currByte":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    .restart local v18    # "currByte":I
    :goto_c
    add-int/lit8 v3, v17, 0x1

    .line 142
    .end local v17    # "wMarker":I
    .local v3, "wMarker":I
    if-lt v3, v0, :cond_10

    .line 143
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_d

    .line 142
    :cond_10
    move/from16 v17, v3

    .line 124
    .end local v3    # "wMarker":I
    .restart local v17    # "wMarker":I
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    move-object v1, v2

    move v9, v4

    move/from16 v16, v6

    .line 146
    .end local v2    # "transparency":[I
    .end local v4    # "cbyte":I
    .end local v6    # "index":I
    .local v1, "transparency":[I
    .local v9, "cbyte":I
    .local v16, "index":I
    :goto_e
    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, v0

    move v3, v11

    move-object v6, v14

    move/from16 v19, v7

    .end local v7    # "transColor":I
    .local v19, "transColor":I
    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v2

    return-object v2

    .line 148
    .end local v9    # "cbyte":I
    .end local v13    # "byteWidth":I
    .end local v14    # "pixelsByte":[B
    .end local v15    # "size":I
    .end local v16    # "index":I
    .end local v17    # "wMarker":I
    .end local v18    # "currByte":I
    .end local v19    # "transColor":I
    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .local v1, "pg":Ljava/awt/image/PixelGrabber;
    :cond_12
    move-object/from16 v20, v1

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    mul-int v1, v0, v11

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    .line 149
    .local v1, "pixelsByte":[B
    const/4 v3, 0x0

    .line 151
    .local v3, "smask":[B
    const/4 v4, 0x0

    .line 152
    .local v4, "index":I
    mul-int v9, v11, v0

    .line 153
    .local v9, "size":I
    const/16 v5, 0xff

    .line 154
    .local v5, "red":I
    const/16 v6, 0xff

    .line 155
    .local v6, "green":I
    const/16 v7, 0xff

    .line 156
    .local v7, "blue":I
    if-eqz p1, :cond_13

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v5

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v6

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v7

    move v13, v5

    move v14, v6

    move v15, v7

    goto :goto_f

    .line 156
    :cond_13
    move v13, v5

    move v14, v6

    move v15, v7

    .line 161
    .end local v5    # "red":I
    .end local v6    # "green":I
    .end local v7    # "blue":I
    .local v13, "red":I
    .local v14, "green":I
    .local v15, "blue":I
    :goto_f
    const/4 v5, 0x0

    .line 162
    .local v5, "transparency":[I
    if-eqz p1, :cond_16

    .line 163
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_10
    if-ge v2, v9, :cond_15

    .line 164
    aget v6, v12, v2

    shr-int/lit8 v6, v6, 0x18

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 165
    .local v6, "alpha":I
    const/16 v7, 0xfa

    if-ge v6, v7, :cond_14

    .line 166
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "index":I
    .restart local v16    # "index":I
    int-to-byte v7, v13

    aput-byte v7, v1, v4

    .line 167
    add-int/lit8 v4, v16, 0x1

    .end local v16    # "index":I
    .restart local v4    # "index":I
    int-to-byte v7, v14

    aput-byte v7, v1, v16

    .line 168
    add-int/lit8 v7, v4, 0x1

    move-object/from16 v17, v3

    .end local v3    # "smask":[B
    .end local v4    # "index":I
    .local v7, "index":I
    .local v17, "smask":[B
    int-to-byte v3, v15

    aput-byte v3, v1, v4

    move-object/from16 v18, v5

    move v4, v7

    goto :goto_11

    .line 170
    .end local v7    # "index":I
    .end local v17    # "smask":[B
    .restart local v3    # "smask":[B
    .restart local v4    # "index":I
    :cond_14
    move-object/from16 v17, v3

    .end local v3    # "smask":[B
    .restart local v17    # "smask":[B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .local v3, "index":I
    aget v7, v12, v2

    shr-int/lit8 v7, v7, 0x10

    move-object/from16 v18, v5

    const/16 v5, 0xff

    .end local v5    # "transparency":[I
    .local v18, "transparency":[I
    and-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 171
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget v7, v12, v2

    shr-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 172
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget v7, v12, v2

    and-int/2addr v7, v5

    int-to-byte v5, v7

    aput-byte v5, v1, v4

    move v4, v3

    .line 163
    .end local v3    # "index":I
    .end local v6    # "alpha":I
    .restart local v4    # "index":I
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    goto :goto_10

    .end local v17    # "smask":[B
    .end local v18    # "transparency":[I
    .local v3, "smask":[B
    .restart local v5    # "transparency":[I
    :cond_15
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "smask":[B
    .end local v5    # "transparency":[I
    .restart local v17    # "smask":[B
    .restart local v18    # "transparency":[I
    move v8, v4

    move/from16 v22, v9

    .end local v2    # "j":I
    goto/16 :goto_16

    .line 176
    .end local v17    # "smask":[B
    .end local v18    # "transparency":[I
    .restart local v3    # "smask":[B
    .restart local v5    # "transparency":[I
    :cond_16
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "smask":[B
    .end local v5    # "transparency":[I
    .restart local v17    # "smask":[B
    .restart local v18    # "transparency":[I
    const/4 v3, 0x0

    .line 177
    .local v3, "transparentPixel":I
    mul-int v5, v0, v11

    new-array v5, v5, [B

    .line 178
    .end local v17    # "smask":[B
    .local v5, "smask":[B
    const/4 v6, 0x0

    .line 179
    .local v6, "shades":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_12
    if-ge v7, v9, :cond_1f

    .line 180
    aget v17, v12, v7

    shr-int/lit8 v2, v17, 0x18

    const/16 v8, 0xff

    and-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    .line 182
    .local v2, "alpha":B
    if-nez v6, :cond_1d

    .line 183
    if-eqz v2, :cond_17

    const/4 v8, -0x1

    if-eq v2, v8, :cond_17

    .line 184
    const/4 v6, 0x1

    move-object/from16 v21, v5

    move/from16 v22, v9

    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v23, 0x0

    goto/16 :goto_15

    .line 185
    :cond_17
    const v8, 0xffffff

    if-nez v18, :cond_1b

    .line 186
    if-nez v2, :cond_1a

    .line 187
    aget v17, v12, v7

    and-int v3, v17, v8

    .line 188
    const/4 v8, 0x6

    new-array v8, v8, [I

    .line 189
    .end local v18    # "transparency":[I
    .local v8, "transparency":[I
    move-object/from16 v21, v5

    .end local v5    # "smask":[B
    .local v21, "smask":[B
    shr-int/lit8 v5, v3, 0x10

    move/from16 v22, v9

    const/16 v9, 0xff

    .end local v9    # "size":I
    .local v22, "size":I
    and-int/2addr v5, v9

    const/16 v19, 0x1

    aput v5, v8, v19

    const/16 v23, 0x0

    aput v5, v8, v23

    .line 190
    shr-int/lit8 v5, v3, 0x8

    and-int/2addr v5, v9

    const/4 v9, 0x3

    aput v5, v8, v9

    const/16 v16, 0x2

    aput v5, v8, v16

    .line 191
    const/4 v5, 0x4

    const/16 v18, 0x5

    and-int/lit16 v9, v3, 0xff

    aput v9, v8, v18

    aput v9, v8, v5

    .line 196
    const/4 v5, 0x0

    .local v5, "prevPixel":I
    :goto_13
    if-ge v5, v7, :cond_19

    .line 197
    aget v9, v12, v5

    const v17, 0xffffff

    and-int v9, v9, v17

    if-ne v9, v3, :cond_18

    .line 203
    const/4 v6, 0x1

    .line 204
    goto :goto_14

    .line 196
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .end local v5    # "prevPixel":I
    :cond_19
    :goto_14
    move-object/from16 v18, v8

    goto :goto_15

    .line 186
    .end local v8    # "transparency":[I
    .end local v21    # "smask":[B
    .end local v22    # "size":I
    .local v5, "smask":[B
    .restart local v9    # "size":I
    .restart local v18    # "transparency":[I
    :cond_1a
    move-object/from16 v21, v5

    move/from16 v22, v9

    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v23, 0x0

    .end local v5    # "smask":[B
    .end local v9    # "size":I
    .restart local v21    # "smask":[B
    .restart local v22    # "size":I
    goto :goto_15

    .line 208
    .end local v21    # "smask":[B
    .end local v22    # "size":I
    .restart local v5    # "smask":[B
    .restart local v9    # "size":I
    :cond_1b
    move-object/from16 v21, v5

    move/from16 v22, v9

    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v23, 0x0

    .end local v5    # "smask":[B
    .end local v9    # "size":I
    .restart local v21    # "smask":[B
    .restart local v22    # "size":I
    aget v5, v12, v7

    const v8, 0xffffff

    and-int/2addr v5, v8

    if-eq v5, v3, :cond_1c

    if-nez v2, :cond_1c

    .line 209
    const/4 v5, 0x1

    move v6, v5

    .end local v6    # "shades":Z
    .local v5, "shades":Z
    goto :goto_15

    .line 210
    .end local v5    # "shades":Z
    .restart local v6    # "shades":Z
    :cond_1c
    aget v5, v12, v7

    const v8, 0xffffff

    and-int/2addr v5, v8

    if-ne v5, v3, :cond_1e

    if-eqz v2, :cond_1e

    .line 211
    const/4 v5, 0x1

    move v6, v5

    .end local v6    # "shades":Z
    .restart local v5    # "shades":Z
    goto :goto_15

    .line 182
    .end local v21    # "smask":[B
    .end local v22    # "size":I
    .local v5, "smask":[B
    .restart local v6    # "shades":Z
    .restart local v9    # "size":I
    :cond_1d
    move-object/from16 v21, v5

    move/from16 v22, v9

    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v23, 0x0

    .line 214
    .end local v5    # "smask":[B
    .end local v9    # "size":I
    .restart local v21    # "smask":[B
    .restart local v22    # "size":I
    :cond_1e
    :goto_15
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget v8, v12, v7

    shr-int/lit8 v8, v8, 0x10

    const/16 v9, 0xff

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 215
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aget v8, v12, v7

    shr-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 216
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    aget v8, v12, v7

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 179
    .end local v2    # "alpha":B
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, p0

    move v4, v5

    move-object/from16 v5, v21

    move/from16 v9, v22

    const/4 v2, 0x3

    goto/16 :goto_12

    .end local v21    # "smask":[B
    .end local v22    # "size":I
    .restart local v4    # "index":I
    .local v5, "smask":[B
    .restart local v9    # "size":I
    :cond_1f
    move-object/from16 v21, v5

    move/from16 v22, v9

    .line 218
    .end local v5    # "smask":[B
    .end local v7    # "j":I
    .end local v9    # "size":I
    .restart local v21    # "smask":[B
    .restart local v22    # "size":I
    if-eqz v6, :cond_20

    .line 219
    const/4 v5, 0x0

    move v8, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v21

    .end local v18    # "transparency":[I
    .local v5, "transparency":[I
    goto :goto_16

    .line 221
    .end local v5    # "transparency":[I
    .restart local v18    # "transparency":[I
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v17, v2

    move v8, v4

    .line 223
    .end local v3    # "transparentPixel":I
    .end local v4    # "index":I
    .end local v6    # "shades":Z
    .end local v21    # "smask":[B
    .local v8, "index":I
    .restart local v17    # "smask":[B
    :goto_16
    const/4 v4, 0x3

    const/16 v5, 0x8

    move v2, v0

    move v3, v11

    move-object v6, v1

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v9

    .line 224
    .local v9, "img":Lcom/itextpdf/io/image/ImageData;
    if-eqz v17, :cond_21

    .line 225
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v7, 0x0

    move v2, v0

    move v3, v11

    move-object/from16 v6, v17

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/io/image/ImageDataFactory;->create(IIII[B[I)Lcom/itextpdf/io/image/ImageData;

    move-result-object v2

    .line 226
    .local v2, "sm":Lcom/itextpdf/io/image/ImageData;
    invoke-virtual {v2}, Lcom/itextpdf/io/image/ImageData;->makeMask()V

    .line 227
    invoke-virtual {v9, v2}, Lcom/itextpdf/io/image/ImageData;->setImageMask(Lcom/itextpdf/io/image/ImageData;)V

    .line 229
    .end local v2    # "sm":Lcom/itextpdf/io/image/ImageData;
    :cond_21
    return-object v9

    .line 83
    .end local v0    # "w":I
    .end local v8    # "index":I
    .end local v9    # "img":Lcom/itextpdf/io/image/ImageData;
    .end local v11    # "h":I
    .end local v12    # "pixels":[I
    .end local v13    # "red":I
    .end local v14    # "green":I
    .end local v15    # "blue":I
    .end local v17    # "smask":[B
    .end local v18    # "transparency":[I
    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .end local v22    # "size":I
    .local v1, "pg":Ljava/awt/image/PixelGrabber;
    :cond_22
    move-object/from16 v20, v1

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Java.awt.image fetch aborted or errored"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    .end local v20    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v1    # "pg":Ljava/awt/image/PixelGrabber;
    :catch_0
    move-exception v0

    move-object/from16 v20, v1

    move-object v1, v0

    .end local v1    # "pg":Ljava/awt/image/PixelGrabber;
    .restart local v20    # "pg":Ljava/awt/image/PixelGrabber;
    move-object v0, v1

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Java.awt.image was interrupted. Waiting for pixels"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

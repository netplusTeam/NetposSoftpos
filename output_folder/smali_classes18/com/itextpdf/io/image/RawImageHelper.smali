.class public final Lcom/itextpdf/io/image/RawImageHelper;
.super Ljava/lang/Object;
.source "RawImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static updateCcittImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B)V
    .locals 2
    .param p0, "image"    # Lcom/itextpdf/io/image/RawImageData;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "reverseBits"    # Z
    .param p4, "typeCcitt"    # I
    .param p5, "parameters"    # I
    .param p6, "data"    # [B

    .line 154
    const/16 v0, 0x100

    if-eq p4, v0, :cond_1

    const/16 v0, 0x101

    if-eq p4, v0, :cond_1

    const/16 v0, 0x102

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "CCITT compression type must be CCITTG4, CCITTG3_1D or CCITTG3_2D."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 157
    invoke-static {p6}, Lcom/itextpdf/io/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 158
    :cond_2
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/RawImageData;->setHeight(F)V

    .line 159
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/RawImageData;->setWidth(F)V

    .line 160
    invoke-virtual {p0, p5}, Lcom/itextpdf/io/image/RawImageData;->setColorSpace(I)V

    .line 161
    invoke-virtual {p0, p4}, Lcom/itextpdf/io/image/RawImageData;->setTypeCcitt(I)V

    .line 162
    iput-object p6, p0, Lcom/itextpdf/io/image/RawImageData;->data:[B

    .line 163
    return-void
.end method

.method public static updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V
    .locals 7
    .param p0, "image"    # Lcom/itextpdf/io/image/RawImageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/image/RawImageData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "additional":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isRawImage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getColorSpace()I

    move-result v0

    .line 60
    .local v0, "colorSpace":I
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getTypeCcitt()I

    move-result v1

    .line 61
    .local v1, "typeCCITT":I
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-le v1, v2, :cond_6

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isMask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/image/RawImageData;->setColorSpace(I)V

    .line 64
    :cond_0
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/image/RawImageData;->setBpc(I)V

    .line 65
    const-string v2, "CCITTFaxDecode"

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/RawImageData;->setFilter(Ljava/lang/String;)V

    .line 66
    add-int/lit16 v2, v1, -0x101

    .line 67
    .local v2, "k":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "decodeparms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "K"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "BlackIs1"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "EncodedByteAlign"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_3
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    .line 75
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "EndOfLine"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_4
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_5

    .line 77
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "EndOfBlock"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "Columns"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "Rows"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object v4, p0, Lcom/itextpdf/io/image/RawImageData;->decodeParms:Ljava/util/Map;

    .line 81
    .end local v2    # "k":I
    .end local v4    # "decodeparms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 82
    :cond_6
    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 89
    const/4 v4, 0x6

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isInverted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 85
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    iput-object v4, p0, Lcom/itextpdf/io/image/RawImageData;->decode:[F

    .line 96
    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    .line 97
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/image/RawImageData;->setImageAttributes(Ljava/util/Map;)V

    .line 99
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isMask()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getBpc()I

    move-result v4

    if-eq v4, v3, :cond_9

    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->getBpc()I

    move-result v3

    if-le v3, v2, :cond_a

    .line 100
    :cond_9
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/RawImageData;->setColorSpace(I)V

    .line 101
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/io/image/RawImageData;->isDeflated()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 102
    const-string v2, "FlateDecode"

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/RawImageData;->setFilter(Ljava/lang/String;)V

    .line 105
    :cond_b
    :goto_1
    return-void

    .line 57
    .end local v0    # "colorSpace":I
    .end local v1    # "typeCCITT":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw image expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V
    .locals 3
    .param p0, "image"    # Lcom/itextpdf/io/image/RawImageData;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "components"    # I
    .param p4, "bpc"    # I
    .param p5, "data"    # [B

    .line 120
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/RawImageData;->setHeight(F)V

    .line 121
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/RawImageData;->setWidth(F)V

    .line 122
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Components must be 1, 3 or 4."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    :goto_0
    if-eq p4, v1, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_3

    if-eq p4, v0, :cond_3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Bits per component must be 1, 2, 4 or 8."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {p0, p3}, Lcom/itextpdf/io/image/RawImageData;->setColorSpace(I)V

    .line 127
    invoke-virtual {p0, p4}, Lcom/itextpdf/io/image/RawImageData;->setBpc(I)V

    .line 128
    iput-object p5, p0, Lcom/itextpdf/io/image/RawImageData;->data:[B

    .line 129
    return-void
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B[I)V
    .locals 9
    .param p0, "image"    # Lcom/itextpdf/io/image/RawImageData;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "components"    # I
    .param p4, "bpc"    # I
    .param p5, "data"    # [B
    .param p6, "transparency"    # [I

    .line 133
    if-eqz p6, :cond_1

    array-length v0, p6

    mul-int/lit8 v1, p3, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    if-ne p4, v0, :cond_2

    .line 136
    invoke-static {p5, p1, p2}, Lcom/itextpdf/io/codec/CCITTG4Encoder;->compress([BII)[B

    move-result-object v0

    .line 137
    .local v0, "g4":[B
    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v0

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V

    .line 139
    .end local v0    # "g4":[B
    goto :goto_1

    .line 140
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/itextpdf/io/image/RawImageHelper;->updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIII[B)V

    .line 141
    invoke-virtual {p0, p6}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V

    .line 143
    :goto_1
    return-void
.end method

.method protected static updateRawImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B[I)V
    .locals 2
    .param p0, "image"    # Lcom/itextpdf/io/image/RawImageData;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "reverseBits"    # Z
    .param p4, "typeCCITT"    # I
    .param p5, "parameters"    # I
    .param p6, "data"    # [B
    .param p7, "transparency"    # [I

    .line 147
    if-eqz p7, :cond_1

    array-length v0, p7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Transparency length must be equal to 2 with CCITT images"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p6}, Lcom/itextpdf/io/image/RawImageHelper;->updateCcittImageParameters(Lcom/itextpdf/io/image/RawImageData;IIZII[B)V

    .line 150
    invoke-virtual {p0, p7}, Lcom/itextpdf/io/image/RawImageData;->setTransparency([I)V

    .line 151
    return-void
.end method

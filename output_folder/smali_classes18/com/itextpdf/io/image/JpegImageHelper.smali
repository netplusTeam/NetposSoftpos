.class Lcom/itextpdf/io/image/JpegImageHelper;
.super Ljava/lang/Object;
.source "JpegImageHelper.java"


# static fields
.field private static final JFIF_ID:[B

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final M_APP0:I = 0xe0

.field private static final M_APP2:I = 0xe2

.field private static final M_APPD:I = 0xed

.field private static final M_APPE:I = 0xee

.field private static final NOPARAM_MARKER:I = 0x2

.field private static final NOPARAM_MARKERS:[I

.field private static final NOT_A_MARKER:I = -0x1

.field private static final PS_8BIM_RESO:[B

.field private static final UNSUPPORTED_MARKER:I = 0x1

.field private static final UNSUPPORTED_MARKERS:[I

.field private static final VALID_MARKER:I

.field private static final VALID_MARKERS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/itextpdf/io/image/JpegImageHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->VALID_MARKERS:[I

    .line 85
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->UNSUPPORTED_MARKERS:[I

    .line 95
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->NOPARAM_MARKERS:[I

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xc0
        0xc1
        0xc2
    .end array-data

    :array_1
    .array-data 4
        0xc3
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcd
        0xce
        0xcf
    .end array-data

    :array_2
    .array-data 4
        0xd0
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
        0x3t
        -0x13t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attemptToSetIccProfileToImage([[BLcom/itextpdf/io/image/ImageData;)V
    .locals 8
    .param p0, "icc"    # [[B
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 158
    if-eqz p0, :cond_3

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "total":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xe

    if-ge v3, v1, :cond_1

    aget-object v5, p0, v3

    .line 161
    .local v5, "value":[B
    if-nez v5, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    array-length v6, v5

    sub-int/2addr v6, v4

    add-int/2addr v0, v6

    .line 160
    .end local v5    # "value":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    new-array v1, v0, [B

    .line 167
    .local v1, "ficc":[B
    const/4 v0, 0x0

    .line 168
    array-length v3, p0

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    .line 169
    .local v6, "bytes":[B
    array-length v7, v6

    sub-int/2addr v7, v4

    invoke-static {v6, v4, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    array-length v7, v6

    sub-int/2addr v7, v4

    add-int/2addr v0, v7

    .line 168
    .end local v6    # "bytes":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 173
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v3

    invoke-static {v1, v3}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/image/ImageData;->setProfile(Lcom/itextpdf/io/colors/IccProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_2

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 175
    const-string v2, "During the construction of the ICC profile, the {0} error with message \"{1}\" occurred, the ICC profile will not be installed in the image."

    invoke-static {v2, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 180
    .end local v0    # "total":I
    .end local v1    # "ficc":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method private static getShort(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "jpegStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static marker(I)I
    .locals 3
    .param p0, "marker"    # I

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/itextpdf/io/image/JpegImageHelper;->VALID_MARKERS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 402
    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 403
    const/4 v1, 0x0

    return v1

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/itextpdf/io/image/JpegImageHelper;->NOPARAM_MARKERS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 407
    aget v1, v1, v0

    if-ne p0, v1, :cond_2

    .line 408
    const/4 v1, 0x2

    return v1

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/itextpdf/io/image/JpegImageHelper;->UNSUPPORTED_MARKERS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 412
    aget v1, v1, v0

    if-ne p0, v1, :cond_4

    .line 413
    const/4 v1, 0x1

    return v1

    .line 411
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    .end local v0    # "i":I
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 4
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_2

    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, "jpegStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->loadData()V

    .line 138
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "errorID":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v1    # "errorID":Ljava/lang/String;
    :cond_0
    const-string v1, "Byte array"

    .line 142
    .restart local v1    # "errorID":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 143
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/itextpdf/io/image/ImageData;->imageSize:I

    .line 144
    invoke-static {v0, v1, p0}, Lcom/itextpdf/io/image/JpegImageHelper;->processParameters(Ljava/io/InputStream;Ljava/lang/String;Lcom/itextpdf/io/image/ImageData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v1    # "errorID":Ljava/lang/String;
    nop

    .line 150
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 154
    :goto_2
    invoke-static {p0}, Lcom/itextpdf/io/image/JpegImageHelper;->updateAttributes(Lcom/itextpdf/io/image/ImageData;)V

    .line 155
    return-void

    .line 148
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "JPEG image exception."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "jpegStream":Ljava/io/InputStream;
    .end local p0    # "image":Lcom/itextpdf/io/image/ImageData;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "jpegStream":Ljava/io/InputStream;
    .restart local p0    # "image":Lcom/itextpdf/io/image/ImageData;
    :goto_3
    if-eqz v0, :cond_1

    .line 150
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_4

    .line 153
    :cond_1
    :goto_5
    throw v1

    .line 132
    .end local v0    # "jpegStream":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JPEG image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processParameters(Ljava/io/InputStream;Ljava/lang/String;Lcom/itextpdf/io/image/ImageData;)V
    .locals 22
    .param p0, "jpegStream"    # Ljava/io/InputStream;
    .param p1, "errorID"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/itextpdf/io/image/ImageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    check-cast v2, [[B

    .line 202
    .local v2, "icc":[[B
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2a

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v7, 0xd8

    if-ne v3, v7, :cond_2a

    .line 205
    const/4 v3, 0x1

    .line 208
    .local v3, "firstPass":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 209
    .local v7, "v":I
    if-ltz v7, :cond_29

    .line 211
    if-ne v7, v5, :cond_28

    .line 212
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 213
    .local v8, "marker":I
    const-wide/16 v9, 0x2

    const/16 v11, 0x10

    if-eqz v3, :cond_7

    const/16 v15, 0xe0

    if-ne v8, v15, :cond_7

    .line 214
    const/4 v3, 0x0

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v15

    .line 216
    .local v15, "len":I
    if-ge v15, v11, :cond_0

    .line 217
    add-int/lit8 v9, v15, -0x2

    int-to-long v9, v9

    invoke-static {v0, v9, v10}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 218
    goto :goto_4

    .line 220
    :cond_0
    sget-object v11, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    array-length v11, v11

    new-array v11, v11, [B

    .line 221
    .local v11, "bcomp":[B
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 222
    .local v5, "r":I
    array-length v4, v11

    if-ne v5, v4, :cond_6

    .line 224
    const/4 v4, 0x1

    .line 225
    .local v4, "found":Z
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "k":I
    :goto_1
    array-length v13, v11

    if-ge v12, v13, :cond_2

    .line 226
    aget-byte v13, v11, v12

    sget-object v19, Lcom/itextpdf/io/image/JpegImageHelper;->JFIF_ID:[B

    aget-byte v14, v19, v12

    if-eq v13, v14, :cond_1

    .line 227
    const/4 v4, 0x0

    .line 228
    goto :goto_2

    .line 225
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 231
    .end local v12    # "k":I
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 232
    add-int/lit8 v9, v15, -0x2

    array-length v10, v11

    sub-int/2addr v9, v10

    int-to-long v9, v9

    invoke-static {v0, v9, v10}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 233
    goto :goto_4

    .line 235
    :cond_3
    invoke-static {v0, v9, v10}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 237
    .local v9, "units":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v10

    .line 238
    .local v10, "dx":I
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v12

    .line 239
    .local v12, "dy":I
    if-ne v9, v6, :cond_4

    .line 240
    invoke-virtual {v1, v10, v12}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    goto :goto_3

    .line 241
    :cond_4
    const/4 v13, 0x2

    if-ne v9, v13, :cond_5

    .line 242
    int-to-float v13, v10

    const v14, 0x40228f5c    # 2.54f

    mul-float/2addr v13, v14

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v13, v13, v18

    float-to-int v13, v13

    int-to-float v6, v12

    mul-float/2addr v6, v14

    add-float v6, v6, v18

    float-to-int v6, v6

    invoke-virtual {v1, v13, v6}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    .line 244
    :cond_5
    :goto_3
    add-int/lit8 v6, v15, -0x2

    array-length v13, v11

    sub-int/2addr v6, v13

    add-int/lit8 v6, v6, -0x7

    int-to-long v13, v6

    invoke-static {v0, v13, v14}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 245
    nop

    .line 208
    .end local v4    # "found":Z
    .end local v5    # "r":I
    .end local v7    # "v":I
    .end local v8    # "marker":I
    .end local v9    # "units":I
    .end local v10    # "dx":I
    .end local v11    # "bcomp":[B
    .end local v12    # "dy":I
    .end local v15    # "len":I
    :goto_4
    const/16 v5, 0xff

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 223
    .restart local v5    # "r":I
    .restart local v7    # "v":I
    .restart local v8    # "marker":I
    .restart local v11    # "bcomp":[B
    .restart local v15    # "len":I
    :cond_6
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string/jumbo v6, "{0} corrupted jfif marker."

    invoke-direct {v4, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v6, v9

    invoke-virtual {v4, v6}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    throw v4

    .line 247
    .end local v5    # "r":I
    .end local v11    # "bcomp":[B
    .end local v15    # "len":I
    :cond_7
    const/16 v4, 0xee

    const-string v5, "ISO-8859-1"

    const/16 v6, 0xc

    if-ne v8, v4, :cond_b

    .line 248
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    const/4 v9, 0x2

    sub-int/2addr v4, v9

    .line 249
    .local v4, "len":I
    new-array v9, v4, [B

    .line 250
    .local v9, "byteappe":[B
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    if-ge v10, v4, :cond_8

    .line 251
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 250
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 253
    .end local v10    # "k":I
    :cond_8
    array-length v10, v9

    if-lt v10, v6, :cond_a

    .line 254
    new-instance v6, Ljava/lang/String;

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-direct {v6, v9, v11, v10, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    .line 255
    .local v5, "appe":Ljava/lang/String;
    const-string v6, "Adobe"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 256
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/itextpdf/io/image/ImageData;->setInverted(Z)V

    .line 258
    .end local v5    # "appe":Ljava/lang/String;
    :cond_9
    move/from16 v21, v3

    goto/16 :goto_12

    .line 253
    :cond_a
    move/from16 v21, v3

    goto/16 :goto_12

    .line 261
    .end local v4    # "len":I
    .end local v9    # "byteappe":[B
    :cond_b
    const/16 v4, 0xe2

    if-ne v8, v4, :cond_12

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    const/4 v9, 0x2

    sub-int/2addr v4, v9

    .line 263
    .restart local v4    # "len":I
    new-array v9, v4, [B

    .line 264
    .local v9, "byteapp2":[B
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_6
    if-ge v10, v4, :cond_c

    .line 265
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 264
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 267
    .end local v10    # "k":I
    :cond_c
    array-length v10, v9

    const/16 v11, 0xe

    if-lt v10, v11, :cond_11

    .line 268
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-direct {v10, v9, v12, v11, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v10

    .line 269
    .local v5, "app2":Ljava/lang/String;
    const-string v10, "ICC_PROFILE"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 270
    aget-byte v6, v9, v6

    const/16 v10, 0xff

    and-int/2addr v6, v10

    .line 271
    .local v6, "order":I
    const/16 v11, 0xd

    aget-byte v11, v9, v11

    and-int/2addr v11, v10

    .line 273
    .local v11, "count":I
    const/4 v10, 0x1

    if-ge v6, v10, :cond_d

    .line 274
    const/4 v6, 0x1

    .line 275
    :cond_d
    if-ge v11, v10, :cond_e

    .line 276
    const/4 v11, 0x1

    .line 277
    :cond_e
    if-nez v2, :cond_f

    .line 278
    new-array v2, v11, [[B

    .line 279
    :cond_f
    add-int/lit8 v10, v6, -0x1

    aput-object v9, v2, v10

    .line 281
    .end local v5    # "app2":Ljava/lang/String;
    .end local v6    # "order":I
    .end local v11    # "count":I
    :cond_10
    const/16 v5, 0xff

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 267
    :cond_11
    move/from16 v21, v3

    goto/16 :goto_12

    .line 284
    .end local v4    # "len":I
    .end local v9    # "byteapp2":[B
    :cond_12
    const/16 v4, 0xed

    const/16 v5, 0x8

    if-ne v8, v4, :cond_23

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    .line 286
    .restart local v4    # "len":I
    new-array v6, v4, [B

    .line 287
    .local v6, "byteappd":[B
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_7
    if-ge v9, v4, :cond_13

    .line 288
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 287
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 292
    .end local v9    # "k":I
    :cond_13
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_8
    sget-object v10, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v10, v10

    sub-int v10, v4, v10

    if-ge v9, v10, :cond_17

    .line 293
    const/4 v10, 0x1

    .line 294
    .local v10, "found":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9
    sget-object v13, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v14, v13

    if-ge v12, v14, :cond_15

    .line 295
    add-int v14, v9, v12

    aget-byte v14, v6, v14

    aget-byte v13, v13, v12

    if-eq v14, v13, :cond_14

    .line 296
    const/4 v10, 0x0

    .line 297
    goto :goto_a

    .line 294
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 300
    .end local v12    # "j":I
    :cond_15
    :goto_a
    if-eqz v10, :cond_16

    .line 301
    goto :goto_b

    .line 292
    .end local v10    # "found":Z
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 304
    :cond_17
    :goto_b
    sget-object v10, Lcom/itextpdf/io/image/JpegImageHelper;->PS_8BIM_RESO:[B

    array-length v12, v10

    add-int/2addr v9, v12

    .line 305
    array-length v10, v10

    sub-int v10, v4, v10

    if-ge v9, v10, :cond_22

    .line 308
    aget-byte v10, v6, v9

    .line 310
    .local v10, "namelength":B
    add-int/lit8 v12, v10, 0x1

    int-to-byte v10, v12

    .line 312
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_18

    .line 313
    add-int/lit8 v12, v10, 0x1

    int-to-byte v10, v12

    .line 315
    :cond_18
    add-int/2addr v9, v10

    .line 317
    aget-byte v12, v6, v9

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v6, v13

    shl-int/2addr v13, v11

    add-int/2addr v12, v13

    add-int/lit8 v13, v9, 0x2

    aget-byte v13, v6, v13

    shl-int/2addr v13, v5

    add-int/2addr v12, v13

    add-int/lit8 v13, v9, 0x3

    aget-byte v13, v6, v13

    add-int/2addr v12, v13

    .line 319
    .local v12, "resosize":I
    if-eq v12, v11, :cond_19

    .line 322
    move/from16 v21, v3

    goto/16 :goto_12

    .line 324
    :cond_19
    add-int/lit8 v9, v9, 0x4

    .line 325
    aget-byte v11, v6, v9

    shl-int/2addr v11, v5

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v6, v13

    const/16 v14, 0xff

    and-int/2addr v13, v14

    add-int/2addr v11, v13

    .line 326
    .local v11, "dx":I
    const/4 v13, 0x2

    add-int/2addr v9, v13

    .line 328
    add-int/2addr v9, v13

    .line 329
    aget-byte v14, v6, v9

    shl-int/2addr v14, v5

    add-int/lit8 v15, v9, 0x1

    aget-byte v15, v6, v15

    const/16 v5, 0xff

    and-int/2addr v15, v5

    add-int/2addr v14, v15

    .line 330
    .local v14, "unitsx":I
    add-int/2addr v9, v13

    .line 332
    add-int/2addr v9, v13

    .line 333
    aget-byte v5, v6, v9

    const/16 v15, 0x8

    shl-int/2addr v5, v15

    add-int/lit8 v15, v9, 0x1

    aget-byte v15, v6, v15

    const/16 v13, 0xff

    and-int/2addr v15, v13

    add-int/2addr v5, v15

    .line 334
    .local v5, "dy":I
    const/4 v13, 0x2

    add-int/2addr v9, v13

    .line 336
    add-int/2addr v9, v13

    .line 337
    aget-byte v13, v6, v9

    const/16 v15, 0x8

    shl-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x1

    aget-byte v15, v6, v15

    move/from16 v20, v9

    const/16 v9, 0xff

    .end local v9    # "k":I
    .local v20, "k":I
    and-int/2addr v15, v9

    add-int/2addr v13, v15

    .line 339
    .local v13, "unitsy":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1b

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v21, v3

    goto :goto_e

    :cond_1b
    const/4 v15, 0x2

    .line 340
    :goto_c
    if-ne v14, v15, :cond_1c

    int-to-float v15, v11

    const v16, 0x40228f5c    # 2.54f

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    goto :goto_d

    :cond_1c
    move v15, v11

    :goto_d
    move v11, v15

    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v15

    if-eq v15, v11, :cond_1d

    .line 343
    sget-object v15, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    move/from16 v21, v3

    const/4 v9, 0x2

    .end local v3    # "firstPass":Z
    .local v21, "firstPass":Z
    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x0

    aput-object v9, v3, v17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v19, 0x1

    aput-object v9, v3, v19

    const-string v9, "Inconsistent metadata (dpiX: {0} vs {1})"

    invoke-static {v9, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 342
    .end local v21    # "firstPass":Z
    .restart local v3    # "firstPass":Z
    :cond_1d
    move/from16 v21, v3

    .line 345
    .end local v3    # "firstPass":Z
    .restart local v21    # "firstPass":Z
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v3

    invoke-virtual {v1, v11, v3}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    .line 348
    :goto_e
    const/4 v3, 0x1

    if-eq v13, v3, :cond_1e

    const/4 v3, 0x2

    if-ne v13, v3, :cond_21

    goto :goto_f

    :cond_1e
    const/4 v3, 0x2

    .line 349
    :goto_f
    if-ne v13, v3, :cond_1f

    int-to-float v3, v5

    const v9, 0x40228f5c    # 2.54f

    mul-float/2addr v3, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v3, v9

    float-to-int v3, v3

    goto :goto_10

    :cond_1f
    move v3, v5

    .line 351
    .end local v5    # "dy":I
    .local v3, "dy":I
    :goto_10
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v5

    if-eq v5, v3, :cond_20

    .line 352
    sget-object v5, Lcom/itextpdf/io/image/JpegImageHelper;->LOGGER:Lorg/slf4j/Logger;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiY()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v9, v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x1

    aput-object v15, v9, v18

    const-string v15, "Inconsistent metadata (dpiY: {0} vs {1})"

    invoke-static {v15, v9}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_11

    .line 354
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/io/image/ImageData;->getDpiX()I

    move-result v5

    invoke-virtual {v1, v5, v11}, Lcom/itextpdf/io/image/ImageData;->setDpi(II)V

    .line 357
    .end local v3    # "dy":I
    .end local v10    # "namelength":B
    .end local v11    # "dx":I
    .end local v12    # "resosize":I
    .end local v13    # "unitsy":I
    .end local v14    # "unitsx":I
    :cond_21
    :goto_11
    goto :goto_12

    .line 305
    .end local v20    # "k":I
    .end local v21    # "firstPass":Z
    .local v3, "firstPass":Z
    .restart local v9    # "k":I
    :cond_22
    move/from16 v21, v3

    .line 208
    .end local v4    # "len":I
    .end local v6    # "byteappd":[B
    .end local v7    # "v":I
    .end local v8    # "marker":I
    .end local v9    # "k":I
    :goto_12
    move/from16 v3, v21

    const/16 v5, 0xff

    const/4 v6, 0x1

    .end local v3    # "firstPass":Z
    .restart local v21    # "firstPass":Z
    goto/16 :goto_0

    .line 360
    .end local v21    # "firstPass":Z
    .restart local v3    # "firstPass":Z
    .restart local v7    # "v":I
    .restart local v8    # "marker":I
    :cond_23
    move/from16 v21, v3

    move-wide v3, v9

    .end local v3    # "firstPass":Z
    .restart local v21    # "firstPass":Z
    const/4 v5, 0x0

    .line 361
    .end local v21    # "firstPass":Z
    .local v5, "firstPass":Z
    invoke-static {v8}, Lcom/itextpdf/io/image/JpegImageHelper;->marker(I)I

    move-result v6

    .line 362
    .local v6, "markertype":I
    if-nez v6, :cond_25

    .line 363
    invoke-static {v0, v3, v4}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_24

    .line 367
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setHeight(F)V

    .line 368
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setWidth(F)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setColorSpace(I)V

    .line 370
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/ImageData;->setBpc(I)V

    .line 371
    nop

    .line 380
    .end local v6    # "markertype":I
    .end local v7    # "v":I
    .end local v8    # "marker":I
    invoke-static {v2, v1}, Lcom/itextpdf/io/image/JpegImageHelper;->attemptToSetIccProfileToImage([[BLcom/itextpdf/io/image/ImageData;)V

    .line 381
    return-void

    .line 365
    .restart local v6    # "markertype":I
    .restart local v7    # "v":I
    .restart local v8    # "marker":I
    :cond_24
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string/jumbo v4, "{0} must have 8 bits per component."

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3

    .line 372
    :cond_25
    const/4 v4, 0x1

    if-eq v6, v4, :cond_27

    .line 374
    const/4 v3, 0x2

    if-eq v6, v3, :cond_26

    .line 375
    invoke-static/range {p0 .. p0}, Lcom/itextpdf/io/image/JpegImageHelper;->getShort(Ljava/io/InputStream;)I

    move-result v4

    sub-int/2addr v4, v3

    int-to-long v3, v4

    invoke-static {v0, v3, v4}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 378
    .end local v6    # "markertype":I
    .end local v7    # "v":I
    .end local v8    # "marker":I
    :cond_26
    move v3, v5

    goto :goto_13

    .line 373
    .restart local v6    # "markertype":I
    .restart local v7    # "v":I
    .restart local v8    # "marker":I
    :cond_27
    const/4 v3, 0x2

    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string/jumbo v9, "{0} unsupported jpeg marker {1}."

    invoke-direct {v4, v9}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v3, v10

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3

    .line 211
    .end local v5    # "firstPass":Z
    .end local v6    # "markertype":I
    .end local v8    # "marker":I
    .restart local v3    # "firstPass":Z
    :cond_28
    move/from16 v21, v3

    .line 378
    .end local v7    # "v":I
    :goto_13
    const/16 v5, 0xff

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 210
    .restart local v7    # "v":I
    :cond_29
    move/from16 v21, v3

    .end local v3    # "firstPass":Z
    .restart local v21    # "firstPass":Z
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "Premature EOF while reading JPEG."

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    .end local v7    # "v":I
    .end local v21    # "firstPass":Z
    :cond_2a
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string/jumbo v4, "{0} is not a valid jpeg file."

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private static updateAttributes(Lcom/itextpdf/io/image/ImageData;)V
    .locals 3
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 183
    const-string v0, "DCTDecode"

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->filter:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorTransform()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "decodeParms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ColorTransform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decodeParms:Ljava/util/Map;

    .line 189
    .end local v0    # "decodeParms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/io/image/ImageData;->decode:[F

    .line 192
    :cond_1
    return-void

    nop

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
.end method

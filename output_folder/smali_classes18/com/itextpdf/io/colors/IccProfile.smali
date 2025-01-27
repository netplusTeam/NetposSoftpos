.class public Lcom/itextpdf/io/colors/IccProfile;
.super Ljava/lang/Object;
.source "IccProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cstags:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x679cb00dd78922b9L


# instance fields
.field protected data:[B

.field protected numComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    .line 252
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XYZ "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Lab "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Luv "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "YCbr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "Yxy "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "RGB "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GRAY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "HSV "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v2, "HLS "

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CMYK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v3, "CMY "

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "2CLR"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v3, "3CLR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const-string v1, "4CLR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "5CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "6CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "7CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "8CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9CLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ECLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FCLR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getIccColorSpaceName([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x4

    const-string v3, "US-ASCII"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v0, "colorSpace":Ljava/lang/String;
    nop

    .line 203
    return-object v0

    .line 200
    .end local v0    # "colorSpace":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Invalid ICC profile."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIccDeviceClass([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    const/4 v2, 0x4

    const-string v3, "US-ASCII"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v0, "deviceClass":Ljava/lang/String;
    nop

    .line 220
    return-object v0

    .line 217
    .end local v0    # "deviceClass":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Invalid ICC profile."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIccNumberOfComponents([B)Ljava/lang/Integer;
    .locals 2
    .param p0, "data"    # [B

    .line 230
    sget-object v0, Lcom/itextpdf/io/colors/IccProfile;->cstags:Ljava/util/Map;

    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccColorSpaceName([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 7
    .param p0, "file"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 118
    const-string v0, "Invalid ICC profile."

    const/16 v1, 0x80

    :try_start_0
    new-array v1, v1, [B

    .line 119
    .local v1, "head":[B
    array-length v2, v1

    .line 120
    .local v2, "remain":I
    const/4 v3, 0x0

    .line 121
    .local v3, "ptr":I
    :goto_0
    if-lez v2, :cond_1

    .line 122
    invoke-virtual {p0, v1, v3, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v4

    .line 123
    .local v4, "n":I
    if-ltz v4, :cond_0

    .line 125
    sub-int/2addr v2, v4

    .line 126
    add-int/2addr v3, v4

    .line 127
    .end local v4    # "n":I
    goto :goto_0

    .line 124
    .restart local v4    # "n":I
    :cond_0
    new-instance v5, Lcom/itextpdf/io/IOException;

    invoke-direct {v5, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    throw v5

    .line 128
    .end local v4    # "n":I
    .restart local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :cond_1
    const/16 v4, 0x24

    aget-byte v4, v1, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_4

    const/16 v4, 0x25

    aget-byte v4, v1, v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_4

    const/16 v4, 0x26

    aget-byte v4, v1, v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_4

    const/16 v4, 0x27

    aget-byte v4, v1, v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_4

    .line 132
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 134
    new-array v5, v2, [B

    .line 135
    .local v5, "icc":[B
    array-length v6, v1

    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v4, v1

    sub-int/2addr v2, v4

    .line 137
    array-length v4, v1

    move v3, v4

    .line 138
    :goto_1
    if-lez v2, :cond_3

    .line 139
    invoke-virtual {p0, v5, v3, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v4

    .line 140
    .restart local v4    # "n":I
    if-ltz v4, :cond_2

    .line 143
    sub-int/2addr v2, v4

    .line 144
    add-int/2addr v3, v4

    .line 145
    .end local v4    # "n":I
    goto :goto_1

    .line 141
    .restart local v4    # "n":I
    :cond_2
    new-instance v6, Lcom/itextpdf/io/IOException;

    invoke-direct {v6, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    throw v6

    .line 146
    .end local v4    # "n":I
    .restart local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :cond_3
    invoke-static {v5}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([B)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    return-object v0

    .line 130
    .end local v5    # "icc":[B
    :cond_4
    new-instance v4, Lcom/itextpdf/io/IOException;

    invoke-direct {v4, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "head":[B
    .end local v2    # "remain":I
    .end local v3    # "ptr":I
    .restart local p0    # "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/io/IOException;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/io/InputStream;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;

    .line 163
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 164
    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    nop

    .line 168
    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v1

    return-object v1

    .line 165
    .end local v0    # "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Invalid ICC profile."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/itextpdf/io/colors/IccProfile;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 181
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 182
    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    nop

    .line 186
    invoke-static {v0}, Lcom/itextpdf/io/colors/IccProfile;->getInstance(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v1

    return-object v1

    .line 183
    .end local v0    # "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Invalid ICC profile."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance([B)Lcom/itextpdf/io/colors/IccProfile;
    .locals 3
    .param p0, "data"    # [B

    .line 103
    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccNumberOfComponents([B)Ljava/lang/Integer;

    move-result-object v0

    .line 104
    .local v0, "cs":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    .local v1, "numComponents":I
    :goto_0
    invoke-static {p0, v1}, Lcom/itextpdf/io/colors/IccProfile;->getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance([BI)Lcom/itextpdf/io/colors/IccProfile;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "numComponents"    # I

    .line 79
    array-length v0, p0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    const/16 v0, 0x24

    aget-byte v0, p0, v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    const/16 v0, 0x25

    aget-byte v0, p0, v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    const/16 v0, 0x26

    aget-byte v0, p0, v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    aget-byte v0, p0, v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    .line 82
    new-instance v0, Lcom/itextpdf/io/colors/IccProfile;

    invoke-direct {v0}, Lcom/itextpdf/io/colors/IccProfile;-><init>()V

    .line 83
    .local v0, "icc":Lcom/itextpdf/io/colors/IccProfile;
    iput-object p0, v0, Lcom/itextpdf/io/colors/IccProfile;->data:[B

    .line 85
    invoke-static {p0}, Lcom/itextpdf/io/colors/IccProfile;->getIccNumberOfComponents([B)Ljava/lang/Integer;

    move-result-object v1

    .line 86
    .local v1, "cs":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 87
    .local v3, "nc":I
    :goto_0
    iput v3, v0, Lcom/itextpdf/io/colors/IccProfile;->numComponents:I

    .line 89
    if-ne v3, p1, :cond_1

    .line 92
    return-object v0

    .line 90
    :cond_1
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v5, "ICC profile contains {0} components, while the image data contains {1} components."

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 81
    .end local v0    # "icc":Lcom/itextpdf/io/colors/IccProfile;
    .end local v1    # "cs":Ljava/lang/Integer;
    .end local v3    # "nc":I
    :cond_2
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Invalid ICC profile."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/colors/IccProfile;->data:[B

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/itextpdf/io/colors/IccProfile;->numComponents:I

    return v0
.end method

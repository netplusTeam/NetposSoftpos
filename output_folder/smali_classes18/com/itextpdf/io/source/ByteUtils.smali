.class public final Lcom/itextpdf/io/source/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field static HighPrecision:Z

.field private static final bytes:[B

.field private static final negOne:[B

.field private static final one:[B

.field private static final zero:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    .line 57
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    .line 58
    const/4 v1, 0x1

    new-array v2, v1, [B

    const/16 v3, 0x30

    aput-byte v3, v2, v0

    sput-object v2, Lcom/itextpdf/io/source/ByteUtils;->zero:[B

    .line 59
    new-array v1, v1, [B

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    sput-object v1, Lcom/itextpdf/io/source/ByteUtils;->one:[B

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/io/source/ByteUtils;->negOne:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsoBytes(BLjava/lang/String;)[B
    .locals 1
    .param p0, "pre"    # B
    .param p1, "text"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(BLjava/lang/String;B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getIsoBytes(BLjava/lang/String;B)[B
    .locals 6
    .param p0, "pre"    # B
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "post"    # B

    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 80
    .local v0, "len":I
    const/4 v1, 0x0

    .line 81
    .local v1, "start":I
    if-eqz p0, :cond_1

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    const/4 v1, 0x1

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 88
    :cond_2
    new-array v2, v0, [B

    .line 89
    .local v2, "b":[B
    if-eqz p0, :cond_3

    .line 90
    const/4 v3, 0x0

    aput-byte p0, v2, v3

    .line 92
    :cond_3
    if-eqz p2, :cond_4

    .line 93
    add-int/lit8 v3, v0, -0x1

    aput-byte p2, v2, v3

    .line 95
    :cond_4
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 96
    add-int v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "k":I
    :cond_5
    return-object v2
.end method

.method public static getIsoBytes(D)[B
    .locals 1
    .param p0, "d"    # D

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;)[B
    .locals 1
    .param p0, "d"    # D
    .param p2, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;

    .line 127
    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;Z)[B
    .locals 16
    .param p0, "d"    # D
    .param p2, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;
    .param p3, "highPrecision"    # Z

    .line 131
    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const-class v3, Lcom/itextpdf/io/source/ByteUtils;

    const-string v4, "Attempt to process NaN in PdfNumber or when writing to PDF. Zero value will be used as a fallback."

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    .line 132
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 133
    if-eqz v2, :cond_0

    .line 134
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->zero:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;->prepend([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 135
    return-object v5

    .line 137
    :cond_0
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->zero:[B

    return-object v3

    .line 140
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 142
    .local v3, "logger":Lorg/slf4j/Logger;
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 143
    const-wide/16 v0, 0x0

    .line 145
    .end local v3    # "logger":Lorg/slf4j/Logger;
    .end local p0    # "d":D
    .local v0, "d":D
    :cond_2
    const-string v3, "0.######"

    invoke-static {v0, v1, v3}, Lcom/itextpdf/io/util/DecimalFormatUtil;->formatNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 146
    .local v3, "result":[B
    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;->prepend([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 148
    return-object v5

    .line 150
    :cond_3
    return-object v3

    .line 153
    .end local v0    # "d":D
    .end local v3    # "result":[B
    .restart local p0    # "d":D
    :cond_4
    const/4 v6, 0x0

    .line 154
    .local v6, "negative":Z
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3eef75104d551d69L    # 1.5E-5

    cmpg-double v7, v7, v9

    if-gez v7, :cond_6

    .line 155
    if-eqz v2, :cond_5

    .line 156
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->zero:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;->prepend([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 157
    return-object v5

    .line 159
    :cond_5
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->zero:[B

    return-object v3

    .line 163
    :cond_6
    const-wide/16 v7, 0x0

    cmpg-double v7, v0, v7

    if-gez v7, :cond_7

    .line 164
    const/4 v6, 0x1

    .line 165
    neg-double v0, v0

    .line 167
    .end local p0    # "d":D
    .restart local v0    # "d":D
    :cond_7
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v0, v7

    const/16 v10, 0x2e

    const/16 v11, 0x2d

    if-gez v9, :cond_11

    .line 168
    const-wide v3, 0x3ed4f8b588e368f1L    # 5.0E-6

    add-double/2addr v0, v3

    .line 169
    cmpl-double v3, v0, v7

    if-ltz v3, :cond_a

    .line 171
    if-eqz v6, :cond_8

    .line 172
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->negOne:[B

    .restart local v3    # "result":[B
    goto :goto_0

    .line 174
    .end local v3    # "result":[B
    :cond_8
    sget-object v3, Lcom/itextpdf/io/source/ByteUtils;->one:[B

    .line 176
    .restart local v3    # "result":[B
    :goto_0
    if-eqz v2, :cond_9

    .line 177
    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;->prepend([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 178
    return-object v5

    .line 180
    :cond_9
    return-object v3

    .line 183
    .end local v3    # "result":[B
    :cond_a
    const-wide v3, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 184
    .local v3, "v":I
    const/4 v4, 0x5

    .line 185
    .local v4, "len":I
    :goto_1
    if-lez v4, :cond_c

    .line 186
    rem-int/lit8 v7, v3, 0xa

    if-eqz v7, :cond_b

    goto :goto_2

    .line 187
    :cond_b
    div-int/lit8 v3, v3, 0xa

    .line 185
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 189
    :cond_c
    :goto_2
    if-eqz v2, :cond_d

    move-object v7, v2

    goto :goto_4

    :cond_d
    new-instance v7, Lcom/itextpdf/io/source/ByteBuffer;

    if-eqz v6, :cond_e

    add-int/lit8 v8, v4, 0x3

    goto :goto_3

    :cond_e
    add-int/lit8 v8, v4, 0x2

    :goto_3
    invoke-direct {v7, v8}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 190
    .local v7, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v4, :cond_f

    .line 191
    sget-object v9, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    rem-int/lit8 v12, v3, 0xa

    aget-byte v9, v9, v12

    invoke-virtual {v7, v9}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 192
    div-int/lit8 v3, v3, 0xa

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 194
    .end local v8    # "i":I
    :cond_f
    invoke-virtual {v7, v10}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 195
    if-eqz v6, :cond_10

    .line 196
    invoke-virtual {v7, v11}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 198
    .end local v3    # "v":I
    .end local v4    # "len":I
    :cond_10
    goto/16 :goto_e

    .end local v7    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :cond_11
    const-wide v7, 0x40dfffc000000000L    # 32767.0

    cmpg-double v7, v0, v7

    if-gtz v7, :cond_1d

    .line 199
    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v0, v3

    .line 200
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 202
    .restart local v3    # "v":I
    const v4, 0xf4240

    if-lt v3, v4, :cond_12

    .line 203
    const/4 v4, 0x5

    .local v4, "intLen":I
    goto :goto_6

    .line 204
    .end local v4    # "intLen":I
    :cond_12
    const v4, 0x186a0

    if-lt v3, v4, :cond_13

    .line 205
    const/4 v4, 0x4

    .restart local v4    # "intLen":I
    goto :goto_6

    .line 206
    .end local v4    # "intLen":I
    :cond_13
    const/16 v4, 0x2710

    if-lt v3, v4, :cond_14

    .line 207
    const/4 v4, 0x3

    .restart local v4    # "intLen":I
    goto :goto_6

    .line 208
    .end local v4    # "intLen":I
    :cond_14
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_15

    .line 209
    const/4 v4, 0x2

    .restart local v4    # "intLen":I
    goto :goto_6

    .line 211
    .end local v4    # "intLen":I
    :cond_15
    const/4 v4, 0x1

    .line 213
    .restart local v4    # "intLen":I
    :goto_6
    const/4 v7, 0x0

    .line 214
    .local v7, "fracLen":I
    rem-int/lit8 v8, v3, 0x64

    if-eqz v8, :cond_17

    .line 216
    const/4 v7, 0x2

    .line 217
    rem-int/lit8 v8, v3, 0xa

    if-eqz v8, :cond_16

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 220
    :cond_16
    div-int/lit8 v3, v3, 0xa

    goto :goto_7

    .line 223
    :cond_17
    div-int/lit8 v3, v3, 0x64

    .line 225
    :goto_7
    if-eqz v2, :cond_18

    move-object v8, v2

    goto :goto_8

    :cond_18
    new-instance v8, Lcom/itextpdf/io/source/ByteBuffer;

    add-int v9, v4, v7

    add-int/2addr v9, v6

    invoke-direct {v8, v9}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 227
    .local v8, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_8
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    add-int/lit8 v12, v7, -0x1

    if-ge v9, v12, :cond_19

    .line 228
    sget-object v12, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    rem-int/lit8 v13, v3, 0xa

    aget-byte v12, v12, v13

    invoke-virtual {v8, v12}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 229
    div-int/lit8 v3, v3, 0xa

    .line 227
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 231
    .end local v9    # "i":I
    :cond_19
    if-lez v7, :cond_1a

    .line 232
    invoke-virtual {v8, v10}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 234
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    if-ge v9, v4, :cond_1b

    .line 235
    sget-object v10, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    rem-int/lit8 v12, v3, 0xa

    aget-byte v10, v10, v12

    invoke-virtual {v8, v10}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 236
    div-int/lit8 v3, v3, 0xa

    .line 234
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 238
    .end local v9    # "i":I
    :cond_1b
    if-eqz v6, :cond_1c

    .line 239
    invoke-virtual {v8, v11}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 241
    .end local v3    # "v":I
    .end local v4    # "intLen":I
    .end local v7    # "fracLen":I
    :cond_1c
    move-object v7, v8

    goto :goto_e

    .line 242
    .end local v8    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :cond_1d
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v7

    .line 244
    const-wide/high16 v7, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v7, v0, v7

    if-lez v7, :cond_1e

    .line 246
    const-wide v3, 0x7fffffffffffffffL

    .local v3, "v":J
    goto :goto_b

    .line 248
    .end local v3    # "v":J
    :cond_1e
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 249
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 250
    .local v3, "logger":Lorg/slf4j/Logger;
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 252
    const-wide/16 v0, 0x0

    .line 254
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :cond_1f
    double-to-long v3, v0

    .line 256
    .local v3, "v":J
    :goto_b
    invoke-static {v3, v4}, Lcom/itextpdf/io/source/ByteUtils;->longSize(J)I

    move-result v7

    .line 257
    .local v7, "intLen":I
    if-nez v2, :cond_20

    new-instance v8, Lcom/itextpdf/io/source/ByteBuffer;

    add-int v9, v7, v6

    invoke-direct {v8, v9}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    goto :goto_c

    :cond_20
    move-object v8, v2

    .line 258
    .restart local v8    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_c
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_d
    if-ge v9, v7, :cond_21

    .line 259
    sget-object v10, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    const-wide/16 v12, 0xa

    rem-long v14, v3, v12

    long-to-int v14, v14

    aget-byte v10, v10, v14

    invoke-virtual {v8, v10}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 260
    div-long/2addr v3, v12

    .line 258
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 262
    .end local v9    # "i":I
    :cond_21
    if-eqz v6, :cond_22

    .line 263
    invoke-virtual {v8, v11}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 267
    .end local v3    # "v":J
    .end local v7    # "intLen":I
    :cond_22
    move-object v7, v8

    .end local v8    # "buf":Lcom/itextpdf/io/source/ByteBuffer;
    .local v7, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_e
    if-nez v2, :cond_23

    invoke-virtual {v7}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v5

    :cond_23
    return-object v5
.end method

.method public static getIsoBytes(I)[B
    .locals 1
    .param p0, "n"    # I

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(ILcom/itextpdf/io/source/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static getIsoBytes(ILcom/itextpdf/io/source/ByteBuffer;)[B
    .locals 6
    .param p0, "n"    # I
    .param p1, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "negative":Z
    if-gez p0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 112
    neg-int p0, p0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/io/source/ByteUtils;->intSize(I)I

    move-result v1

    .line 115
    .local v1, "intLen":I
    if-nez p1, :cond_1

    new-instance v2, Lcom/itextpdf/io/source/ByteBuffer;

    add-int v3, v1, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 116
    .local v2, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 117
    sget-object v4, Lcom/itextpdf/io/source/ByteUtils;->bytes:[B

    rem-int/lit8 v5, p0, 0xa

    aget-byte v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 118
    div-int/lit8 p0, p0, 0xa

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 121
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;->prepend(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 123
    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return-object v3
.end method

.method public static getIsoBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 66
    .local v0, "len":I
    new-array v1, v0, [B

    .line 67
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "k":I
    :cond_1
    return-object v1
.end method

.method private static intSize(I)I
    .locals 5
    .param p0, "l"    # I

    .line 281
    const-wide/16 v0, 0xa

    .line 282
    .local v0, "m":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 283
    int-to-long v3, p0

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 284
    return v2

    .line 285
    :cond_0
    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.method private static longSize(J)I
    .locals 5
    .param p0, "l"    # J

    .line 271
    const-wide/16 v0, 0xa

    .line 272
    .local v0, "m":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 273
    cmp-long v3, p0, v0

    if-gez v3, :cond_0

    .line 274
    return v2

    .line 275
    :cond_0
    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_1
    return v3
.end method

.class final Lio/netty/handler/codec/compression/FastLz;
.super Ljava/lang/Object;
.source "FastLz.java"


# static fields
.field static final BLOCK_TYPE_COMPRESSED:B = 0x1t

.field static final BLOCK_TYPE_NON_COMPRESSED:B = 0x0t

.field static final BLOCK_WITHOUT_CHECKSUM:B = 0x0t

.field static final BLOCK_WITH_CHECKSUM:B = 0x10t

.field static final CHECKSUM_OFFSET:I = 0x4

.field private static final HASH_LOG:I = 0xd

.field private static final HASH_MASK:I = 0x1fff

.field private static final HASH_SIZE:I = 0x2000

.field static final LEVEL_1:I = 0x1

.field static final LEVEL_2:I = 0x2

.field static final LEVEL_AUTO:I = 0x0

.field static final MAGIC_NUMBER:I = 0x464c5a

.field static final MAX_CHUNK_LENGTH:I = 0xffff

.field private static final MAX_COPY:I = 0x20

.field private static final MAX_DISTANCE:I = 0x1fff

.field private static final MAX_FARDISTANCE:I = 0x11ffd

.field private static final MAX_LEN:I = 0x108

.field static final MIN_LENGTH_TO_COMPRESSION:I = 0x20

.field private static final MIN_RECOMENDED_LENGTH_FOR_LEVEL_2:I = 0x10000

.field static final OPTIONS_OFFSET:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutputBufferLength(I)I
    .locals 4
    .param p0, "inputLength"    # I

    .line 83
    int-to-double v0, p0

    const-wide v2, 0x3ff0f5c28f5c28f6L    # 1.06

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 84
    .local v0, "outputLength":I
    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method static compress([BII[BII)I
    .locals 30
    .param p0, "input"    # [B
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I
    .param p3, "output"    # [B
    .param p4, "outOffset"    # I
    .param p5, "proposedLevel"    # I

    .line 97
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p5, :cond_1

    .line 98
    const/high16 v4, 0x10000

    if-ge v1, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .local v4, "level":I
    :goto_0
    goto :goto_1

    .line 100
    .end local v4    # "level":I
    :cond_1
    move/from16 v4, p5

    .line 103
    .restart local v4    # "level":I
    :goto_1
    const/4 v5, 0x0

    .line 104
    .local v5, "ip":I
    add-int v6, v5, v1

    sub-int/2addr v6, v2

    .line 105
    .local v6, "ipBound":I
    add-int v7, v5, v1

    add-int/lit8 v7, v7, -0xc

    .line 107
    .local v7, "ipLimit":I
    const/4 v8, 0x0

    .line 110
    .local v8, "op":I
    const/16 v9, 0x2000

    new-array v10, v9, [I

    .line 121
    .local v10, "htab":[I
    const/4 v11, 0x4

    if-ge v1, v11, :cond_4

    .line 122
    if-eqz v1, :cond_3

    .line 124
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "op":I
    .local v2, "op":I
    add-int v8, p4, v8

    add-int/lit8 v9, v1, -0x1

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 125
    add-int/2addr v6, v3

    .line 126
    :goto_2
    if-gt v5, v6, :cond_2

    .line 127
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .local v3, "op":I
    add-int v2, p4, v2

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "ip":I
    .local v8, "ip":I
    add-int v5, p1, v5

    aget-byte v5, v0, v5

    aput-byte v5, p3, v2

    move v2, v3

    move v5, v8

    goto :goto_2

    .line 129
    .end local v3    # "op":I
    .end local v8    # "ip":I
    .restart local v2    # "op":I
    .restart local v5    # "ip":I
    :cond_2
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 132
    .end local v2    # "op":I
    .local v8, "op":I
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 137
    :cond_4
    const/4 v11, 0x0

    .local v11, "hslot":I
    :goto_3
    if-ge v11, v9, :cond_5

    .line 139
    aput v5, v10, v11

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 143
    :cond_5
    const/4 v9, 0x2

    .line 144
    .local v9, "copy":I
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "op":I
    .local v12, "op":I
    add-int v8, p4, v8

    const/16 v13, 0x1f

    aput-byte v13, p3, v8

    .line 145
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "op":I
    .restart local v8    # "op":I
    add-int v12, p4, v12

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "ip":I
    .local v14, "ip":I
    add-int v5, p1, v5

    aget-byte v5, v0, v5

    aput-byte v5, p3, v12

    .line 146
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "op":I
    .local v5, "op":I
    add-int v8, p4, v8

    add-int/lit8 v12, v14, 0x1

    .end local v14    # "ip":I
    .local v12, "ip":I
    add-int v14, p1, v14

    aget-byte v14, v0, v14

    aput-byte v14, p3, v8

    .line 149
    :goto_4
    if-ge v12, v7, :cond_2a

    .line 150
    const/4 v14, 0x0

    .line 152
    .local v14, "ref":I
    const-wide/16 v15, 0x0

    .line 157
    .local v15, "distance":J
    const/16 v17, 0x3

    .line 160
    .local v17, "len":I
    move/from16 v18, v12

    .line 162
    .local v18, "anchor":I
    const/16 v19, 0x0

    .line 165
    .local v19, "matchLabel":Z
    if-ne v4, v2, :cond_6

    .line 167
    add-int v20, p1, v12

    aget-byte v13, v0, v20

    add-int v20, p1, v12

    add-int/lit8 v20, v20, -0x1

    aget-byte v8, v0, v20

    if-ne v13, v8, :cond_6

    add-int v8, p1, v12

    sub-int/2addr v8, v3

    .line 168
    invoke-static {v0, v8}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v8

    add-int v13, p1, v12

    add-int/2addr v13, v3

    invoke-static {v0, v13}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v13

    if-ne v8, v13, :cond_6

    .line 169
    const-wide/16 v15, 0x1

    .line 170
    add-int/lit8 v12, v12, 0x3

    .line 171
    add-int/lit8 v14, v18, 0x2

    .line 176
    const/16 v19, 0x1

    .line 179
    :cond_6
    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1fff

    if-nez v19, :cond_12

    .line 182
    add-int v8, p1, v12

    invoke-static {v0, v8}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v8

    .line 184
    .local v8, "hval":I
    move v11, v8

    .line 186
    aget v13, v10, v8

    .line 189
    .end local v14    # "ref":I
    .local v13, "ref":I
    sub-int v14, v18, v13

    int-to-long v14, v14

    .line 193
    .end local v15    # "distance":J
    .local v14, "distance":J
    aput v18, v10, v11

    .line 196
    cmp-long v16, v14, v22

    if-eqz v16, :cond_10

    if-ne v4, v3, :cond_7

    cmp-long v16, v14, v24

    if-ltz v16, :cond_8

    goto/16 :goto_6

    :cond_7
    const-wide/32 v26, 0x11ffd

    cmp-long v16, v14, v26

    if-gez v16, :cond_10

    :cond_8
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "ref":I
    .local v16, "ref":I
    add-int v13, p1, v13

    aget-byte v13, v0, v13

    add-int/lit8 v20, v12, 0x1

    .end local v12    # "ip":I
    .local v20, "ip":I
    add-int v12, p1, v12

    aget-byte v12, v0, v12

    if-ne v13, v12, :cond_f

    add-int/lit8 v13, v16, 0x1

    .end local v16    # "ref":I
    .restart local v13    # "ref":I
    add-int v12, p1, v16

    aget-byte v12, v0, v12

    add-int/lit8 v16, v20, 0x1

    .end local v20    # "ip":I
    .local v16, "ip":I
    add-int v20, p1, v20

    aget-byte v3, v0, v20

    if-ne v12, v3, :cond_e

    add-int/lit8 v3, v13, 0x1

    .end local v13    # "ref":I
    .local v3, "ref":I
    add-int v12, p1, v13

    aget-byte v12, v0, v12

    add-int/lit8 v13, v16, 0x1

    .end local v16    # "ip":I
    .local v13, "ip":I
    add-int v16, p1, v16

    aget-byte v2, v0, v16

    if-eq v12, v2, :cond_9

    move v12, v13

    move v13, v3

    goto/16 :goto_6

    .line 214
    :cond_9
    const/4 v2, 0x2

    if-ne v4, v2, :cond_d

    .line 216
    cmp-long v2, v14, v24

    if-ltz v2, :cond_d

    .line 217
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "ip":I
    .local v2, "ip":I
    add-int v12, p1, v13

    aget-byte v12, v0, v12

    add-int/lit8 v13, v3, 0x1

    .end local v3    # "ref":I
    .local v13, "ref":I
    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-ne v12, v3, :cond_b

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "ip":I
    .restart local v12    # "ip":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, v13, 0x1

    .end local v13    # "ref":I
    .restart local v3    # "ref":I
    add-int v13, p1, v13

    aget-byte v13, v0, v13

    if-eq v2, v13, :cond_a

    move v13, v3

    move v2, v12

    goto :goto_5

    .line 231
    :cond_a
    add-int/lit8 v17, v17, 0x2

    move-wide v15, v14

    move v14, v3

    goto/16 :goto_7

    .line 222
    .end local v3    # "ref":I
    .end local v12    # "ip":I
    .restart local v2    # "ip":I
    .restart local v13    # "ref":I
    :cond_b
    :goto_5
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .local v3, "op":I
    add-int v5, p4, v5

    add-int/lit8 v12, v18, 0x1

    .end local v18    # "anchor":I
    .local v12, "anchor":I
    add-int v16, p1, v18

    aget-byte v16, v0, v16

    aput-byte v16, p3, v5

    .line 223
    move v2, v12

    .line 224
    add-int/lit8 v9, v9, 0x1

    .line 225
    const/16 v5, 0x20

    if-ne v9, v5, :cond_c

    .line 226
    const/4 v9, 0x0

    .line 227
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    const/16 v16, 0x1f

    aput-byte v16, p3, v3

    move v12, v2

    move/from16 v13, v16

    const/4 v2, 0x2

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 225
    .end local v5    # "op":I
    .restart local v3    # "op":I
    :cond_c
    move v12, v2

    move v5, v3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v13, 0x1f

    goto/16 :goto_4

    .line 239
    .end local v2    # "ip":I
    .end local v8    # "hval":I
    .end local v12    # "anchor":I
    .local v3, "ref":I
    .restart local v5    # "op":I
    .local v13, "ip":I
    .restart local v18    # "anchor":I
    :cond_d
    move v12, v13

    move-wide v15, v14

    move v14, v3

    goto :goto_7

    .line 196
    .end local v3    # "ref":I
    .restart local v8    # "hval":I
    .local v13, "ref":I
    .restart local v16    # "ip":I
    :cond_e
    move/from16 v12, v16

    goto :goto_6

    .end local v13    # "ref":I
    .local v16, "ref":I
    .restart local v20    # "ip":I
    :cond_f
    move/from16 v13, v16

    move/from16 v12, v20

    .line 204
    .end local v16    # "ref":I
    .end local v20    # "ip":I
    .local v12, "ip":I
    .restart local v13    # "ref":I
    :cond_10
    :goto_6
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "op":I
    .local v2, "op":I
    add-int v3, p4, v5

    add-int/lit8 v5, v18, 0x1

    .end local v18    # "anchor":I
    .local v5, "anchor":I
    add-int v16, p1, v18

    aget-byte v16, v0, v16

    aput-byte v16, p3, v3

    .line 205
    move v12, v5

    .line 206
    add-int/lit8 v9, v9, 0x1

    .line 207
    const/16 v3, 0x20

    if-ne v9, v3, :cond_11

    .line 208
    const/4 v9, 0x0

    .line 209
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .local v3, "op":I
    add-int v2, p4, v2

    const/16 v16, 0x1f

    aput-byte v16, p3, v2

    move v5, v3

    move/from16 v13, v16

    const/4 v2, 0x2

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 207
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_11
    move v5, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v13, 0x1f

    goto/16 :goto_4

    .line 239
    .end local v2    # "op":I
    .end local v8    # "hval":I
    .end local v13    # "ref":I
    .local v5, "op":I
    .local v14, "ref":I
    .restart local v15    # "distance":J
    .restart local v18    # "anchor":I
    :cond_12
    :goto_7
    add-int v2, v18, v17

    .line 242
    .end local v12    # "ip":I
    .local v2, "ip":I
    const-wide/16 v12, 0x1

    sub-long/2addr v15, v12

    .line 244
    cmp-long v3, v15, v22

    if-nez v3, :cond_15

    .line 247
    add-int v3, p1, v2

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    aget-byte v3, v0, v3

    .line 248
    .local v3, "x":B
    :goto_8
    if-ge v2, v6, :cond_14

    .line 249
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "ref":I
    .local v8, "ref":I
    add-int v12, p1, v14

    aget-byte v12, v0, v12

    if-eq v12, v3, :cond_13

    .line 250
    move v14, v8

    goto :goto_9

    .line 252
    :cond_13
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    goto :goto_8

    .line 255
    .end local v3    # "x":B
    .end local v8    # "ref":I
    .restart local v14    # "ref":I
    :cond_14
    :goto_9
    goto/16 :goto_b

    .line 258
    :cond_15
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "ref":I
    .local v3, "ref":I
    add-int v8, p1, v14

    aget-byte v8, v0, v8

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "ip":I
    .restart local v12    # "ip":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    if-eq v8, v2, :cond_16

    .line 259
    move v14, v3

    move v2, v12

    goto/16 :goto_b

    .line 261
    :cond_16
    add-int/lit8 v14, v3, 0x1

    .end local v3    # "ref":I
    .restart local v14    # "ref":I
    add-int v2, p1, v3

    aget-byte v2, v0, v2

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "ip":I
    .local v3, "ip":I
    add-int v8, p1, v12

    aget-byte v8, v0, v8

    if-eq v2, v8, :cond_17

    .line 262
    move v2, v3

    goto/16 :goto_b

    .line 264
    :cond_17
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "ref":I
    .local v2, "ref":I
    add-int v8, p1, v14

    aget-byte v8, v0, v8

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "ip":I
    .restart local v12    # "ip":I
    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v8, v3, :cond_18

    .line 265
    move v14, v2

    move v2, v12

    goto/16 :goto_b

    .line 267
    :cond_18
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "ref":I
    .restart local v14    # "ref":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "ip":I
    .restart local v3    # "ip":I
    add-int v8, p1, v12

    aget-byte v8, v0, v8

    if-eq v2, v8, :cond_19

    .line 268
    move v2, v3

    goto/16 :goto_b

    .line 270
    :cond_19
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "ref":I
    .restart local v2    # "ref":I
    add-int v8, p1, v14

    aget-byte v8, v0, v8

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "ip":I
    .restart local v12    # "ip":I
    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v8, v3, :cond_1a

    .line 271
    move v14, v2

    move v2, v12

    goto :goto_b

    .line 273
    :cond_1a
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "ref":I
    .restart local v14    # "ref":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "ip":I
    .restart local v3    # "ip":I
    add-int v8, p1, v12

    aget-byte v8, v0, v8

    if-eq v2, v8, :cond_1b

    .line 274
    move v2, v3

    goto :goto_b

    .line 276
    :cond_1b
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "ref":I
    .restart local v2    # "ref":I
    add-int v8, p1, v14

    aget-byte v8, v0, v8

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "ip":I
    .restart local v12    # "ip":I
    add-int v3, p1, v3

    aget-byte v3, v0, v3

    if-eq v8, v3, :cond_1c

    .line 277
    move v14, v2

    move v2, v12

    goto :goto_b

    .line 279
    :cond_1c
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "ref":I
    .restart local v14    # "ref":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "ip":I
    .restart local v3    # "ip":I
    add-int v8, p1, v12

    aget-byte v8, v0, v8

    if-eq v2, v8, :cond_1d

    .line 280
    move v2, v3

    goto :goto_b

    .line 279
    :cond_1d
    move v2, v3

    .line 282
    .end local v3    # "ip":I
    .local v2, "ip":I
    :goto_a
    if-ge v2, v6, :cond_1f

    .line 283
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "ref":I
    .local v3, "ref":I
    add-int v8, p1, v14

    aget-byte v8, v0, v8

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "ip":I
    .restart local v12    # "ip":I
    add-int v2, p1, v2

    aget-byte v2, v0, v2

    if-eq v8, v2, :cond_1e

    .line 284
    move v14, v3

    move v2, v12

    goto :goto_b

    .line 283
    :cond_1e
    move v14, v3

    move v2, v12

    goto :goto_a

    .line 292
    .end local v3    # "ref":I
    .end local v12    # "ip":I
    .restart local v2    # "ip":I
    .restart local v14    # "ref":I
    :cond_1f
    :goto_b
    if-eqz v9, :cond_20

    .line 295
    add-int v3, p4, v5

    sub-int/2addr v3, v9

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    add-int/lit8 v8, v9, -0x1

    int-to-byte v8, v8

    aput-byte v8, p3, v3

    goto :goto_c

    .line 298
    :cond_20
    add-int/lit8 v5, v5, -0x1

    .line 302
    :goto_c
    const/4 v9, 0x0

    .line 305
    const/4 v3, -0x3

    add-int/2addr v2, v3

    .line 306
    sub-int v8, v2, v18

    .line 309
    .end local v17    # "len":I
    .local v8, "len":I
    const/4 v3, 0x7

    const-wide/16 v21, 0xff

    const/16 v20, 0x8

    const/4 v12, 0x2

    if-ne v4, v12, :cond_26

    .line 310
    cmp-long v12, v15, v24

    const/16 v17, -0x1

    if-gez v12, :cond_23

    .line 311
    if-ge v8, v3, :cond_21

    .line 312
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .local v3, "op":I
    add-int v5, p4, v5

    shl-int/lit8 v12, v8, 0x5

    int-to-long v12, v12

    ushr-long v23, v15, v20

    add-long v12, v12, v23

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p3, v5

    .line 313
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    and-long v12, v15, v21

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p3, v3

    move/from16 v25, v4

    move v12, v14

    goto/16 :goto_11

    .line 315
    :cond_21
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    ushr-long v23, v15, v20

    move v12, v14

    const-wide/16 v28, 0xe0

    .end local v14    # "ref":I
    .local v12, "ref":I
    add-long v13, v23, v28

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v5

    .line 316
    add-int/lit8 v8, v8, -0x7

    :goto_d
    const/16 v5, 0xff

    if-lt v8, v5, :cond_22

    .line 317
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    aput-byte v17, p3, v3

    .line 316
    add-int/lit16 v8, v8, -0xff

    move v3, v5

    goto :goto_d

    .line 319
    .end local v5    # "op":I
    .restart local v3    # "op":I
    :cond_22
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    int-to-byte v13, v8

    aput-byte v13, p3, v3

    .line 320
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    and-long v13, v15, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v5

    move v5, v3

    move/from16 v25, v4

    goto/16 :goto_11

    .line 324
    .end local v3    # "op":I
    .end local v12    # "ref":I
    .restart local v5    # "op":I
    .restart local v14    # "ref":I
    :cond_23
    move v12, v14

    .end local v14    # "ref":I
    .restart local v12    # "ref":I
    if-ge v8, v3, :cond_24

    .line 325
    sub-long v15, v15, v24

    .line 326
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    shl-int/lit8 v13, v8, 0x5

    const/16 v14, 0x1f

    add-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, p3, v5

    .line 327
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    aput-byte v17, p3, v3

    .line 328
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    ushr-long v13, v15, v20

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v5

    .line 329
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    and-long v13, v15, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v3

    move/from16 v25, v4

    goto/16 :goto_11

    .line 331
    :cond_24
    sub-long v15, v15, v24

    .line 332
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    aput-byte v17, p3, v5

    .line 333
    add-int/lit8 v8, v8, -0x7

    :goto_e
    const/16 v5, 0xff

    if-lt v8, v5, :cond_25

    .line 334
    add-int/lit8 v13, v3, 0x1

    .end local v3    # "op":I
    .local v13, "op":I
    add-int v3, p4, v3

    aput-byte v17, p3, v3

    .line 333
    add-int/lit16 v8, v8, -0xff

    move v3, v13

    goto :goto_e

    .line 336
    .end local v13    # "op":I
    .restart local v3    # "op":I
    :cond_25
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    int-to-byte v13, v8

    aput-byte v13, p3, v3

    .line 337
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    aput-byte v17, p3, v5

    .line 338
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    ushr-long v13, v15, v20

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v3

    .line 339
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v5, p4, v5

    and-long v13, v15, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v5

    move v5, v3

    move/from16 v25, v4

    goto/16 :goto_11

    .line 343
    .end local v3    # "op":I
    .end local v12    # "ref":I
    .restart local v5    # "op":I
    .restart local v14    # "ref":I
    :cond_26
    move v12, v14

    .end local v14    # "ref":I
    .restart local v12    # "ref":I
    const/16 v13, 0x106

    if-le v8, v13, :cond_28

    .line 344
    :goto_f
    if-le v8, v13, :cond_27

    .line 345
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "op":I
    .local v14, "op":I
    add-int v5, p4, v5

    ushr-long v23, v15, v20

    move/from16 v25, v4

    const-wide/16 v28, 0xe0

    .end local v4    # "level":I
    .local v25, "level":I
    add-long v3, v23, v28

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v5

    .line 346
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "op":I
    .restart local v3    # "op":I
    add-int v4, p4, v14

    const/4 v14, -0x3

    aput-byte v14, p3, v4

    .line 347
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    and-long v13, v15, v21

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, p3, v3

    .line 348
    add-int/lit16 v8, v8, -0x106

    move/from16 v4, v25

    const/4 v3, 0x7

    const/16 v13, 0x106

    goto :goto_f

    .line 344
    .end local v25    # "level":I
    .restart local v4    # "level":I
    :cond_27
    move/from16 v25, v4

    .end local v4    # "level":I
    .restart local v25    # "level":I
    goto :goto_10

    .line 343
    .end local v25    # "level":I
    .restart local v4    # "level":I
    :cond_28
    move/from16 v25, v4

    .line 352
    .end local v4    # "level":I
    .restart local v25    # "level":I
    :goto_10
    const/4 v3, 0x7

    if-ge v8, v3, :cond_29

    .line 353
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v4, p4, v5

    shl-int/lit8 v5, v8, 0x5

    int-to-long v13, v5

    ushr-long v23, v15, v20

    add-long v13, v13, v23

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 354
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v3

    and-long v13, v15, v21

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    goto :goto_11

    .line 356
    :cond_29
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "op":I
    .restart local v3    # "op":I
    add-int v4, p4, v5

    ushr-long v13, v15, v20

    const-wide/16 v23, 0xe0

    add-long v13, v13, v23

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 357
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .local v4, "op":I
    add-int v3, p4, v3

    add-int/lit8 v5, v8, -0x7

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 358
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int v3, p4, v4

    and-long v13, v15, v21

    long-to-int v4, v13

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 364
    :goto_11
    add-int v3, p1, v2

    invoke-static {v0, v3}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v3

    .line 365
    .local v3, "hval":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "ip":I
    .local v4, "ip":I
    aput v2, v10, v3

    .line 368
    add-int v2, p1, v4

    invoke-static {v0, v2}, Lio/netty/handler/codec/compression/FastLz;->hashFunction([BI)I

    move-result v2

    .line 369
    .end local v3    # "hval":I
    .local v2, "hval":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ip":I
    .local v3, "ip":I
    aput v4, v10, v2

    .line 372
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .local v4, "op":I
    add-int v5, p4, v5

    const/16 v13, 0x1f

    aput-byte v13, p3, v5

    .line 374
    move v12, v3

    move v5, v4

    move/from16 v4, v25

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v13, 0x1f

    goto/16 :goto_4

    .line 391
    .end local v2    # "hval":I
    .end local v3    # "ip":I
    .end local v8    # "len":I
    .end local v15    # "distance":J
    .end local v18    # "anchor":I
    .end local v19    # "matchLabel":Z
    .end local v25    # "level":I
    .local v4, "level":I
    .restart local v5    # "op":I
    .local v12, "ip":I
    :cond_2a
    move/from16 v25, v4

    .end local v4    # "level":I
    .restart local v25    # "level":I
    const/4 v2, 0x1

    add-int/2addr v6, v2

    .line 392
    :goto_12
    if-gt v12, v6, :cond_2c

    .line 393
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "op":I
    .local v2, "op":I
    add-int v3, p4, v5

    add-int/lit8 v4, v12, 0x1

    .end local v12    # "ip":I
    .local v4, "ip":I
    add-int v5, p1, v12

    aget-byte v5, v0, v5

    aput-byte v5, p3, v3

    .line 394
    add-int/lit8 v9, v9, 0x1

    .line 395
    const/16 v3, 0x20

    if-ne v9, v3, :cond_2b

    .line 396
    const/4 v9, 0x0

    .line 397
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "op":I
    .restart local v5    # "op":I
    add-int v2, p4, v2

    const/16 v3, 0x1f

    aput-byte v3, p3, v2

    move v12, v4

    goto :goto_12

    .line 395
    .end local v5    # "op":I
    .restart local v2    # "op":I
    :cond_2b
    const/16 v3, 0x1f

    move v5, v2

    move v12, v4

    goto :goto_12

    .line 402
    .end local v2    # "op":I
    .end local v4    # "ip":I
    .restart local v5    # "op":I
    .restart local v12    # "ip":I
    :cond_2c
    if-eqz v9, :cond_2d

    .line 404
    add-int v2, p4, v5

    sub-int/2addr v2, v9

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v3, v9, -0x1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    goto :goto_13

    .line 406
    :cond_2d
    add-int/lit8 v5, v5, -0x1

    .line 409
    :goto_13
    move/from16 v4, v25

    const/4 v2, 0x2

    .end local v25    # "level":I
    .local v4, "level":I
    if-ne v4, v2, :cond_2e

    .line 411
    aget-byte v2, p3, p4

    const/16 v3, 0x20

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    .line 414
    :cond_2e
    return v5
.end method

.method static decompress([BII[BII)I
    .locals 26
    .param p0, "input"    # [B
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I
    .param p3, "output"    # [B
    .param p4, "outOffset"    # I
    .param p5, "outLength"    # I

    .line 428
    move/from16 v0, p2

    move/from16 v1, p5

    aget-byte v2, p0, p1

    const/4 v3, 0x5

    shr-int/2addr v2, v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 429
    .local v2, "level":I
    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    .line 430
    const-string v4, "invalid level: %d (expected: %d or %d)"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 438
    .local v6, "ip":I
    const/4 v7, 0x0

    .line 440
    .local v7, "op":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "ip":I
    .local v8, "ip":I
    add-int v6, p1, v6

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x1f

    int-to-long v9, v6

    .line 442
    .local v9, "ctrl":J
    const/4 v6, 0x1

    .line 445
    .local v6, "loop":I
    :goto_1
    move v11, v7

    .line 447
    .local v11, "ref":I
    shr-long v12, v9, v3

    .line 449
    .local v12, "len":J
    const-wide/16 v14, 0x1f

    and-long/2addr v14, v9

    const/16 v16, 0x8

    shl-long v14, v14, v16

    .line 451
    .local v14, "ofs":J
    const-wide/16 v17, 0x20

    cmp-long v17, v9, v17

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x1

    const/16 v3, 0xff

    if-ltz v17, :cond_d

    .line 452
    sub-long v12, v12, v20

    .line 454
    move/from16 v22, v6

    .end local v6    # "loop":I
    .local v22, "loop":I
    int-to-long v5, v11

    sub-long/2addr v5, v14

    long-to-int v5, v5

    .line 457
    .end local v11    # "ref":I
    .local v5, "ref":I
    const-wide/16 v23, 0x6

    cmp-long v6, v12, v23

    if-nez v6, :cond_4

    .line 458
    if-ne v2, v4, :cond_2

    .line 460
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "ip":I
    .local v6, "ip":I
    add-int v8, p1, v8

    aget-byte v8, p0, v8

    and-int/2addr v8, v3

    move v11, v5

    .end local v5    # "ref":I
    .restart local v11    # "ref":I
    int-to-long v4, v8

    add-long/2addr v12, v4

    move v8, v6

    goto :goto_3

    .line 458
    .end local v6    # "ip":I
    .end local v11    # "ref":I
    .restart local v5    # "ref":I
    .restart local v8    # "ip":I
    :cond_2
    move v11, v5

    .line 463
    .end local v5    # "ref":I
    .restart local v11    # "ref":I
    :goto_2
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "ip":I
    .local v4, "ip":I
    add-int v5, p1, v8

    aget-byte v5, p0, v5

    and-int/2addr v5, v3

    .line 464
    .local v5, "code":I
    move v8, v4

    .end local v4    # "ip":I
    .restart local v8    # "ip":I
    int-to-long v3, v5

    add-long/2addr v12, v3

    .line 465
    const/16 v3, 0xff

    if-eq v5, v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0xff

    goto :goto_2

    .line 457
    .end local v11    # "ref":I
    .local v5, "ref":I
    :cond_4
    move v11, v5

    .line 468
    .end local v5    # "ref":I
    .restart local v11    # "ref":I
    :goto_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 470
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "ip":I
    .local v3, "ip":I
    add-int v4, p1, v8

    aget-byte v4, p0, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    sub-int v4, v11, v4

    move v5, v7

    .end local v11    # "ref":I
    .local v4, "ref":I
    goto :goto_4

    .line 472
    .end local v3    # "ip":I
    .end local v4    # "ref":I
    .restart local v8    # "ip":I
    .restart local v11    # "ref":I
    :cond_5
    const/16 v5, 0xff

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "ip":I
    .restart local v3    # "ip":I
    add-int v4, p1, v8

    aget-byte v4, p0, v4

    and-int/2addr v4, v5

    .line 473
    .local v4, "code":I
    sub-int v8, v11, v4

    .line 478
    .end local v11    # "ref":I
    .local v8, "ref":I
    if-ne v4, v5, :cond_6

    const-wide/16 v24, 0x1f00

    cmp-long v6, v14, v24

    if-nez v6, :cond_6

    .line 479
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .restart local v6    # "ip":I
    add-int v3, p1, v3

    aget-byte v3, p0, v3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    int-to-long v14, v3

    .line 480
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "ip":I
    .restart local v3    # "ip":I
    add-int v6, p1, v6

    aget-byte v6, p0, v6

    and-int/lit16 v11, v6, 0xff

    move v5, v7

    .end local v7    # "op":I
    .local v5, "op":I
    int-to-long v6, v11

    add-long/2addr v14, v6

    .line 482
    int-to-long v6, v5

    sub-long/2addr v6, v14

    const-wide/16 v24, 0x1fff

    sub-long v6, v6, v24

    long-to-int v6, v6

    move v4, v6

    .end local v8    # "ref":I
    .local v6, "ref":I
    goto :goto_4

    .line 478
    .end local v5    # "op":I
    .end local v6    # "ref":I
    .restart local v7    # "op":I
    .restart local v8    # "ref":I
    :cond_6
    move v5, v7

    .line 487
    .end local v4    # "code":I
    .end local v7    # "op":I
    .restart local v5    # "op":I
    move v4, v8

    .end local v8    # "ref":I
    .local v4, "ref":I
    :goto_4
    int-to-long v6, v5

    add-long/2addr v6, v12

    const-wide/16 v24, 0x3

    add-long v6, v6, v24

    move-wide/from16 v24, v12

    .end local v12    # "len":J
    .local v24, "len":J
    int-to-long v11, v1

    cmp-long v6, v6, v11

    if-lez v6, :cond_7

    .line 488
    const/4 v6, 0x0

    return v6

    .line 494
    :cond_7
    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    if-gez v7, :cond_8

    .line 495
    return v6

    .line 498
    :cond_8
    if-ge v3, v0, :cond_9

    .line 499
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .local v6, "ip":I
    add-int v3, p1, v3

    aget-byte v3, p0, v3

    const/16 v7, 0xff

    and-int/2addr v3, v7

    int-to-long v9, v3

    move v3, v6

    move/from16 v6, v22

    goto :goto_5

    .line 501
    .end local v6    # "ip":I
    .restart local v3    # "ip":I
    :cond_9
    const/4 v6, 0x0

    .line 504
    .end local v22    # "loop":I
    .local v6, "loop":I
    :goto_5
    if-ne v4, v5, :cond_b

    .line 507
    add-int v7, p4, v4

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p3, v7

    .line 508
    .local v7, "b":B
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "op":I
    .local v8, "op":I
    add-int v5, p4, v5

    aput-byte v7, p3, v5

    .line 509
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "op":I
    .restart local v5    # "op":I
    add-int v8, p4, v8

    aput-byte v7, p3, v8

    .line 510
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "op":I
    .restart local v8    # "op":I
    add-int v5, p4, v5

    aput-byte v7, p3, v5

    move-wide/from16 v12, v24

    .line 511
    .end local v24    # "len":J
    .restart local v12    # "len":J
    :goto_6
    cmp-long v5, v12, v18

    if-eqz v5, :cond_a

    .line 512
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "op":I
    .restart local v5    # "op":I
    add-int v8, p4, v8

    aput-byte v7, p3, v8

    .line 513
    sub-long v12, v12, v20

    move v8, v5

    goto :goto_6

    .line 515
    .end local v5    # "op":I
    .end local v7    # "b":B
    .restart local v8    # "op":I
    :cond_a
    move v7, v8

    move v8, v3

    const/4 v3, 0x0

    goto/16 :goto_a

    .line 517
    .end local v8    # "op":I
    .end local v12    # "len":J
    .restart local v5    # "op":I
    .restart local v24    # "len":J
    :cond_b
    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 520
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "op":I
    .local v7, "op":I
    add-int v5, p4, v5

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ref":I
    .local v8, "ref":I
    add-int v4, p4, v4

    aget-byte v4, p3, v4

    aput-byte v4, p3, v5

    .line 521
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .local v4, "op":I
    add-int v5, p4, v7

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ref":I
    .local v7, "ref":I
    add-int v8, p4, v8

    aget-byte v8, p3, v8

    aput-byte v8, p3, v5

    .line 522
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "op":I
    .restart local v5    # "op":I
    add-int v4, p4, v4

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ref":I
    .restart local v8    # "ref":I
    add-int v7, p4, v7

    aget-byte v7, p3, v7

    aput-byte v7, p3, v4

    move-wide/from16 v12, v24

    .line 524
    .end local v24    # "len":J
    .restart local v12    # "len":J
    :goto_7
    cmp-long v4, v12, v18

    if-eqz v4, :cond_c

    .line 525
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "op":I
    .restart local v4    # "op":I
    add-int v5, p4, v5

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ref":I
    .restart local v7    # "ref":I
    add-int v8, p4, v8

    aget-byte v8, p3, v8

    aput-byte v8, p3, v5

    .line 526
    sub-long v12, v12, v20

    move v5, v4

    move v8, v7

    goto :goto_7

    .line 524
    .end local v4    # "op":I
    .end local v7    # "ref":I
    .restart local v5    # "op":I
    .restart local v8    # "ref":I
    :cond_c
    move v8, v3

    move v7, v5

    const/4 v3, 0x0

    goto :goto_a

    .line 530
    .end local v3    # "ip":I
    .end local v5    # "op":I
    .local v7, "op":I
    .local v8, "ip":I
    .restart local v11    # "ref":I
    :cond_d
    move/from16 v16, v4

    move/from16 v22, v6

    move v5, v7

    .end local v6    # "loop":I
    .end local v7    # "op":I
    .restart local v5    # "op":I
    .restart local v22    # "loop":I
    add-long v9, v9, v20

    .line 532
    int-to-long v3, v5

    add-long/2addr v3, v9

    int-to-long v6, v1

    cmp-long v3, v3, v6

    if-lez v3, :cond_e

    .line 533
    const/4 v3, 0x0

    return v3

    .line 535
    :cond_e
    const/4 v3, 0x0

    int-to-long v6, v8

    add-long/2addr v6, v9

    int-to-long v3, v0

    cmp-long v3, v6, v3

    if-lez v3, :cond_f

    .line 536
    const/4 v3, 0x0

    return v3

    .line 540
    :cond_f
    const/4 v3, 0x0

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "op":I
    .restart local v7    # "op":I
    add-int v4, p4, v5

    add-int/lit8 v5, v8, 0x1

    .end local v8    # "ip":I
    .local v5, "ip":I
    add-int v6, p1, v8

    aget-byte v6, p0, v6

    aput-byte v6, p3, v4

    .line 542
    sub-long v9, v9, v20

    :goto_8
    cmp-long v4, v9, v18

    if-eqz v4, :cond_10

    .line 544
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "op":I
    .restart local v4    # "op":I
    add-int v6, p4, v7

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ip":I
    .local v7, "ip":I
    add-int v5, p1, v5

    aget-byte v5, p0, v5

    aput-byte v5, p3, v6

    .line 542
    sub-long v9, v9, v20

    move v5, v7

    move v7, v4

    goto :goto_8

    .line 547
    .end local v4    # "op":I
    .restart local v5    # "ip":I
    .local v7, "op":I
    :cond_10
    if-ge v5, v0, :cond_11

    move/from16 v4, v16

    goto :goto_9

    :cond_11
    move v4, v3

    .line 548
    .end local v22    # "loop":I
    .local v4, "loop":I
    :goto_9
    if-eqz v4, :cond_12

    .line 550
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ip":I
    .local v6, "ip":I
    add-int v5, p1, v5

    aget-byte v5, p0, v5

    const/16 v8, 0xff

    and-int/2addr v5, v8

    int-to-long v8, v5

    move-wide v9, v8

    move v8, v6

    move v6, v4

    .end local v9    # "ctrl":J
    .local v8, "ctrl":J
    goto :goto_a

    .line 548
    .end local v6    # "ip":I
    .end local v8    # "ctrl":J
    .restart local v5    # "ip":I
    .restart local v9    # "ctrl":J
    :cond_12
    move v6, v4

    move v8, v5

    .line 555
    .end local v4    # "loop":I
    .end local v5    # "ip":I
    .end local v11    # "ref":I
    .end local v12    # "len":J
    .end local v14    # "ofs":J
    .local v6, "loop":I
    .local v8, "ip":I
    :goto_a
    if-nez v6, :cond_13

    .line 558
    return v7

    .line 555
    :cond_13
    move v5, v3

    move/from16 v4, v16

    const/4 v3, 0x5

    goto/16 :goto_1
.end method

.method private static hashFunction([BI)I
    .locals 3
    .param p0, "p"    # [B
    .param p1, "offset"    # I

    .line 562
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v0

    .line 563
    .local v0, "v":I
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lio/netty/handler/codec/compression/FastLz;->readU16([BI)I

    move-result v1

    shr-int/lit8 v2, v0, 0x3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 564
    and-int/lit16 v0, v0, 0x1fff

    .line 565
    return v0
.end method

.method private static readU16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 569
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 570
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 572
    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

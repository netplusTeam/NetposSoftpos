.class public Lcom/sleepycat/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 67
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 333
    iget-object v0, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 334
    .local v1, "length1":I
    iget v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int v3, v2, p1

    .line 335
    .local v3, "length2":I
    if-le v1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v4, v4, [B

    .line 336
    .local v4, "newData":[B
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput-object v4, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 338
    return-void
.end method


# virtual methods
.method encodeUTF8(Ljava/lang/String;II)Lcom/sleepycat/asm/ByteVector;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "maxByteLength"    # I

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 260
    .local v0, "charLength":I
    move v1, p2

    .line 262
    .local v1, "byteLength":I
    move v2, p2

    .local v2, "j":I
    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-ge v2, v0, :cond_2

    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 264
    .local v6, "c":C
    if-lt v6, v5, :cond_0

    if-gt v6, v3, :cond_0

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_0
    if-le v6, v4, :cond_1

    .line 267
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 262
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "j":I
    .end local v6    # "c":C
    :cond_2
    if-gt v1, p3, :cond_8

    .line 275
    iget v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    sub-int v6, v2, p2

    add-int/lit8 v6, v6, -0x2

    .line 276
    .local v6, "start":I
    if-ltz v6, :cond_3

    .line 277
    iget-object v7, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    ushr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 278
    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 280
    :cond_3
    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    iget-object v7, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v7, v7

    if-le v2, v7, :cond_4

    .line 281
    sub-int v2, v1, p2

    invoke-direct {p0, v2}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 283
    :cond_4
    iget v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 284
    .local v2, "len":I
    move v7, p2

    .local v7, "j":I
    :goto_2
    if-ge v7, v0, :cond_7

    .line 285
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 286
    .local v8, "c":C
    if-lt v8, v5, :cond_5

    if-gt v8, v3, :cond_5

    .line 287
    iget-object v9, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "len":I
    .local v10, "len":I
    int-to-byte v11, v8

    aput-byte v11, v9, v2

    move v2, v10

    goto :goto_3

    .line 288
    .end local v10    # "len":I
    .restart local v2    # "len":I
    :cond_5
    if-le v8, v4, :cond_6

    .line 289
    iget-object v9, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    .line 290
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "len":I
    .restart local v2    # "len":I
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 291
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "len":I
    .restart local v10    # "len":I
    and-int/lit8 v11, v8, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    move v2, v10

    goto :goto_3

    .line 293
    .end local v10    # "len":I
    .restart local v2    # "len":I
    :cond_6
    iget-object v9, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    .line 294
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "len":I
    .restart local v2    # "len":I
    and-int/lit8 v11, v8, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 284
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 297
    .end local v7    # "j":I
    .end local v8    # "c":C
    :cond_7
    iput v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 298
    return-object p0

    .line 273
    .end local v2    # "len":I
    .end local v6    # "start":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method put11(II)Lcom/sleepycat/asm/ByteVector;
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 98
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 99
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 100
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 103
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 104
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 105
    iput v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 106
    return-object p0
.end method

.method put12(II)Lcom/sleepycat/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I
    .param p2, "s"    # I

    .line 140
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 141
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 142
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 145
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 146
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 147
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 148
    iput v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 149
    return-object p0
.end method

.method public putByte(I)Lcom/sleepycat/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .line 78
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 79
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 83
    iput v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 84
    return-object p0
.end method

.method public putByteArray([BII)Lcom/sleepycat/asm/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 315
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 316
    invoke-direct {p0, p3}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :cond_1
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 322
    return-object p0
.end method

.method public putInt(I)Lcom/sleepycat/asm/ByteVector;
    .locals 4
    .param p1, "i"    # I

    .line 161
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 162
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 163
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 166
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 167
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 168
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 169
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 170
    iput v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 171
    return-object p0
.end method

.method public putLong(J)Lcom/sleepycat/asm/ByteVector;
    .locals 5
    .param p1, "l"    # J

    .line 183
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 184
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 185
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 188
    .local v1, "data":[B
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    .line 189
    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .local v3, "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 190
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 191
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 192
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 193
    long-to-int v2, p1

    .line 194
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 195
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 196
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 197
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 198
    iput v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 199
    return-object p0
.end method

.method public putShort(I)Lcom/sleepycat/asm/ByteVector;
    .locals 4
    .param p1, "s"    # I

    .line 118
    iget v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 119
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 120
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 123
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 124
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 125
    iput v0, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 126
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/sleepycat/asm/ByteVector;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    .local v0, "charLength":I
    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 215
    iget v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 216
    .local v2, "len":I
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 217
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3}, Lcom/sleepycat/asm/ByteVector;->enlarge(I)V

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/asm/ByteVector;->data:[B

    .line 226
    .local v3, "data":[B
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "len":I
    .local v4, "len":I
    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 227
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "len":I
    .restart local v2    # "len":I
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 228
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 230
    .local v5, "c":C
    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_1

    .line 231
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "len":I
    .local v6, "len":I
    int-to-byte v7, v5

    aput-byte v7, v3, v2

    .line 228
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 233
    .end local v6    # "len":I
    .restart local v2    # "len":I
    .restart local v5    # "c":C
    :cond_1
    iput v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 234
    invoke-virtual {p0, p1, v4, v1}, Lcom/sleepycat/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lcom/sleepycat/asm/ByteVector;

    move-result-object v1

    return-object v1

    .line 237
    .end local v4    # "i":I
    .end local v5    # "c":C
    :cond_2
    iput v2, p0, Lcom/sleepycat/asm/ByteVector;->length:I

    .line 238
    return-object p0

    .line 213
    .end local v2    # "len":I
    .end local v3    # "data":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

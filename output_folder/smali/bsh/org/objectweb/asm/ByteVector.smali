.class final Lbsh/org/objectweb/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v0, p1, [B

    iput-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 72
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 287
    iget-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 288
    .local v1, "length1":I
    iget v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int v3, v2, p1

    .line 289
    .local v3, "length2":I
    if-le v1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-array v4, v4, [B

    .line 290
    .local v4, "newData":[B
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v4, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 292
    return-void
.end method


# virtual methods
.method public put1(I)Lbsh/org/objectweb/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .line 83
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 84
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 85
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 87
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 88
    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 89
    return-object p0
.end method

.method public put11(II)Lbsh/org/objectweb/asm/ByteVector;
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 102
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 103
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 104
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 107
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 108
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 109
    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 110
    return-object p0
.end method

.method public put12(II)Lbsh/org/objectweb/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I
    .param p2, "s"    # I

    .line 143
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 144
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 145
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 148
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 149
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 150
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 151
    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 152
    return-object p0
.end method

.method public put2(I)Lbsh/org/objectweb/asm/ByteVector;
    .locals 4
    .param p1, "s"    # I

    .line 122
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 123
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 126
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 127
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 128
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 129
    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 130
    return-object p0
.end method

.method public put4(I)Lbsh/org/objectweb/asm/ByteVector;
    .locals 4
    .param p1, "i"    # I

    .line 164
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 165
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 166
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 168
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 169
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 170
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 171
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 172
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 173
    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 174
    return-object p0
.end method

.method public put8(J)Lbsh/org/objectweb/asm/ByteVector;
    .locals 5
    .param p1, "l"    # J

    .line 186
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 187
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 188
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 190
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 191
    .local v1, "data":[B
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    .line 192
    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .local v3, "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 193
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 194
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 195
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 196
    long-to-int v2, p1

    .line 197
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 198
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 199
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 200
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 201
    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 202
    return-object p0
.end method

.method public putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 269
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 270
    invoke-direct {p0, p3}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget v1, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    :cond_1
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 276
    return-object p0
.end method

.method public putUTF(Ljava/lang/String;)Lbsh/org/objectweb/asm/ByteVector;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 215
    .local v0, "charLength":I
    const/4 v1, 0x0

    .line 216
    .local v1, "byteLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    const/4 v5, 0x1

    if-ge v2, v0, :cond_2

    .line 217
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 218
    .local v6, "c":C
    if-lt v6, v5, :cond_0

    if-gt v6, v3, :cond_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_0
    if-le v6, v4, :cond_1

    .line 221
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 223
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 216
    .end local v6    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_2
    const v2, 0xffff

    if-gt v1, v2, :cond_7

    .line 229
    iget v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 230
    .local v2, "length":I
    add-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v7, v7

    if-le v6, v7, :cond_3

    .line 231
    add-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v6}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    .line 233
    :cond_3
    iget-object v6, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 234
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "length":I
    .local v7, "length":I
    ushr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 235
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "length":I
    .restart local v2    # "length":I
    int-to-byte v8, v1

    aput-byte v8, v6, v7

    .line 236
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_6

    .line 237
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 238
    .local v8, "c":C
    if-lt v8, v5, :cond_4

    if-gt v8, v3, :cond_4

    .line 239
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "length":I
    .local v9, "length":I
    int-to-byte v10, v8

    aput-byte v10, v6, v2

    move v2, v9

    goto :goto_3

    .line 240
    .end local v9    # "length":I
    .restart local v2    # "length":I
    :cond_4
    if-le v8, v4, :cond_5

    .line 241
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "length":I
    .restart local v9    # "length":I
    shr-int/lit8 v10, v8, 0xc

    and-int/lit8 v10, v10, 0xf

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v6, v2

    .line 242
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "length":I
    .restart local v2    # "length":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 243
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "length":I
    .restart local v9    # "length":I
    and-int/lit8 v10, v8, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v6, v2

    move v2, v9

    goto :goto_3

    .line 245
    .end local v9    # "length":I
    .restart local v2    # "length":I
    :cond_5
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "length":I
    .restart local v9    # "length":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x1f

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v6, v2

    .line 246
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "length":I
    .restart local v2    # "length":I
    and-int/lit8 v10, v8, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 236
    .end local v8    # "c":C
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 249
    .end local v7    # "i":I
    :cond_6
    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 250
    return-object p0

    .line 227
    .end local v2    # "length":I
    .end local v6    # "data":[B
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

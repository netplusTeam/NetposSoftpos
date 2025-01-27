.class public Lorg/apache/commons/codec/binary/Base16;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base16.java"


# static fields
.field private static final BITS_PER_ENCODED_BYTE:I = 0x4

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x2

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x1

.field private static final LOWER_CASE_DECODE_TABLE:[B

.field private static final LOWER_CASE_ENCODE_TABLE:[B

.field private static final MASK_4BITS:I = 0xf

.field private static final UPPER_CASE_DECODE_TABLE:[B

.field private static final UPPER_CASE_ENCODE_TABLE:[B


# instance fields
.field private final decodeTable:[B

.field private final encodeTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_DECODE_TABLE:[B

    .line 73
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_ENCODE_TABLE:[B

    .line 83
    const/16 v1, 0x67

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_DECODE_TABLE:[B

    .line 98
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_ENCODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_3
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
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base16;-><init>(Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "lowerCase"    # Z

    .line 129
    sget-object v0, Lorg/apache/commons/codec/binary/Base16;->DECODING_POLICY_DEFAULT:Lorg/apache/commons/codec/CodecPolicy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base16;-><init>(ZLorg/apache/commons/codec/CodecPolicy;)V

    .line 130
    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/codec/CodecPolicy;)V
    .locals 7
    .param p1, "lowerCase"    # Z
    .param p2, "decodingPolicy"    # Lorg/apache/commons/codec/CodecPolicy;

    .line 139
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3d

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIBLorg/apache/commons/codec/CodecPolicy;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    sget-object v0, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    .line 143
    sget-object v0, Lorg/apache/commons/codec/binary/Base16;->LOWER_CASE_DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    goto :goto_0

    .line 145
    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_ENCODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    .line 146
    sget-object v0, Lorg/apache/commons/codec/binary/Base16;->UPPER_CASE_DECODE_TABLE:[B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    .line 148
    :goto_0
    return-void
.end method

.method private decodeOctet(B)I
    .locals 4
    .param p1, "octet"    # B

    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, "decoded":I
    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 204
    aget-byte v0, v2, p1

    .line 207
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 211
    return v0

    .line 208
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid octet in encoded value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateTrailingCharacter()V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base16;->isStrictDecoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strict decoding: Last encoded character is a valid base 16 alphabetcharacter but not a possible encoding. Decoding requires at least two characters to create one byte."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 152
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    if-gez p3, :cond_0

    goto/16 :goto_3

    .line 160
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 161
    .local v0, "dataLen":I
    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v2, v0

    .line 164
    .local v2, "availableChars":I
    if-ne v2, v1, :cond_2

    if-ne v2, v0, :cond_2

    .line 165
    aget-byte v3, p1, p2

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 166
    return-void

    .line 170
    :cond_2
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v2, -0x1

    .line 172
    .local v4, "charsToProcess":I
    :goto_1
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base16;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v5

    .line 175
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 176
    .local v6, "i":I
    if-ge v0, v2, :cond_4

    .line 178
    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    sub-int/2addr v7, v1

    shl-int/lit8 v7, v7, 0x4

    .line 179
    .local v7, "result":I
    add-int/lit8 v8, p2, 0x1

    .end local p2    # "offset":I
    .local v8, "offset":I
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result p2

    or-int/2addr p2, v7

    .line 180
    .end local v7    # "result":I
    .local p2, "result":I
    const/4 v6, 0x2

    .line 182
    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    int-to-byte v9, p2

    aput-byte v9, v5, v7

    .line 185
    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    move p2, v8

    .line 188
    .end local v8    # "offset":I
    .local p2, "offset":I
    :cond_4
    :goto_2
    if-ge v6, v4, :cond_5

    .line 189
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result p2

    shl-int/lit8 p2, p2, 0x4

    .line 190
    .local p2, "result":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    aget-byte v3, p1, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result v3

    or-int/2addr p2, v3

    .line 191
    add-int/lit8 v6, v6, 0x2

    .line 192
    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v8, v3, 0x1

    iput v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    int-to-byte v8, p2

    aput-byte v8, v5, v3

    move p2, v7

    goto :goto_2

    .line 196
    .end local v7    # "offset":I
    .local p2, "offset":I
    :cond_5
    if-ge v6, v0, :cond_6

    .line 197
    aget-byte v3, p1, v6

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/binary/Base16;->decodeOctet(B)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 199
    :cond_6
    return-void

    .line 153
    .end local v0    # "dataLen":I
    .end local v2    # "availableChars":I
    .end local v4    # "charsToProcess":I
    .end local v5    # "buffer":[B
    .end local v6    # "i":I
    :cond_7
    :goto_3
    iput-boolean v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 154
    iget v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    if-eqz v0, :cond_8

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/codec/binary/Base16;->validateTrailingCharacter()V

    .line 157
    :cond_8
    return-void
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 216
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    if-gez p3, :cond_1

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 222
    return-void

    .line 225
    :cond_1
    mul-int/lit8 v0, p3, 0x2

    .line 226
    .local v0, "size":I
    if-ltz v0, :cond_3

    .line 230
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/codec/binary/Base16;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 232
    .local v1, "buffer":[B
    add-int v2, p2, p3

    .line 233
    .local v2, "end":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 234
    aget-byte v4, p1, v3

    .line 235
    .local v4, "value":I
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 236
    .local v5, "high":I
    and-int/lit8 v6, v4, 0xf

    .line 237
    .local v6, "low":I
    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    aget-byte v8, v8, v5

    aput-byte v8, v1, v7

    .line 238
    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base16;->encodeTable:[B

    aget-byte v8, v8, v6

    aput-byte v8, v1, v7

    .line 233
    .end local v4    # "value":I
    .end local v5    # "high":I
    .end local v6    # "low":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 227
    .end local v1    # "buffer":[B
    .end local v2    # "end":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input length exceeds maximum size for encoded data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isInAlphabet(B)Z
    .locals 3
    .param p1, "octet"    # B

    .line 251
    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base16;->decodeTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

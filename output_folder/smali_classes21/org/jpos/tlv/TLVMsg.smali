.class public Lorg/jpos/tlv/TLVMsg;
.super Ljava/lang/Object;
.source "TLVMsg.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final EXT_TAG_MASK:I = 0x1f

.field private static final SKIP_BYTE1:I = 0x0

.field private static final SKIP_BYTE2:I = 0xff


# instance fields
.field private final lengthSize:I

.field private final tag:I

.field private final tagSize:I

.field private final value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jpos/tlv/TLVMsg;-><init>(I[BII)V

    .line 87
    return-void
.end method

.method protected constructor <init>(I[BII)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # [B
    .param p3, "tagSize"    # I
    .param p4, "lengthSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/jpos/tlv/TLVMsg;->tag:I

    .line 92
    iput-object p2, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    .line 93
    iput p3, p0, Lorg/jpos/tlv/TLVMsg;->tagSize:I

    .line 94
    iput p4, p0, Lorg/jpos/tlv/TLVMsg;->lengthSize:I

    .line 96
    if-nez p3, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TLVMsg;->verifyTag(I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lorg/jpos/tlv/TLVMsg;->verifyTagLength(I)V

    .line 101
    :goto_0
    if-lez p4, :cond_1

    .line 102
    invoke-direct {p0, p2}, Lorg/jpos/tlv/TLVMsg;->verifyValue([B)V

    .line 104
    :cond_1
    return-void
.end method

.method private fitInArray([BI)[B
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .line 224
    new-array v0, p2, [B

    .line 225
    .local v0, "ret":[B
    array-length v1, p1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    .line 227
    array-length v1, v0

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 230
    :cond_0
    array-length v1, p1

    array-length v3, v0

    sub-int/2addr v1, v3

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    :goto_0
    return-object v0
.end method

.method private getLengthArray()[B
    .locals 3

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "length":I
    iget-object v1, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    if-eqz v1, :cond_0

    .line 237
    array-length v0, v1

    .line 239
    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 240
    .local v1, "ret":[B
    iget v2, p0, Lorg/jpos/tlv/TLVMsg;->lengthSize:I

    invoke-direct {p0, v1, v2}, Lorg/jpos/tlv/TLVMsg;->fitInArray([BI)[B

    move-result-object v2

    return-object v2
.end method

.method private isExtTagByte(I)Z
    .locals 2
    .param p1, "b"    # I

    .line 107
    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private verifyTag(I)V
    .locals 7
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    if-lez p1, :cond_7

    .line 135
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 136
    .local v0, "bi":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 137
    .local v1, "ba":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-nez v2, :cond_0

    .line 139
    array-length v2, v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 141
    :cond_0
    const/4 v2, 0x0

    .line 143
    .local v2, "idx":I
    :cond_1
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/16 v5, 0x10

    const-string v6, "Tag id: 0x"

    if-eqz v3, :cond_6

    .line 147
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_5

    .line 151
    aget-byte v3, v1, v2

    invoke-direct {p0, v3}, Lorg/jpos/tlv/TLVMsg;->isExtTagByte(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    array-length v3, v1

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shall contain subsequent byte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_3
    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    if-lt v3, v4, :cond_4

    .line 160
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 161
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 162
    return-void

    .line 157
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot contain subsequent byte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot contain in any 0xff byte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot contain in any 0x00 byte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v1    # "ba":[B
    .end local v2    # "idx":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag id must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyTagLength(I)V
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 165
    if-ltz p1, :cond_1

    .line 168
    const/4 v0, 0x1

    iget v1, p0, Lorg/jpos/tlv/TLVMsg;->tagSize:I

    shl-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 169
    .local v0, "maxTag":I
    add-int/lit8 v0, v0, -0x1

    .line 170
    if-gt p1, v0, :cond_0

    .line 172
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The tag id cannot be greater that: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    .end local v0    # "maxTag":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag id must be greater than or equals zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyValue([B)V
    .locals 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lorg/jpos/tlv/TLVMsg;->lengthSize:I

    shl-int/lit8 v1, v1, 0x3

    shl-int/2addr v0, v1

    .line 179
    .local v0, "maxLength":I
    add-int/lit8 v0, v0, -0x1

    .line 180
    array-length v1, p1

    if-gt v1, v0, :cond_1

    .line 182
    return-void

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The tag value length cannot exceed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 300
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    const-string v0, "<tag id=\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVMsg;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 303
    const-string v0, "\' value=\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVMsg;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    const-string v0, "\' />"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public getL()[B
    .locals 6

    .line 251
    iget v0, p0, Lorg/jpos/tlv/TLVMsg;->lengthSize:I

    if-lez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lorg/jpos/tlv/TLVMsg;->getLengthArray()[B

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 255
    new-array v0, v1, [B

    return-object v0

    .line 264
    :cond_1
    array-length v0, v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 266
    .local v0, "bi":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 268
    .local v2, "rBytes":[B
    iget-object v3, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    array-length v3, v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_2

    .line 269
    return-object v2

    .line 274
    :cond_2
    const/4 v3, 0x0

    aget-byte v5, v2, v3

    if-lez v5, :cond_3

    .line 275
    new-array v5, v1, [B

    invoke-static {v5, v2}, Lorg/jpos/iso/ISOUtil;->concat([B[B)[B

    move-result-object v2

    .line 276
    :cond_3
    array-length v5, v2

    sub-int/2addr v5, v1

    or-int/lit16 v1, v5, 0x80

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 278
    return-object v2
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTLV()[B
    .locals 9

    .line 202
    iget v0, p0, Lorg/jpos/tlv/TLVMsg;->tag:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "hexTag":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 204
    .local v1, "bTag":[B
    iget v2, p0, Lorg/jpos/tlv/TLVMsg;->tagSize:I

    if-lez v2, :cond_0

    .line 205
    invoke-direct {p0, v1, v2}, Lorg/jpos/tlv/TLVMsg;->fitInArray([BI)[B

    move-result-object v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVMsg;->getL()[B

    move-result-object v2

    .line 208
    .local v2, "bLen":[B
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVMsg;->getValue()[B

    move-result-object v3

    .line 209
    .local v3, "bVal":[B
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 211
    new-array v3, v4, [B

    .line 213
    :cond_1
    array-length v5, v1

    array-length v6, v2

    add-int/2addr v5, v6

    array-length v6, v3

    add-int/2addr v5, v6

    .line 214
    .local v5, "tLength":I
    new-array v6, v5, [B

    .line 215
    .local v6, "out":[B
    array-length v7, v1

    invoke-static {v1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    array-length v7, v1

    array-length v8, v2

    invoke-static {v2, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v7, v1

    array-length v8, v2

    add-int/2addr v7, v8

    array-length v8, v3

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    return-object v6
.end method

.method public getTag()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/jpos/tlv/TLVMsg;->tag:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 290
    iget v0, p0, Lorg/jpos/tlv/TLVMsg;->tag:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/jpos/tlv/TLVMsg;->value:[B

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/tlv/TLVMsg;->getStringValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    .line 293
    const-string v2, "[tag: 0x%s, %s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

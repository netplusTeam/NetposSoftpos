.class public final Lfr/devnied/bitlib/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# static fields
.field public static final BYTE_SIZE:I = 0x8

.field public static final BYTE_SIZE_F:F = 8.0f

.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_VALUE:I = 0xff

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final byteTab:[B

.field private currentBitIndex:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lfr/devnied/bitlib/BitUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lfr/devnied/bitlib/BitUtils;->LOGGER:Lorg/slf4j/Logger;

    .line 40
    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lfr/devnied/bitlib/BitUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pSize"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    int-to-float v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    .line 82
    iput p1, p0, Lfr/devnied/bitlib/BitUtils;->size:I

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "pByte"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    .line 70
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lfr/devnied/bitlib/BitUtils;->size:I

    .line 72
    return-void
.end method


# virtual methods
.method public addCurrentBitIndex(I)V
    .locals 1
    .param p1, "pIndex"    # I

    .line 92
    iget v0, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 93
    if-gez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 96
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 409
    iget-object v0, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 410
    invoke-virtual {p0}, Lfr/devnied/bitlib/BitUtils;->reset()V

    .line 411
    return-void
.end method

.method public getCurrentBitIndex()I
    .locals 1

    .line 104
    iget v0, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    return v0
.end method

.method public getData()[B
    .locals 4

    .line 113
    iget-object v0, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 114
    .local v1, "ret":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v1
.end method

.method public getMask(II)B
    .locals 3
    .param p1, "pIndex"    # I
    .param p2, "pLength"    # I

    .line 128
    const/4 v0, -0x1

    .line 130
    .local v0, "ret":B
    shl-int v1, v0, p1

    int-to-byte v0, v1

    .line 131
    and-int/lit16 v1, v0, 0xff

    shr-int/2addr v1, p1

    int-to-byte v0, v1

    .line 133
    add-int v1, p2, p1

    rsub-int/lit8 v1, v1, 0x8

    .line 134
    .local v1, "dec":I
    if-lez v1, :cond_0

    .line 135
    shr-int v2, v0, v1

    int-to-byte v0, v2

    .line 136
    shl-int v2, v0, v1

    int-to-byte v0, v2

    .line 138
    :cond_0
    return v0
.end method

.method public getNextBoolean()Z
    .locals 3

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "ret":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lfr/devnied/bitlib/BitUtils;->getNextInteger(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method public getNextByte(I)[B
    .locals 1
    .param p1, "pSize"    # I

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfr/devnied/bitlib/BitUtils;->getNextByte(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getNextByte(IZ)[B
    .locals 10
    .param p1, "pSize"    # I
    .param p2, "pShift"    # Z

    .line 185
    int-to-float v0, p1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [B

    .line 187
    .local v0, "tab":[B
    iget v1, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    rem-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "index":I
    add-int/2addr v1, p1

    .line 190
    .local v1, "max":I
    :goto_0
    iget v4, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    if-ge v4, v1, :cond_3

    .line 191
    rem-int/lit8 v5, v4, 0x8

    .line 192
    .local v5, "mod":I
    rem-int/lit8 v6, v2, 0x8

    .line 193
    .local v6, "modTab":I
    sub-int v4, v1, v4

    rsub-int/lit8 v7, v5, 0x8

    rsub-int/lit8 v8, v6, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 194
    .local v4, "length":I
    iget-object v7, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    iget v8, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    div-int/2addr v8, v3

    aget-byte v7, v7, v8

    invoke-virtual {p0, v5, v4}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v8

    and-int/2addr v7, v8

    int-to-byte v7, v7

    .line 195
    .local v7, "val":B
    if-nez p2, :cond_0

    rem-int/lit8 v8, p1, 0x8

    if-nez v8, :cond_2

    .line 196
    :cond_0
    if-eqz v5, :cond_1

    .line 197
    rsub-int/lit8 v8, v4, 0x8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    shl-int v8, v7, v8

    int-to-byte v7, v8

    goto :goto_1

    .line 199
    :cond_1
    and-int/lit16 v8, v7, 0xff

    shr-int/2addr v8, v6

    int-to-byte v7, v8

    .line 202
    :cond_2
    :goto_1
    div-int/lit8 v8, v2, 0x8

    aget-byte v9, v0, v8

    or-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 203
    iget v8, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v8, v4

    iput v8, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 204
    add-int/2addr v2, v4

    .line 205
    .end local v4    # "length":I
    .end local v5    # "mod":I
    .end local v6    # "modTab":I
    .end local v7    # "val":B
    goto :goto_0

    .line 206
    :cond_3
    if-nez p2, :cond_4

    rem-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_4

    .line 207
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    sub-int v6, v1, p1

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v3

    invoke-virtual {p0, v6, v3}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v3

    and-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 209
    .end local v1    # "max":I
    .end local v2    # "index":I
    :cond_4
    goto :goto_2

    .line 210
    :cond_5
    iget-object v2, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    div-int/2addr v1, v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    rem-int/lit8 v1, p1, 0x8

    .line 212
    .local v1, "val":I
    if-nez v1, :cond_6

    .line 213
    const/16 v1, 0x8

    .line 215
    :cond_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    iget v5, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    rem-int/2addr v5, v3

    invoke-virtual {p0, v5, v1}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v3

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 216
    iget v2, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 219
    .end local v1    # "val":I
    :goto_2
    return-object v0
.end method

.method public getNextDate(ILjava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "pSize"    # I
    .param p2, "pPattern"    # Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfr/devnied/bitlib/BitUtils;->getNextDate(ILjava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNextDate(ILjava/lang/String;Z)Ljava/util/Date;
    .locals 7
    .param p1, "pSize"    # I
    .param p2, "pPattern"    # Ljava/lang/String;
    .param p3, "pUseBcd"    # Z

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 252
    .local v2, "dateTxt":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lfr/devnied/bitlib/BitUtils;->getNextHexaString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lfr/devnied/bitlib/BitUtils;->getNextString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 262
    goto :goto_1

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, "e":Ljava/text/ParseException;
    sget-object v4, Lfr/devnied/bitlib/BitUtils;->LOGGER:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing date error. date:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pattern:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_1
    return-object v0
.end method

.method public getNextHexaString(I)Ljava/lang/String;
    .locals 1
    .param p1, "pSize"    # I

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfr/devnied/bitlib/BitUtils;->getNextByte(IZ)[B

    move-result-object v0

    invoke-static {v0}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextInteger(I)I
    .locals 2
    .param p1, "pLength"    # I

    .line 361
    invoke-virtual {p0, p1}, Lfr/devnied/bitlib/BitUtils;->getNextLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getNextIntegerSigned(I)I
    .locals 2
    .param p1, "pLength"    # I

    .line 301
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lfr/devnied/bitlib/BitUtils;->getNextLongSigned(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integer overflow with length > 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextLong(I)J
    .locals 14
    .param p1, "pLength"    # I

    .line 319
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 323
    .local v1, "finalValue":J
    const-wide/16 v3, 0x0

    .line 325
    .local v3, "currentValue":J
    move v5, p1

    .line 327
    .local v5, "readSize":I
    iget v6, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v6, p1

    .line 328
    .local v6, "max":I
    :goto_0
    iget v7, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    if-ge v7, v6, :cond_0

    .line 329
    rem-int/lit8 v8, v7, 0x8

    .line 331
    .local v8, "mod":I
    iget-object v9, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    div-int/lit8 v7, v7, 0x8

    aget-byte v7, v9, v7

    invoke-virtual {p0, v8, v5}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v9

    and-int/2addr v7, v9

    and-int/lit16 v7, v7, 0xff

    int-to-long v3, v7

    .line 333
    add-int v7, v8, v5

    const/16 v9, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 334
    .local v7, "dec":I
    const-wide/16 v10, 0xff

    and-long v12, v3, v10

    ushr-long/2addr v12, v7

    and-long v3, v12, v10

    .line 336
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    shl-long v9, v1, v9

    or-long v1, v9, v3

    .line 338
    rsub-int/lit8 v9, v8, 0x8

    .line 340
    .local v9, "val":I
    sub-int/2addr v5, v9

    .line 341
    iget v10, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v10, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 342
    .end local v7    # "dec":I
    .end local v8    # "mod":I
    .end local v9    # "val":I
    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 347
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    return-wide v7
.end method

.method public getNextLongSigned(I)J
    .locals 8
    .param p1, "pLength"    # I

    .line 283
    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Lfr/devnied/bitlib/BitUtils;->getNextLong(I)J

    move-result-wide v0

    .line 287
    .local v0, "decimal":J
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v2, v2

    .line 289
    .local v2, "signMask":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 290
    xor-long v4, v2, v0

    sub-long v4, v2, v4

    neg-long v4, v4

    return-wide v4

    .line 292
    :cond_0
    return-wide v0

    .line 284
    .end local v0    # "decimal":J
    .end local v2    # "signMask":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Long overflow with length > 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextString(I)Ljava/lang/String;
    .locals 1
    .param p1, "pSize"    # I

    .line 373
    sget-object v0, Lfr/devnied/bitlib/BitUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lfr/devnied/bitlib/BitUtils;->getNextString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "pSize"    # I
    .param p2, "pCharset"    # Ljava/nio/charset/Charset;

    .line 386
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lfr/devnied/bitlib/BitUtils;->getNextByte(IZ)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 395
    iget v0, p0, Lfr/devnied/bitlib/BitUtils;->size:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/devnied/bitlib/BitUtils;->setCurrentBitIndex(I)V

    .line 403
    return-void
.end method

.method public resetNextBits(I)V
    .locals 7
    .param p1, "pLength"    # I

    .line 420
    iget v0, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v0, p1

    .line 421
    .local v0, "max":I
    :goto_0
    iget v1, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    if-ge v1, v0, :cond_0

    .line 422
    rem-int/lit8 v2, v1, 0x8

    .line 423
    .local v2, "mod":I
    sub-int v1, v0, v1

    rsub-int/lit8 v3, v2, 0x8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 424
    .local v1, "length":I
    iget-object v3, p0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    iget v4, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    div-int/lit8 v4, v4, 0x8

    aget-byte v5, v3, v4

    invoke-virtual {p0, v2, v1}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 425
    iget v3, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 426
    .end local v1    # "length":I
    .end local v2    # "mod":I
    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method public setCurrentBitIndex(I)V
    .locals 0
    .param p1, "pCurrentBitIndex"    # I

    .line 436
    iput p1, p0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 437
    return-void
.end method

.method public setNextBoolean(Z)V
    .locals 2
    .param p1, "pBoolean"    # Z

    .line 446
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0, v0, v0}, Lfr/devnied/bitlib/BitUtils;->setNextInteger(II)V

    goto :goto_0

    .line 449
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lfr/devnied/bitlib/BitUtils;->setNextInteger(II)V

    .line 451
    :goto_0
    return-void
.end method

.method public setNextByte([BI)V
    .locals 1
    .param p1, "pValue"    # [B
    .param p2, "pLength"    # I

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lfr/devnied/bitlib/BitUtils;->setNextByte([BIZ)V

    .line 463
    return-void
.end method

.method public setNextByte([BIZ)V
    .locals 17
    .param p1, "pValue"    # [B
    .param p2, "pLength"    # I
    .param p3, "pPadBefore"    # Z

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    int-to-float v3, v2

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 477
    .local v3, "totalSize":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 478
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    array-length v5, v1

    sub-int v5, v3, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 479
    .local v5, "size":I
    if-eqz p3, :cond_0

    .line 480
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 481
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 484
    .end local v7    # "i":I
    :cond_0
    array-length v7, v1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v1, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 485
    if-nez p3, :cond_1

    .line 486
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v5, :cond_1

    .line 487
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 490
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 491
    .local v7, "tab":[B
    iget v8, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    rem-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_4

    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, "index":I
    add-int/2addr v8, v2

    .line 494
    .local v8, "max":I
    :goto_2
    iget v9, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    if-ge v9, v8, :cond_3

    .line 495
    rem-int/lit8 v10, v9, 0x8

    .line 496
    .local v10, "mod":I
    rem-int/lit8 v11, v6, 0x8

    .line 497
    .local v11, "modTab":I
    sub-int v9, v8, v9

    rsub-int/lit8 v12, v10, 0x8

    rsub-int/lit8 v13, v11, 0x8

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 498
    .local v9, "length":I
    div-int/lit8 v12, v6, 0x8

    aget-byte v12, v7, v12

    invoke-virtual {v0, v11, v9}, Lfr/devnied/bitlib/BitUtils;->getMask(II)B

    move-result v13

    and-int/2addr v12, v13

    int-to-byte v12, v12

    .line 499
    .local v12, "val":B
    if-nez v10, :cond_2

    .line 500
    rsub-int/lit8 v13, v9, 0x8

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    shl-int v13, v12, v13

    int-to-byte v12, v13

    goto :goto_3

    .line 502
    :cond_2
    and-int/lit16 v13, v12, 0xff

    shr-int/2addr v13, v10

    int-to-byte v12, v13

    .line 504
    :goto_3
    iget-object v13, v0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    iget v14, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    div-int/lit8 v15, v14, 0x8

    aget-byte v16, v13, v15

    or-int v1, v16, v12

    int-to-byte v1, v1

    aput-byte v1, v13, v15

    .line 505
    add-int/2addr v14, v9

    iput v14, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 506
    add-int/2addr v6, v9

    .line 507
    .end local v9    # "length":I
    .end local v10    # "mod":I
    .end local v11    # "modTab":I
    .end local v12    # "val":B
    move-object/from16 v1, p1

    goto :goto_2

    .line 509
    .end local v6    # "index":I
    .end local v8    # "max":I
    :cond_3
    goto :goto_4

    .line 510
    :cond_4
    iget-object v1, v0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    div-int/lit8 v8, v8, 0x8

    array-length v9, v7

    invoke-static {v7, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iget v1, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 513
    :goto_4
    return-void
.end method

.method public setNextDate(Ljava/util/Date;Ljava/lang/String;)V
    .locals 1
    .param p1, "pValue"    # Ljava/util/Date;
    .param p2, "pPattern"    # Ljava/lang/String;

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfr/devnied/bitlib/BitUtils;->setNextDate(Ljava/util/Date;Ljava/lang/String;Z)V

    .line 525
    return-void
.end method

.method public setNextDate(Ljava/util/Date;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pValue"    # Ljava/util/Date;
    .param p2, "pPattern"    # Ljava/lang/String;
    .param p3, "pUseBcd"    # Z

    .line 539
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "value":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 543
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v1, v2}, Lfr/devnied/bitlib/BitUtils;->setNextHexaString(Ljava/lang/String;I)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v1, v2}, Lfr/devnied/bitlib/BitUtils;->setNextString(Ljava/lang/String;I)V

    .line 547
    :goto_0
    return-void
.end method

.method public setNextHexaString(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pValue"    # Ljava/lang/String;
    .param p2, "pLength"    # I

    .line 558
    invoke-static {p1}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lfr/devnied/bitlib/BitUtils;->setNextByte([BI)V

    .line 559
    return-void
.end method

.method public setNextInteger(II)V
    .locals 3
    .param p1, "pValue"    # I
    .param p2, "pLength"    # I

    .line 632
    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    .line 636
    int-to-long v0, p1

    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v1, p2, v2}, Lfr/devnied/bitlib/BitUtils;->setNextValue(JII)V

    .line 637
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integer overflow with length > 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNextLong(JI)V
    .locals 2
    .param p1, "pValue"    # J
    .param p3, "pLength"    # I

    .line 574
    const/16 v0, 0x40

    if-gt p3, v0, :cond_0

    .line 578
    const/16 v0, 0x3f

    invoke-virtual {p0, p1, p2, p3, v0}, Lfr/devnied/bitlib/BitUtils;->setNextValue(JII)V

    .line 579
    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Long overflow with length > 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNextString(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pValue"    # Ljava/lang/String;
    .param p2, "pLength"    # I

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lfr/devnied/bitlib/BitUtils;->setNextString(Ljava/lang/String;IZ)V

    .line 650
    return-void
.end method

.method public setNextString(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pValue"    # Ljava/lang/String;
    .param p2, "pLength"    # I
    .param p3, "pPaddedBefore"    # Z

    .line 663
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lfr/devnied/bitlib/BitUtils;->setNextByte([BIZ)V

    .line 664
    return-void
.end method

.method protected setNextValue(JII)V
    .locals 18
    .param p1, "pValue"    # J
    .param p3, "pLength"    # I
    .param p4, "pMaxSize"    # I

    .line 592
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 594
    .local v1, "value":J
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    .line 595
    .local v3, "bitMax":J
    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 596
    const-wide/16 v5, 0x1

    sub-long v1, v3, v5

    .line 599
    :cond_0
    move/from16 v5, p3

    .line 600
    .local v5, "writeSize":I
    :goto_0
    if-lez v5, :cond_4

    .line 602
    iget v6, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    const/16 v7, 0x8

    rem-int/2addr v6, v7

    .line 603
    .local v6, "mod":I
    const/4 v8, 0x0

    .line 604
    .local v8, "ret":B
    if-nez v6, :cond_2

    if-le v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v10, p3

    goto :goto_2

    :cond_2
    :goto_1
    rsub-int/lit8 v9, v6, 0x8

    move/from16 v10, p3

    if-ge v10, v9, :cond_3

    .line 606
    :goto_2
    add-int v9, v5, v6

    rsub-int/lit8 v9, v9, 0x8

    shl-long v11, v1, v9

    long-to-int v9, v11

    int-to-byte v8, v9

    goto :goto_3

    .line 609
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v11, v9

    .line 610
    .local v11, "length":J
    int-to-long v13, v5

    sub-long/2addr v13, v11

    const-wide/16 v15, 0x8

    sub-long/2addr v15, v11

    move/from16 v17, v8

    .end local v8    # "ret":B
    .local v17, "ret":B
    int-to-long v7, v6

    sub-long/2addr v15, v7

    sub-long/2addr v13, v15

    long-to-int v7, v13

    shr-long v7, v1, v7

    long-to-int v7, v7

    int-to-byte v8, v7

    .line 612
    .end local v11    # "length":J
    .end local v17    # "ret":B
    .restart local v8    # "ret":B
    :goto_3
    iget-object v7, v0, Lfr/devnied/bitlib/BitUtils;->byteTab:[B

    iget v11, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    const/16 v9, 0x8

    div-int/2addr v11, v9

    aget-byte v9, v7, v11

    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v7, v11

    .line 613
    rsub-int/lit8 v7, v6, 0x8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v11, v7

    .line 614
    .local v11, "val":J
    int-to-long v13, v5

    sub-long/2addr v13, v11

    long-to-int v5, v13

    .line 615
    iget v7, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    int-to-long v13, v7

    add-long/2addr v13, v11

    long-to-int v7, v13

    iput v7, v0, Lfr/devnied/bitlib/BitUtils;->currentBitIndex:I

    .line 616
    .end local v6    # "mod":I
    .end local v8    # "ret":B
    .end local v11    # "val":J
    goto :goto_0

    .line 617
    :cond_4
    move/from16 v10, p3

    return-void
.end method

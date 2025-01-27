.class public final Lnet/sf/scuba/smartcards/CommandAPDU;
.super Ljava/lang/Object;
.source "CommandAPDU.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_APDU_SIZE:I = 0x10008

.field private static final serialVersionUID:J = 0x58875fe1cbe621dL


# instance fields
.field private apdu:[B

.field private transient dataOffset:I

.field private transient nc:I

.field private transient ne:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I

    .line 179
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    .line 180
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "ne"    # I

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    .line 199
    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B

    .line 219
    invoke-static {p5}, Lnet/sf/scuba/smartcards/CommandAPDU;->arrayLength([B)I

    move-result v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    .line 220
    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "ne"    # I

    .line 271
    invoke-static {p5}, Lnet/sf/scuba/smartcards/CommandAPDU;->arrayLength([B)I

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    .line 272
    return-void
.end method

.method public constructor <init>(IIII[BII)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "dataOffset"    # I
    .param p7, "dataLength"    # I

    .line 247
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BIII)V

    .line 248
    return-void
.end method

.method public constructor <init>(IIII[BIII)V
    .locals 13
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "data"    # [B
    .param p6, "dataOffset"    # I
    .param p7, "dataLength"    # I
    .param p8, "ne"    # I

    .line 384
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    invoke-direct {p0, v1, v2, v3}, Lnet/sf/scuba/smartcards/CommandAPDU;->checkArrayBounds([BII)V

    .line 386
    const v5, 0xffff

    if-gt v3, v5, :cond_c

    .line 389
    if-ltz v4, :cond_b

    .line 392
    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_a

    .line 395
    iput v4, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    .line 396
    iput v3, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    .line 397
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-nez v3, :cond_4

    .line 398
    if-nez v4, :cond_0

    .line 400
    new-array v5, v10, [B

    iput-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 401
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    goto/16 :goto_1

    .line 404
    :cond_0
    if-gt v4, v8, :cond_2

    .line 407
    if-eq v4, v8, :cond_1

    int-to-byte v7, v4

    :cond_1
    move v5, v7

    .line 408
    .local v5, "len":B
    new-array v6, v11, [B

    iput-object v6, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 409
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 410
    iget-object v6, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v5, v6, v10

    .line 411
    .end local v5    # "len":B
    goto/16 :goto_1

    .line 415
    :cond_2
    if-ne v4, v5, :cond_3

    .line 416
    const/4 v5, 0x0

    .line 417
    .local v5, "l1":B
    const/4 v7, 0x0

    .local v7, "l2":B
    goto :goto_0

    .line 419
    .end local v5    # "l1":B
    .end local v7    # "l2":B
    :cond_3
    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    .line 420
    .restart local v5    # "l1":B
    int-to-byte v7, v4

    .line 422
    .restart local v7    # "l2":B
    :goto_0
    new-array v8, v9, [B

    iput-object v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 423
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 424
    iget-object v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v5, v8, v11

    .line 425
    aput-byte v7, v8, v6

    .line 426
    .end local v5    # "l1":B
    .end local v7    # "l2":B
    goto/16 :goto_1

    .line 429
    :cond_4
    const/16 v12, 0xff

    if-nez v4, :cond_6

    .line 431
    if-gt v3, v12, :cond_5

    .line 433
    add-int/lit8 v5, v3, 0x5

    new-array v5, v5, [B

    iput-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 434
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 435
    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v10

    .line 436
    iput v11, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 437
    invoke-static {v1, v2, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 440
    :cond_5
    add-int/lit8 v5, v3, 0x7

    new-array v5, v5, [B

    iput-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 441
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 442
    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v7, v5, v10

    .line 443
    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v11

    .line 444
    int-to-byte v7, v3

    aput-byte v7, v5, v6

    .line 445
    iput v9, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 446
    invoke-static {v1, v2, v5, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 450
    :cond_6
    if-gt v3, v12, :cond_8

    if-gt v4, v8, :cond_8

    .line 452
    add-int/lit8 v5, v3, 0x6

    new-array v5, v5, [B

    iput-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 453
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 454
    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v10

    .line 455
    iput v11, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 456
    invoke-static {v1, v2, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v8, :cond_7

    int-to-byte v7, v4

    :cond_7
    aput-byte v7, v5, v6

    goto :goto_1

    .line 460
    :cond_8
    add-int/lit8 v8, v3, 0x9

    new-array v8, v8, [B

    iput-object v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 461
    invoke-direct/range {p0 .. p4}, Lnet/sf/scuba/smartcards/CommandAPDU;->setHeader(IIII)V

    .line 462
    iget-object v8, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    aput-byte v7, v8, v10

    .line 463
    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v8, v11

    .line 464
    int-to-byte v7, v3

    aput-byte v7, v8, v6

    .line 465
    iput v9, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 466
    invoke-static {v1, v2, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    if-eq v4, v5, :cond_9

    .line 468
    iget-object v5, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    .line 469
    .local v6, "leOfs":I
    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 470
    add-int/lit8 v7, v6, 0x1

    int-to-byte v8, v4

    aput-byte v8, v5, v7

    .line 475
    .end local v6    # "leOfs":I
    :cond_9
    :goto_1
    return-void

    .line 393
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ne is too large"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 390
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ne must not be negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 387
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "dataLength is too large"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "apdu"    # Ljava/nio/ByteBuffer;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 165
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    .line 167
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 100
    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    .line 101
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "apdu"    # [B
    .param p2, "apduOffset"    # I
    .param p3, "apduLength"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/scuba/smartcards/CommandAPDU;->checkArrayBounds([BII)V

    .line 124
    new-array v0, p3, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 125
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    .line 127
    return-void
.end method

.method private static arrayLength([B)I
    .locals 1
    .param p0, "b"    # [B

    .line 275
    if-eqz p0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkArrayBounds([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "ofs"    # I
    .param p3, "len"    # I

    .line 130
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 134
    if-nez p1, :cond_1

    .line 135
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset and length must be 0 if array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    .line 145
    :cond_2
    :goto_0
    return-void

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset plus length exceed array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset and length must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse()V
    .locals 10

    .line 293
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_e

    .line 296
    array-length v1, v0

    if-ne v1, v2, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 301
    .local v1, "l1":I
    array-length v2, v0

    const/16 v3, 0x100

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 303
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    .line 304
    return-void

    .line 306
    :cond_2
    const-string v2, ", b1="

    const-string v5, "Invalid APDU: length="

    if-eqz v1, :cond_6

    .line 307
    array-length v6, v0

    add-int/lit8 v7, v1, 0x5

    if-ne v6, v7, :cond_3

    .line 309
    iput v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    .line 310
    iput v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 311
    return-void

    .line 312
    :cond_3
    array-length v6, v0

    add-int/lit8 v7, v1, 0x6

    if-ne v6, v7, :cond_5

    .line 314
    iput v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    .line 315
    iput v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 316
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 317
    .local v0, "l2":I
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    .line 318
    return-void

    .line 320
    .end local v0    # "l2":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_6
    array-length v3, v0

    const/4 v6, 0x7

    if-lt v3, v6, :cond_d

    .line 328
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 329
    .local v3, "l2":I
    array-length v4, v0

    const/high16 v7, 0x10000

    if-ne v4, v6, :cond_8

    .line 331
    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v7, v3

    :goto_2
    iput v7, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    .line 332
    return-void

    .line 334
    :cond_8
    const-string v4, ", b2||b3="

    if-eqz v3, :cond_c

    .line 338
    array-length v8, v0

    add-int/lit8 v9, v3, 0x7

    if-ne v8, v9, :cond_9

    .line 340
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    .line 341
    iput v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 342
    return-void

    .line 343
    :cond_9
    array-length v8, v0

    add-int/lit8 v9, v3, 0x9

    if-ne v8, v9, :cond_b

    .line 345
    iput v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    .line 346
    iput v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    .line 347
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    .line 348
    .local v2, "leOfs":I
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    .line 349
    .local v0, "l3":I
    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move v7, v0

    :goto_3
    iput v7, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    .line 350
    .end local v0    # "l3":I
    .end local v2    # "leOfs":I
    nop

    .line 354
    return-void

    .line 351
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    .end local v3    # "l2":I
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    .end local v1    # "l1":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "apdu must be at least 4 bytes long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 606
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    .line 608
    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->parse()V

    .line 609
    return-void
.end method

.method private setHeader(IIII)V
    .locals 3
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I

    .line 478
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 479
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 480
    int-to-byte v1, p3

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 481
    int-to-byte v1, p4

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 482
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 584
    if-ne p0, p1, :cond_0

    .line 585
    const/4 v0, 0x1

    return v0

    .line 587
    :cond_0
    instance-of v0, p1, Lnet/sf/scuba/smartcards/CommandAPDU;

    if-nez v0, :cond_1

    .line 588
    const/4 v0, 0x0

    return v0

    .line 590
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/sf/scuba/smartcards/CommandAPDU;

    .line 591
    .local v0, "other":Lnet/sf/scuba/smartcards/CommandAPDU;
    iget-object v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    iget-object v2, v0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 561
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCLA()I
    .locals 2

    .line 490
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getData()[B
    .locals 5

    .line 540
    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    new-array v1, v0, [B

    .line 541
    .local v1, "data":[B
    iget-object v2, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    iget v3, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->dataOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    return-object v1
.end method

.method public getINS()I
    .locals 2

    .line 499
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getNc()I
    .locals 1

    .line 529
    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    return v0
.end method

.method public getNe()I
    .locals 1

    .line 552
    iget v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    return v0
.end method

.method public getP1()I
    .locals 2

    .line 508
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getP2()I
    .locals 2

    .line 517
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 601
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommmandAPDU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->apdu:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes, nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->nc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/CommandAPDU;->ne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lio/netty/handler/codec/base64/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/base64/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decoder"
.end annotation


# instance fields
.field private final b4:[B

.field private b4Posn:I

.field private decodabet:[B

.field private dest:Lio/netty/buffer/ByteBuf;

.field private outBuffPosn:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/base64/Base64$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/base64/Base64$1;

    .line 310
    invoke-direct {p0}, Lio/netty/handler/codec/base64/Base64$Decoder;-><init>()V

    return-void
.end method

.method private static decode4to3([BLio/netty/buffer/ByteBuf;I[B)I
    .locals 10
    .param p0, "src"    # [B
    .param p1, "dest"    # Lio/netty/buffer/ByteBuf;
    .param p2, "destOffset"    # I
    .param p3, "decodabet"    # [B

    .line 354
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 355
    .local v0, "src0":B
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    .line 356
    .local v2, "src1":B
    const/4 v3, 0x2

    aget-byte v4, p0, v3

    .line 358
    .local v4, "src2":B
    const/16 v5, 0x3d

    const-string v6, "not encoded in Base64"

    if-ne v4, v5, :cond_0

    .line 361
    :try_start_0
    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x2

    aget-byte v5, p3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    .line 364
    .local v3, "decodedValue":I
    nop

    .line 365
    invoke-virtual {p1, p2, v3}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 366
    return v1

    .line 362
    .end local v3    # "decodedValue":I
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ignored":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    .end local v1    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v1, 0x3

    aget-byte v7, p0, v1

    .line 370
    .local v7, "src3":B
    if-ne v7, v5, :cond_2

    .line 372
    aget-byte v1, p3, v2

    .line 375
    .local v1, "b1":B
    :try_start_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v8, :cond_1

    .line 378
    aget-byte v5, p3, v0

    and-int/lit8 v5, v5, 0x3f

    shl-int/2addr v5, v3

    and-int/lit16 v8, v1, 0xf0

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    aget-byte v6, p3, v4

    and-int/lit16 v6, v6, 0xfc

    ushr-int/2addr v6, v3

    or-int/2addr v5, v6

    .local v5, "decodedValue":I
    goto :goto_0

    .line 382
    .end local v5    # "decodedValue":I
    :cond_1
    aget-byte v5, p3, v0

    and-int/lit8 v5, v5, 0x3f

    shl-int/2addr v5, v3

    and-int/lit16 v8, v1, 0xf0

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v5, v8

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x4

    aget-byte v6, p3, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v6, v6, 0xfc

    ushr-int/2addr v6, v3

    or-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 387
    .restart local v5    # "decodedValue":I
    :goto_0
    nop

    .line 388
    invoke-virtual {p1, p2, v5}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 389
    return v3

    .line 385
    .end local v5    # "decodedValue":I
    :catch_1
    move-exception v3

    .line 386
    .local v3, "ignored":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 394
    .end local v1    # "b1":B
    .end local v3    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v8, :cond_3

    .line 395
    aget-byte v3, p3, v0

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x12

    aget-byte v5, p3, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v3, v5

    aget-byte v5, p3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    aget-byte v5, p3, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .local v3, "decodedValue":I
    goto :goto_1

    .line 400
    .end local v3    # "decodedValue":I
    :cond_3
    aget-byte v5, p3, v2

    .line 401
    .local v5, "b1":B
    aget-byte v8, p3, v4

    .line 407
    .local v8, "b2":B
    aget-byte v9, p3, v0

    and-int/lit8 v9, v9, 0x3f

    shl-int/lit8 v3, v9, 0x2

    and-int/lit8 v9, v5, 0xf

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v3, v9

    and-int/lit16 v9, v5, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v9, v8, 0x3

    shl-int/lit8 v9, v9, 0x16

    or-int/2addr v3, v9

    and-int/lit16 v9, v8, 0xfc

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v3, v9

    aget-byte v6, p3, v7
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    .line 420
    .end local v5    # "b1":B
    .end local v8    # "b2":B
    .restart local v3    # "decodedValue":I
    :goto_1
    nop

    .line 421
    invoke-virtual {p1, p2, v3}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 422
    return v1

    .line 418
    .end local v3    # "decodedValue":I
    :catch_2
    move-exception v1

    .line 419
    .local v1, "ignored":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method decode(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p5, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 318
    invoke-static {p3}, Lio/netty/handler/codec/base64/Base64;->decodedBufferSize(I)I

    move-result v0

    invoke-interface {p4, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    .line 320
    invoke-static {p5}, Lio/netty/handler/codec/base64/Base64;->access$100(Lio/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    .line 322
    :try_start_0
    invoke-virtual {p1, p2, p3, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    .line 323
    iget-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x0

    iget v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 326
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 327
    const/4 v1, 0x0

    return-object v1
.end method

.method public process(B)Z
    .locals 6
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    if-lez p1, :cond_2

    .line 334
    iget-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    aget-byte v1, v0, p1

    .line 335
    .local v1, "sbiDecode":B
    const/4 v2, -0x5

    if-lt v1, v2, :cond_2

    .line 336
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 337
    iget-object v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    iget v4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    aput-byte p1, v2, v4

    .line 338
    const/4 v4, 0x3

    if-le v5, v4, :cond_1

    .line 339
    iget v4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    iget-object v5, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-static {v2, v5, v4, v0}, Lio/netty/handler/codec/base64/Base64$Decoder;->decode4to3([BLio/netty/buffer/ByteBuf;I[B)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    .line 343
    const/16 v2, 0x3d

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    return v3

    .line 346
    :cond_1
    return v3

    .line 349
    .end local v1    # "sbiDecode":B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Base64 input character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

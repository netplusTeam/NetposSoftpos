.class final Lio/netty/buffer/FixedCompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "FixedCompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/FixedCompositeByteBuf$Component;
    }
.end annotation


# static fields
.field private static final EMPTY:[Lio/netty/buffer/ByteBuf;


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;

.field private final buffers:[Lio/netty/buffer/ByteBuf;

.field private final capacity:I

.field private final direct:Z

.field private final nioBufferCount:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/netty/buffer/FixedCompositeByteBuf;->EMPTY:[Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;[Lio/netty/buffer/ByteBuf;)V
    .locals 8
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 46
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 47
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lio/netty/buffer/FixedCompositeByteBuf;->EMPTY:[Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    .line 49
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    .line 51
    iput v1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    .line 52
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    goto :goto_1

    .line 54
    :cond_0
    aget-object v0, p2, v1

    .line 55
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    iput-object p2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    .line 56
    const/4 v2, 0x1

    .line 57
    .local v2, "direct":Z
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    .line 58
    .local v3, "nioBufferCount":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 59
    .local v4, "capacity":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    iput-object v5, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    .line 60
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_3

    .line 61
    aget-object v0, p2, v5

    .line 62
    aget-object v6, p2, v5

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    iget-object v7, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_2

    .line 65
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 66
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    add-int/2addr v4, v6

    .line 67
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v6

    if-nez v6, :cond_1

    .line 68
    const/4 v2, 0x0

    .line 60
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "All ByteBufs need to have same ByteOrder"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v5    # "i":I
    :cond_3
    iput v3, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    .line 72
    iput v4, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    .line 73
    iput-boolean v2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    .line 75
    .end local v0    # "b":Lio/netty/buffer/ByteBuf;
    .end local v2    # "direct":Z
    .end local v3    # "nioBufferCount":I
    .end local v4    # "capacity":I
    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 76
    iput-object p1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 77
    return-void
.end method

.method private buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "i"    # I

    .line 256
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    aget-object v0, v0, p1

    .line 257
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    instance-of v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    iget-object v1, v1, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .locals 6
    .param p1, "index"    # I

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "readable":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, "comp":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    aget-object v2, v2, v1

    .line 234
    .local v2, "b":Lio/netty/buffer/ByteBuf;
    instance-of v4, v2, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    if-eqz v4, :cond_0

    .line 235
    move-object v3, v2

    check-cast v3, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    .line 236
    iget-object v2, v3, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 238
    :cond_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v0, v4

    .line 239
    if-ge p1, v0, :cond_2

    .line 240
    if-nez v3, :cond_1

    .line 243
    new-instance v4, Lio/netty/buffer/FixedCompositeByteBuf$Component;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int v5, v0, v5

    invoke-direct {v4, v1, v5, v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;-><init>(IILio/netty/buffer/ByteBuf;)V

    move-object v3, v4

    .line 244
    iget-object v4, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    aput-object v3, v4, v1

    .line 246
    :cond_1
    return-object v3

    .line 231
    .end local v2    # "b":Lio/netty/buffer/ByteBuf;
    .end local v3    # "comp":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .line 267
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 268
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 321
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 322
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 323
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    return v1

    .line 324
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 325
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getIntLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 333
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 334
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 335
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result v1

    return v1

    .line 336
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 337
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 339
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .line 345
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 346
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 347
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 348
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 349
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1

    .line 351
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/FixedCompositeByteBuf;->_getInt(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getLongLE(I)J
    .locals 8
    .param p1, "index"    # I

    .line 357
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 358
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 359
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v1

    return-wide v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 361
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 363
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/FixedCompositeByteBuf;->_getIntLE(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 273
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 274
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 275
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    return v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getShortLE(I)S
    .locals 3
    .param p1, "index"    # I

    .line 285
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 286
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 287
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v1

    return v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 291
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 4
    .param p1, "index"    # I

    .line 297
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 298
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 299
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v1

    return v1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 303
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 309
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 310
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 311
    iget-object v1, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v1

    return v1

    .line 312
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 313
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 315
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected _setByte(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 116
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 156
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setIntLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 161
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 171
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setLongLE(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 176
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setMedium(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 141
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setMediumLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 146
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setShort(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 126
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method protected _setShortLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 131
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 211
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 616
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    .line 622
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 620
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 618
    :pswitch_1
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public arrayOffset()I
    .locals 2

    .line 628
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 632
    :pswitch_0
    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    return v0

    .line 630
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public capacity()I
    .locals 1

    .line 196
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "newCapacity"    # I

    .line 206
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 514
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/FixedCompositeByteBuf;->checkIndex(II)V

    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "release":Z
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 518
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v1, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const/4 v0, 0x0

    .line 520
    nop

    .line 522
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 520
    :cond_0
    return-object v1

    .line 522
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 525
    :cond_1
    throw v2
.end method

.method protected deallocate()V
    .locals 2

    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 665
    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 91
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 262
    invoke-virtual {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 472
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/FixedCompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1

    .line 475
    :cond_0
    const-wide/16 v1, 0x0

    .line 476
    .local v1, "writtenBytes":J
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 477
    .local v6, "buf":Ljava/nio/ByteBuffer;
    add-long v7, p3, v1

    invoke-virtual {p2, v6, v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 476
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 480
    const v3, 0x7fffffff

    return v3

    .line 482
    :cond_2
    long-to-int v3, v1

    return v3
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 456
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/FixedCompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 459
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 460
    .local v1, "writtenBytes":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 461
    const v3, 0x7fffffff

    return v3

    .line 463
    :cond_1
    long-to-int v3, v1

    return v3
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 428
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->checkDstIndex(IIII)V

    .line 429
    if-nez p4, :cond_0

    .line 430
    return-object p0

    .line 433
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 434
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    .line 435
    .local v1, "i":I
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    .line 436
    .local v2, "adjustment":I
    iget-object v3, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 438
    .local v3, "s":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int v5, p1, v2

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 439
    .local v4, "localLength":I
    sub-int v5, p1, v2

    invoke-virtual {v3, v5, p2, p3, v4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 440
    add-int/2addr p1, v4

    .line 441
    add-int/2addr p3, v4

    .line 442
    sub-int/2addr p4, v4

    .line 443
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    add-int/2addr v2, v5

    .line 444
    if-gtz p4, :cond_1

    .line 445
    nop

    .line 449
    .end local v4    # "localLength":I
    return-object p0

    .line 447
    .restart local v4    # "localLength":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 448
    .end local v4    # "localLength":I
    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/FixedCompositeByteBuf;->checkIndex(II)V

    .line 490
    if-nez p3, :cond_0

    .line 491
    return-object p0

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 495
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    .line 496
    .local v1, "i":I
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    .line 497
    .local v2, "adjustment":I
    iget-object v3, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 499
    .local v3, "s":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int v5, p1, v2

    sub-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 500
    .local v4, "localLength":I
    sub-int v5, p1, v2

    invoke-virtual {v3, v5, p2, v4}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 501
    add-int/2addr p1, v4

    .line 502
    sub-int/2addr p3, v4

    .line 503
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    add-int/2addr v2, v5

    .line 504
    if-gtz p3, :cond_1

    .line 505
    nop

    .line 509
    .end local v4    # "localLength":I
    return-object p0

    .line 507
    .restart local v4    # "localLength":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 508
    .end local v4    # "localLength":I
    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 396
    .local v0, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 398
    .local v1, "length":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->checkIndex(II)V

    .line 399
    if-nez v1, :cond_0

    .line 400
    return-object p0

    .line 404
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v2

    .line 405
    .local v2, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    invoke-static {v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v3

    .line 406
    .local v3, "i":I
    invoke-static {v2}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v4

    .line 407
    .local v4, "adjustment":I
    iget-object v5, v2, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 409
    .local v5, "s":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    sub-int v7, p1, v4

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 410
    .local v6, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 411
    sub-int v7, p1, v4

    invoke-virtual {v5, v7, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 412
    add-int/2addr p1, v6

    .line 413
    sub-int/2addr v1, v6

    .line 414
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v4, v7

    .line 415
    if-gtz v1, :cond_1

    .line 416
    nop

    .line 421
    .end local v2    # "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .end local v3    # "i":I
    .end local v4    # "adjustment":I
    .end local v5    # "s":Lio/netty/buffer/ByteBuf;
    .end local v6    # "localLength":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 422
    nop

    .line 423
    return-object p0

    .line 418
    .restart local v2    # "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .restart local v3    # "i":I
    .restart local v4    # "adjustment":I
    .restart local v5    # "s":Lio/netty/buffer/ByteBuf;
    .restart local v6    # "localLength":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v7

    .line 419
    .end local v6    # "localLength":I
    goto :goto_0

    .line 421
    .end local v2    # "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .end local v3    # "i":I
    .end local v4    # "adjustment":I
    .end local v5    # "s":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 422
    throw v2
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 369
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->checkDstIndex(IIII)V

    .line 370
    if-nez p4, :cond_0

    .line 371
    return-object p0

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v0

    .line 375
    .local v0, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v1

    .line 376
    .local v1, "i":I
    invoke-static {v0}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    .line 377
    .local v2, "adjustment":I
    iget-object v3, v0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 379
    .local v3, "s":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int v5, p1, v2

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 380
    .local v4, "localLength":I
    sub-int v5, p1, v2

    invoke-virtual {v3, v5, p2, p3, v4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 381
    add-int/2addr p1, v4

    .line 382
    add-int/2addr p3, v4

    .line 383
    sub-int/2addr p4, v4

    .line 384
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    add-int/2addr v2, v5

    .line 385
    if-gtz p4, :cond_1

    .line 386
    nop

    .line 390
    .end local v4    # "localLength":I
    return-object p0

    .line 388
    .restart local v4    # "localLength":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 389
    .end local v4    # "localLength":I
    goto :goto_0
.end method

.method public hasArray()Z
    .locals 2

    .line 604
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 610
    return v1

    .line 608
    :pswitch_0
    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0

    .line 606
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMemoryAddress()Z
    .locals 2

    .line 640
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 646
    return v1

    .line 644
    :pswitch_0
    invoke-direct {p0, v1}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    .line 642
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 556
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDirect()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->direct:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .locals 1
    .param p1, "size"    # I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public maxCapacity()I
    .locals 1

    .line 201
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->capacity:I

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .line 652
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 656
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    .line 654
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 535
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/FixedCompositeByteBuf;->checkIndex(II)V

    .line 536
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 538
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 539
    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 542
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/FixedCompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 543
    .local v0, "merged":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/FixedCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 546
    .local v1, "buffers":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 547
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 551
    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 530
    iget v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->nioBufferCount:I

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 564
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/FixedCompositeByteBuf;->checkIndex(II)V

    .line 565
    if-nez p2, :cond_0

    .line 566
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    return-object v0

    .line 569
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v0, v0

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    .line 571
    .local v0, "array":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;->findComponent(I)Lio/netty/buffer/FixedCompositeByteBuf$Component;

    move-result-object v1

    .line 572
    .local v1, "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    invoke-static {v1}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v2

    .line 573
    .local v2, "i":I
    invoke-static {v1}, Lio/netty/buffer/FixedCompositeByteBuf$Component;->access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I

    move-result v3

    .line 574
    .local v3, "adjustment":I
    iget-object v4, v1, Lio/netty/buffer/FixedCompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 576
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    sub-int v6, p1, v3

    sub-int/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 577
    .local v5, "localLength":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 584
    sub-int v6, p1, v3

    invoke-virtual {v4, v6, v5}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v6

    goto :goto_1

    .line 581
    :pswitch_0
    sub-int v6, p1, v3

    invoke-virtual {v4, v6, v5}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    goto :goto_2

    .line 579
    :pswitch_1
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v0    # "array":Lio/netty/util/internal/RecyclableArrayList;
    .end local p1    # "index":I
    .end local p2    # "length":I
    throw v6

    .line 584
    .restart local v0    # "array":Lio/netty/util/internal/RecyclableArrayList;
    .restart local p1    # "index":I
    .restart local p2    # "length":I
    :goto_1
    invoke-static {v0, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 587
    :goto_2
    add-int/2addr p1, v5

    .line 588
    sub-int/2addr p2, v5

    .line 589
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    add-int/2addr v3, v6

    .line 590
    if-gtz p2, :cond_1

    .line 591
    nop

    .line 596
    .end local v5    # "localLength":I
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Lio/netty/util/internal/RecyclableArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 596
    return-object v5

    .line 593
    .restart local v5    # "localLength":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lio/netty/buffer/FixedCompositeByteBuf;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    .line 594
    .end local v5    # "localLength":I
    goto :goto_0

    .line 598
    .end local v1    # "c":Lio/netty/buffer/FixedCompositeByteBuf$Component;
    .end local v2    # "i":I
    .end local v3    # "adjustment":I
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 599
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 216
    iget-object v0, p0, Lio/netty/buffer/FixedCompositeByteBuf;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 111
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .line 181
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I

    .line 191
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I

    .line 186
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 96
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 106
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 101
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 151
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 166
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 136
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 121
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 671
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/FixedCompositeByteBuf;->buffers:[Lio/netty/buffer/ByteBuf;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

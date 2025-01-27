.class final Lio/netty/buffer/PooledDirectByteBuf;
.super Lio/netty/buffer/PooledByteBuf;
.source "PooledDirectByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PooledByteBuf<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PooledDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lio/netty/buffer/PooledDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledDirectByteBuf$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledDirectByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PooledDirectByteBuf;",
            ">;I)V"
        }
    .end annotation

    .line 45
    .local p1, "recyclerHandle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<Lio/netty/buffer/PooledDirectByteBuf;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;I)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;ILio/netty/buffer/PooledDirectByteBuf$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/internal/ObjectPool$Handle;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/netty/buffer/PooledDirectByteBuf$1;

    .line 28
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;-><init>(Lio/netty/util/internal/ObjectPool$Handle;I)V

    return-void
.end method

.method private getBytes(ILjava/io/OutputStream;IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .param p4, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 164
    if-nez p3, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v2

    invoke-static {v0, v1, v2, p3, p2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V

    .line 168
    return-void
.end method

.method static newInstance(I)Lio/netty/buffer/PooledDirectByteBuf;
    .locals 1
    .param p0, "maxCapacity"    # I

    .line 39
    sget-object v0, Lio/netty/buffer/PooledDirectByteBuf;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledDirectByteBuf;

    .line 40
    .local v0, "buf":Lio/netty/buffer/PooledDirectByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledDirectByteBuf;->reuse(I)V

    .line 41
    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 60
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 96
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->_getInt(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 101
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 106
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->_getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 70
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->_getShort(I)S

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3
    .param p1, "index"    # I

    .line 75
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 76
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    .line 77
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x2

    .line 78
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 76
    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 3
    .param p1, "index"    # I

    .line 83
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    .line 85
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x2

    .line 86
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 84
    return v0
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 180
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 181
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 211
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 212
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 216
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->_setInt(II)V

    .line 217
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 221
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 222
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 226
    invoke-static {p2, p3}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/PooledDirectByteBuf;->_setLong(IJ)V

    .line 227
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 195
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 196
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 197
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 199
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 203
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 204
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 207
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 185
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 186
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 190
    int-to-short v0, p2

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->_setShort(II)V

    .line 191
    return-void
.end method

.method public array()[B
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 284
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 285
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 286
    .local v0, "copy":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 111
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkDstIndex(IIII)V

    .line 112
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 116
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 117
    .local v4, "bbLen":I
    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 118
    add-int/2addr p1, v4

    .line 115
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "bbLen":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 123
    :cond_2
    :goto_1
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/io/OutputStream;IZ)V

    .line 159
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 144
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 128
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkDstIndex(IIII)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lio/netty/buffer/PooledDirectByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 130
    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 28
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "memory"    # Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 173
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/io/OutputStream;IZ)V

    .line 174
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 175
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 150
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 151
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lio/netty/buffer/PooledDirectByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 153
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 135
    array-length v0, p1

    invoke-virtual {p0, p3, p2, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkDstIndex(III)V

    .line 136
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lio/netty/buffer/PooledDirectByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 137
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 138
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 271
    invoke-static {p3}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v0

    .line 272
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 273
    .local v2, "readBytes":I
    if-gtz v2, :cond_0

    .line 274
    return v2

    .line 276
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 277
    .local v3, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 279
    return v2
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 231
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkSrcIndex(IIII)V

    .line 232
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/PooledDirectByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 236
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 237
    .local v4, "bbLen":I
    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/PooledDirectByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 238
    add-int/2addr p1, v4

    .line 235
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "bbLen":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 243
    :cond_2
    :goto_1
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 256
    .local v0, "length":I
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 257
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 258
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    if-ne p2, v1, :cond_0

    .line 259
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 263
    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 264
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 265
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 248
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkSrcIndex(IIII)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0}, Lio/netty/buffer/PooledDirectByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 250
    return-object p0
.end method

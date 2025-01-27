.class public Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledDirectByteBuf;
.source "UnpooledUnsafeDirectByteBuf.java"


# instance fields
.field memoryAddress:J


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "maxCapacity"    # I

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IZZ)V

    .line 60
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IZ)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "maxCapacity"    # I
    .param p4, "doFree"    # Z

    .line 63
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IZZ)V

    .line 64
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 91
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getByte(J)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 139
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getIntLE(J)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 150
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 155
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLongLE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 102
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShort(J)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 107
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShortLE(J)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 118
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMedium(J)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 123
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMediumLE(J)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 183
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setByte(JI)V

    .line 184
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 229
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setInt(JI)V

    .line 230
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 234
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setIntLE(JI)V

    .line 235
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 246
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLong(JJ)V

    .line 247
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 251
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLongLE(JJ)V

    .line 252
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 212
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMedium(JI)V

    .line 213
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 217
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMediumLE(JI)V

    .line 218
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 195
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShort(JI)V

    .line 196
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 200
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShortLE(JI)V

    .line 201
    return-void
.end method

.method final addr(I)J
    .locals 4
    .param p1, "index"    # I

    .line 288
    iget-wide v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 284
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->copy(Lio/netty/buffer/AbstractByteBuf;JII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 85
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(I)V

    .line 86
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 160
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(Lio/netty/buffer/AbstractByteBuf;JILio/netty/buffer/ByteBuf;II)V

    .line 161
    return-object p0
.end method

.method getBytes(ILjava/io/OutputStream;IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .param p4, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/io/OutputStream;I)V

    .line 275
    return-void
.end method

.method getBytes(ILjava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "internal"    # Z

    .line 171
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;)V

    .line 172
    return-void
.end method

.method getBytes(I[BIIZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I
    .param p5, "internal"    # Z

    .line 166
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lio/netty/buffer/UnsafeByteBufUtil;->getBytes(Lio/netty/buffer/AbstractByteBuf;JI[BII)V

    .line 167
    return-void
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 128
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 129
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 144
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 145
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 97
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 112
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 113
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .line 79
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 80
    iget-wide v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    return-wide v0
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1

    .line 293
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0

    .line 297
    :cond_0
    invoke-super {p0}, Lio/netty/buffer/UnpooledDirectByteBuf;->newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 176
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(I)V

    .line 177
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_setByte(II)V

    .line 178
    return-object p0
.end method

.method final setByteBuffer(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "tryFree"    # Z

    .line 68
    invoke-super {p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;Z)V

    .line 69
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    .line 70
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lio/netty/buffer/UnsafeByteBufUtil;->setBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 256
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lio/netty/buffer/UnsafeByteBufUtil;->setBytes(Lio/netty/buffer/AbstractByteBuf;JILio/netty/buffer/ByteBuf;II)V

    .line 257
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setBytes(Lio/netty/buffer/AbstractByteBuf;JILjava/nio/ByteBuffer;)V

    .line 269
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 262
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lio/netty/buffer/UnsafeByteBufUtil;->setBytes(Lio/netty/buffer/AbstractByteBuf;JI[BII)V

    .line 263
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 223
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_setInt(II)V

    .line 224
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_setLong(IJ)V

    .line 241
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 205
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_setMedium(II)V

    .line 207
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->_setShort(II)V

    .line 190
    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 303
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero(JI)V

    .line 304
    return-object p0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "length"    # I

    .line 309
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 310
    iget v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->writerIndex:I

    .line 311
    .local v0, "wIndex":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero(JI)V

    .line 312
    add-int v1, v0, p1

    iput v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->writerIndex:I

    .line 313
    return-object p0
.end method

.class public Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;
.super Lio/netty/buffer/UnpooledHeapByteBuf;
.source "UnpooledUnsafeHeapByteBuf.java"


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 0
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 50
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getByte([BI)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 105
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getInt([BI)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 116
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getIntLE([BI)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 127
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 138
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getLongLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 61
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShort([BI)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 72
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getShortLE([BI)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 83
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMedium([BI)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 94
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->getUnsignedMediumLE([BI)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 150
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setByte([BII)V

    .line 151
    return-void
.end method

.method protected _setInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 210
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setInt([BII)V

    .line 211
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 222
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setIntLE([BII)V

    .line 223
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 234
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLong([BIJ)V

    .line 235
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 246
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3}, Lio/netty/buffer/UnsafeByteBufUtil;->setLongLE([BIJ)V

    .line 247
    return-void
.end method

.method protected _setMedium(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 186
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMedium([BII)V

    .line 187
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 198
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setMediumLE([BII)V

    .line 199
    return-void
.end method

.method protected _setShort(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 162
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShort([BII)V

    .line 163
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 174
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setShortLE([BII)V

    .line 175
    return-void
.end method

.method protected allocateArray(I)[B
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 39
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 44
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(I)V

    .line 45
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 100
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 110
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 111
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 121
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 122
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 133
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 56
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 67
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 78
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 89
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0

    .line 280
    :cond_0
    invoke-super {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 143
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(I)V

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setByte(II)V

    .line 145
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 203
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 204
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setInt(II)V

    .line 205
    return-object p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 215
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 216
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setIntLE(II)V

    .line 217
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 227
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 228
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setLong(IJ)V

    .line 229
    return-object p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setLongLE(IJ)V

    .line 241
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 179
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setMedium(II)V

    .line 181
    return-object p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 191
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setMediumLE(II)V

    .line 193
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 156
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setShort(II)V

    .line 157
    return-object p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 167
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 168
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->_setShortLE(II)V

    .line 169
    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 251
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 253
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->checkIndex(II)V

    .line 254
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    .line 255
    return-object p0

    .line 257
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .line 262
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 265
    iget v0, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->writerIndex:I

    .line 266
    .local v0, "wIndex":I
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->array:[B

    invoke-static {v1, v0, p1}, Lio/netty/buffer/UnsafeByteBufUtil;->setZero([BII)V

    .line 267
    add-int v1, v0, p1

    iput v1, p0, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;->writerIndex:I

    .line 268
    return-object p0

    .line 270
    .end local v0    # "wIndex":I
    :cond_0
    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

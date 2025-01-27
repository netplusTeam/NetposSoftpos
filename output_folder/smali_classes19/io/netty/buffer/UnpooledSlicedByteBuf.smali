.class Lio/netty/buffer/UnpooledSlicedByteBuf;
.super Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;
.source "UnpooledSlicedByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 0
    .param p1, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;II)V

    .line 25
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .line 39
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 64
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getIntLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 69
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getIntLE(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 74
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 79
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 44
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getShortLE(I)S
    .locals 2
    .param p1, "index"    # I

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getShortLE(I)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .line 54
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 2
    .param p1, "index"    # I

    .line 59
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 84
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 85
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 109
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setInt(II)V

    .line 110
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 114
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setIntLE(II)V

    .line 115
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 119
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setLong(IJ)V

    .line 120
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 124
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setLongLE(IJ)V

    .line 125
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 99
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMedium(II)V

    .line 100
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 104
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setMediumLE(II)V

    .line 105
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 89
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShort(II)V

    .line 90
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 94
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledSlicedByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/AbstractByteBuf;->_setShortLE(II)V

    .line 95
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->maxCapacity()I

    move-result v0

    return v0
.end method

.method public unwrap()Lio/netty/buffer/AbstractByteBuf;
    .locals 1

    .line 34
    invoke-super {p0}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/AbstractByteBuf;

    return-object v0
.end method

.method public bridge synthetic unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledSlicedByteBuf;->unwrap()Lio/netty/buffer/AbstractByteBuf;

    move-result-object v0

    return-object v0
.end method

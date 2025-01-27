.class abstract Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.super Lio/netty/buffer/SwappedByteBuf;
.source "AbstractUnsafeSwappedByteBuf.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final nativeByteOrder:Z

.field private final wrapped:Lio/netty/buffer/AbstractByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 5
    .param p1, "buf"    # Lio/netty/buffer/AbstractByteBuf;

    .line 32
    invoke-direct {p0, p1}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 33
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iput-object p1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    .line 35
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    invoke-virtual {p0}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    .line 36
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected abstract _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
.end method

.method protected abstract _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
.end method

.method protected abstract _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
.end method

.method protected abstract _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
.end method

.method protected abstract _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
.end method

.method protected abstract _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
.end method

.method public final getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 57
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 52
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 47
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 67
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 68
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getInt(Lio/netty/buffer/AbstractByteBuf;I)I

    move-result v0

    .line 69
    .local v0, "v":I
    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final getLong(I)J
    .locals 4
    .param p1, "index"    # I

    .line 40
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 41
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getLong(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    .line 42
    .local v0, "v":J
    iget-boolean v2, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public final getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 79
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 80
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_getShort(Lio/netty/buffer/AbstractByteBuf;I)S

    move-result v0

    .line 81
    .local v0, "v":S
    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    return v1
.end method

.method public final getUnsignedInt(I)J
    .locals 4
    .param p1, "index"    # I

    .line 62
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final getUnsignedShort(I)I
    .locals 2
    .param p1, "index"    # I

    .line 74
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 107
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 108
    return-object p0
.end method

.method public final setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 120
    return-object p0
.end method

.method public final setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 113
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 114
    return-object p0
.end method

.method public final setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 93
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 94
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setInt(Lio/netty/buffer/AbstractByteBuf;II)V

    .line 95
    return-object p0
.end method

.method public final setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 100
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 101
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    move-wide v1, p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    :goto_0
    invoke-virtual {p0, v0, p1, v1, v2}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V

    .line 102
    return-object p0
.end method

.method public final setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 86
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 87
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget-boolean v1, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v1, :cond_0

    int-to-short v1, p2

    goto :goto_0

    :cond_0
    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setShort(Lio/netty/buffer/AbstractByteBuf;IS)V

    .line 88
    return-object p0
.end method

.method public final writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 149
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 150
    return-object p0
.end method

.method public final writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "value"    # D

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 162
    return-object p0
.end method

.method public final writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 155
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 156
    return-object p0
.end method

.method public final writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "value"    # I

    .line 133
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 134
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    :goto_0
    invoke-virtual {p0, v0, v2, v3}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setInt(Lio/netty/buffer/AbstractByteBuf;II)V

    .line 135
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 136
    return-object p0
.end method

.method public final writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "value"    # J

    .line 141
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 142
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    move-wide v3, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    :goto_0
    invoke-virtual {p0, v0, v2, v3, v4}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V

    .line 143
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 144
    return-object p0
.end method

.method public final writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "value"    # I

    .line 125
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 126
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    iget-boolean v3, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->nativeByteOrder:Z

    if-eqz v3, :cond_0

    int-to-short v3, p1

    goto :goto_0

    :cond_0
    int-to-short v3, p1

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    :goto_0
    invoke-virtual {p0, v0, v2, v3}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->_setShort(Lio/netty/buffer/AbstractByteBuf;IS)V

    .line 127
    iget-object v0, p0, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;->wrapped:Lio/netty/buffer/AbstractByteBuf;

    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 128
    return-object p0
.end method

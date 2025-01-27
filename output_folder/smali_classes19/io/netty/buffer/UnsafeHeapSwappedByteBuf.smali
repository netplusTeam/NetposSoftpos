.class final Lio/netty/buffer/UnsafeHeapSwappedByteBuf;
.super Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.source "UnsafeHeapSwappedByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 0
    .param p1, "buf"    # Lio/netty/buffer/AbstractByteBuf;

    .line 27
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    .line 28
    return-void
.end method

.method private static idx(Lio/netty/buffer/ByteBuf;I)I
    .locals 1
    .param p0, "wrapped"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I

    .line 31
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 41
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt([BI)I

    move-result v0

    return v0
.end method

.method protected _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 36
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 46
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort([BI)S

    move-result v0

    return v0
.end method

.method protected _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 56
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1, p3}, Lio/netty/util/internal/PlatformDependent;->putInt([BII)V

    .line 57
    return-void
.end method

.method protected _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # J

    .line 61
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong([BIJ)V

    .line 62
    return-void
.end method

.method protected _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # S

    .line 51
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeHeapSwappedByteBuf;->idx(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-static {v0, v1, p3}, Lio/netty/util/internal/PlatformDependent;->putShort([BIS)V

    .line 52
    return-void
.end method

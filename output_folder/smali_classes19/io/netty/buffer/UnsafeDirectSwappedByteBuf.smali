.class final Lio/netty/buffer/UnsafeDirectSwappedByteBuf;
.super Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;
.source "UnsafeDirectSwappedByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/AbstractByteBuf;)V
    .locals 0
    .param p1, "buf"    # Lio/netty/buffer/AbstractByteBuf;

    .line 27
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractUnsafeSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    .line 28
    return-void
.end method

.method private static addr(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 4
    .param p0, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "index"    # I

    .line 35
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected _getInt(Lio/netty/buffer/AbstractByteBuf;I)I
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 45
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    return v0
.end method

.method protected _getLong(Lio/netty/buffer/AbstractByteBuf;I)J
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 40
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(Lio/netty/buffer/AbstractByteBuf;I)S
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I

    .line 50
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    return v0
.end method

.method protected _setInt(Lio/netty/buffer/AbstractByteBuf;II)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 60
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    .line 61
    return-void
.end method

.method protected _setLong(Lio/netty/buffer/AbstractByteBuf;IJ)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # J

    .line 65
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    .line 66
    return-void
.end method

.method protected _setShort(Lio/netty/buffer/AbstractByteBuf;IS)V
    .locals 2
    .param p1, "wrapped"    # Lio/netty/buffer/AbstractByteBuf;
    .param p2, "index"    # I
    .param p3, "value"    # S

    .line 55
    invoke-static {p1, p2}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;->addr(Lio/netty/buffer/AbstractByteBuf;I)J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    .line 56
    return-void
.end method

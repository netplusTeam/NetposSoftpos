.class Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;
.super Ljava/lang/Object;
.source "ChannelBufferByteInput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# instance fields
.field private final buffer:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    .line 32
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 49
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->available()I

    move-result v0

    .line 60
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 61
    const/4 v1, -0x1

    return v1

    .line 64
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 65
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 66
    return p3
.end method

.method public skip(J)J
    .locals 4
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 72
    .local v0, "readable":I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 73
    int-to-long p1, v0

    .line 75
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 76
    return-wide p1
.end method

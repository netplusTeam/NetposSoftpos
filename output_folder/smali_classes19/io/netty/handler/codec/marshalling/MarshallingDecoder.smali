.class public Lio/netty/handler/codec/marshalling/MarshallingDecoder;
.super Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;
.source "MarshallingDecoder.java"


# instance fields
.field private final provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/marshalling/UnmarshallerProvider;)V
    .locals 1
    .param p1, "provider"    # Lio/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 45
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/marshalling/MarshallingDecoder;-><init>(Lio/netty/handler/codec/marshalling/UnmarshallerProvider;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .locals 6
    .param p1, "provider"    # Lio/netty/handler/codec/marshalling/UnmarshallerProvider;
    .param p2, "maxObjectSize"    # I

    .line 57
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 58
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 59
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/LengthFieldBasedFrameDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 64
    .local v0, "frame":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v1

    .line 69
    .local v1, "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    new-instance v2, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v2, v0}, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 72
    .local v2, "input":Lorg/jboss/marshalling/ByteInput;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    .line 73
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 74
    .local v3, "obj":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    nop

    .line 79
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 75
    return-object v3

    .line 79
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 80
    throw v3
.end method

.method protected extractFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p3, "index"    # I
    .param p4, "length"    # I

    .line 85
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

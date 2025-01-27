.class public Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "CompatibleMarshallingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private discardingTooLongFrame:Z

.field protected final maxObjectSize:I

.field protected final provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .locals 0
    .param p1, "provider"    # Lio/netty/handler/codec/marshalling/UnmarshallerProvider;
    .param p2, "maxObjectSize"    # I

    .line 52
    invoke-direct {p0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>()V

    .line 53
    iput-object p1, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 54
    iput p2, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    .line 55
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->discardingTooLongFrame:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->actualReadableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-virtual {p0}, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->checkpoint()V

    .line 62
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lio/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lio/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v0

    .line 66
    .local v0, "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    new-instance v1, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v1, p2}, Lio/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 67
    .local v1, "input":Lorg/jboss/marshalling/ByteInput;
    iget v2, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 68
    new-instance v2, Lio/netty/handler/codec/marshalling/LimitingByteInput;

    iget v3, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    int-to-long v3, v3

    invoke-direct {v2, v1, v3, v4}, Lio/netty/handler/codec/marshalling/LimitingByteInput;-><init>(Lorg/jboss/marshalling/ByteInput;J)V

    move-object v1, v2

    .line 71
    :cond_1
    :try_start_0
    invoke-interface {v0, v1}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    .line 72
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->finish()V

    .line 74
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    nop

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 82
    nop

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "ignored":Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->discardingTooLongFrame:Z

    .line 77
    new-instance v3, Lio/netty/handler/codec/TooLongFrameException;

    invoke-direct {v3}, Lio/netty/handler/codec/TooLongFrameException;-><init>()V

    .end local v0    # "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    .end local v1    # "input":Lorg/jboss/marshalling/ByteInput;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v2    # "ignored":Lio/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    .restart local v0    # "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    .restart local v1    # "input":Lorg/jboss/marshalling/ByteInput;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 82
    throw v2
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 94
    return-void

    .line 89
    :pswitch_1
    return-void

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 99
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    instance-of v0, p2, Lio/netty/handler/codec/TooLongFrameException;

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoder;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 108
    :goto_0
    return-void
.end method

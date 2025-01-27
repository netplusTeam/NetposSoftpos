.class public Lio/netty/handler/codec/DatagramPacketEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "DatagramPacketEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/channel/AddressedEnvelope<",
        "TM;",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final encoder:Lio/netty/handler/codec/MessageToMessageEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/MessageToMessageEncoder<",
            "-TM;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/MessageToMessageEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/MessageToMessageEncoder<",
            "-TM;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    .local p1, "encoder":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<-TM;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 57
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/MessageToMessageEncoder;

    iput-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    .line 58
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 64
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AddressedEnvelope;

    .line 65
    .local v0, "envelope":Lio/netty/channel/AddressedEnvelope;
    iget-object v2, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/MessageToMessageEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_0

    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 65
    :goto_0
    return v1

    .line 69
    .end local v0    # "envelope":Lio/netty/channel/AddressedEnvelope;
    :cond_2
    return v1
.end method

.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 95
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 112
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/MessageToMessageEncoder;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 102
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 117
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 107
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;",
            "Ljava/net/InetSocketAddress;",
            ">;",
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

    .line 75
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    .local p2, "msg":Lio/netty/channel/AddressedEnvelope;, "Lio/netty/channel/AddressedEnvelope<TM;Ljava/net/InetSocketAddress;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 78
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "content":Ljava/lang/Object;
    instance-of v2, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lio/netty/channel/socket/DatagramPacket;

    move-object v3, v1

    check-cast v3, Lio/netty/buffer/ByteBuf;

    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v3, v4, v5}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    invoke-interface {p3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Lio/netty/handler/codec/EncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    .line 88
    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must produce only ByteBuf."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    .end local v1    # "content":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lio/netty/handler/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    .line 80
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must produce only one message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    check-cast p2, Lio/netty/channel/AddressedEnvelope;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/DatagramPacketEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/AddressedEnvelope;Ljava/util/List;)V

    return-void
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

    .line 141
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageEncoder;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 127
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageEncoder;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 132
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 137
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 146
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/MessageToMessageEncoder;->isSharable()Z

    move-result v0

    return v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    .local p0, "this":Lio/netty/handler/codec/DatagramPacketEncoder;, "Lio/netty/handler/codec/DatagramPacketEncoder<TM;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DatagramPacketEncoder;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageEncoder;->read(Lio/netty/channel/ChannelHandlerContext;)V

    .line 122
    return-void
.end method

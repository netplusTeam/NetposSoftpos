.class Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;
.super Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateDecoder;
.source "PerMessageDeflateDecoder.java"


# instance fields
.field private compressing:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .param p1, "noContext"    # Z

    .line 41
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateDecoder;-><init>(ZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 42
    return-void
.end method

.method constructor <init>(ZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V
    .locals 0
    .param p1, "noContext"    # Z
    .param p2, "extensionDecoderFilter"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    .line 51
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateDecoder;-><init>(ZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 52
    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 61
    .local v0, "wsFrame":Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->extensionDecoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->mustSkip(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    iget-boolean v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->compressing:Z

    if-nez v2, :cond_1

    .line 65
    return v1

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot skip per message deflate decoder, compression in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    instance-of v2, v0, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-nez v2, :cond_3

    instance-of v2, v0, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v2, :cond_4

    .line 69
    :cond_3
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_5

    :cond_4
    instance-of v2, v0, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->compressing:Z

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 68
    :cond_6
    return v1
.end method

.method protected appendFrameTail(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 81
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v0

    return v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/websocketx/WebSocketFrame;",
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
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    .line 89
    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->compressing:Z

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->compressing:Z

    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method

.method protected newRsv(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)I
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 75
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v0

    xor-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v0

    .line 75
    :goto_0
    return v0
.end method

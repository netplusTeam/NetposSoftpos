.class Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateEncoder;
.super Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateEncoder;
.source "PerFrameDeflateEncoder.java"


# direct methods
.method constructor <init>(IIZ)V
    .locals 1
    .param p1, "compressionLevel"    # I
    .param p2, "windowSize"    # I
    .param p3, "noContext"    # Z

    .line 38
    sget-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateEncoder;-><init>(IIZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 39
    return-void
.end method

.method constructor <init>(IIZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V
    .locals 0
    .param p1, "compressionLevel"    # I
    .param p2, "windowSize"    # I
    .param p3, "noContext"    # Z
    .param p4, "extensionEncoderFilter"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateEncoder;-><init>(IIZLio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;)V

    .line 52
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerFrameDeflateEncoder;->extensionEncoderFilter()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->mustSkip(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    return v1

    .line 65
    :cond_1
    instance-of v2, p1, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-nez v2, :cond_2

    instance-of v2, p1, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-nez v2, :cond_2

    instance-of v2, p1, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v2, :cond_3

    .line 67
    :cond_2
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-lez v2, :cond_3

    .line 68
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 65
    :goto_0
    return v1
.end method

.method protected removeFrameTail(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)Z
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected rsv(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)I
    .locals 1
    .param p1, "msg"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 73
    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    return v0
.end method

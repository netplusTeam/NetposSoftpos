.class public Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "WebSocketClientExtensionHandler.java"


# instance fields
.field private final extensionHandshakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;)V
    .locals 2
    .param p1, "extensionHandshakers"    # [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;

    .line 53
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 54
    const-string v0, "extensionHandshakers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extensionHandshakers must contains at least one handshaker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_4

    .line 83
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 85
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "extensionsHeader":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 89
    nop

    .line 90
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->extractExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v3, "validExtensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;>;"
    const/4 v4, 0x0

    .line 95
    .local v4, "rsv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 96
    .local v6, "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    iget-object v7, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 97
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 98
    .local v7, "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;>;"
    const/4 v8, 0x0

    .line 100
    .local v8, "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    :goto_1
    if-nez v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 101
    nop

    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;

    .line 103
    .local v9, "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;
    invoke-interface {v9, v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;->handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;

    move-result-object v8

    .line 104
    .end local v9    # "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;
    goto :goto_1

    .line 106
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;->rsv()I

    move-result v9

    and-int/2addr v9, v4

    if-nez v9, :cond_1

    .line 107
    invoke-interface {v8}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;->rsv()I

    move-result v9

    or-int/2addr v4, v9

    .line 108
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v6    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .end local v7    # "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;>;"
    .end local v8    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    goto :goto_0

    .line 110
    .restart local v6    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .restart local v7    # "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;>;"
    .restart local v8    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    :cond_1
    new-instance v5, Lio/netty/handler/codec/CodecException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid WebSocket Extension handshake for \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lio/netty/handler/codec/CodecException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    .end local v6    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .end local v7    # "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;>;"
    .end local v8    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;

    .line 116
    .local v6, "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    invoke-interface {v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;->newExtensionDecoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;

    move-result-object v7

    .line 117
    .local v7, "decoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    invoke-interface {v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;->newExtensionEncoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;

    move-result-object v8

    .line 118
    .local v8, "encoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v9

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, v7}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 119
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v9

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, v8}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 120
    .end local v6    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;
    .end local v7    # "decoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
    .end local v8    # "encoder":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
    goto :goto_2

    .line 123
    .end local v2    # "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    .end local v3    # "validExtensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtension;>;"
    .end local v4    # "rsv":I
    :cond_3
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    .line 127
    .end local v0    # "response":Lio/netty/handler/codec/http/HttpResponse;
    .end local v1    # "extensionsHeader":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 65
    .local v0, "request":Lio/netty/handler/codec/http/HttpRequest;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "headerValue":Ljava/lang/String;
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;->extensionHandshakers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;

    .line 68
    .local v3, "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;
    invoke-interface {v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;->newRequestData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    move-result-object v4

    .line 69
    .local v4, "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    nop

    .line 70
    invoke-virtual {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v6

    .line 69
    invoke-static {v1, v5, v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->appendExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v3    # "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;
    .end local v4    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 76
    .end local v0    # "request":Lio/netty/handler/codec/http/HttpRequest;
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 77
    return-void
.end method

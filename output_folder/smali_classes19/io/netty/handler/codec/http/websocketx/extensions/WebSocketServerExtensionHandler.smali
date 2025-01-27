.class public Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "WebSocketServerExtensionHandler.java"


# instance fields
.field private final extensionHandshakers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;",
            ">;"
        }
    .end annotation
.end field

.field private validExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;)V
    .locals 2
    .param p1, "extensionHandshakers"    # [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    .line 57
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 58
    const-string v0, "extensionHandshakers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extensionHandshakers must contains at least one handshaker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_3

    .line 68
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 70
    .local v0, "request":Lio/netty/handler/codec/http/HttpRequest;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "extensionsHeader":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 74
    nop

    .line 75
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->extractExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    const/4 v3, 0x0

    .line 78
    .local v3, "rsv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    .line 79
    .local v5, "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    iget-object v6, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->extensionHandshakers:Ljava/util/List;

    .line 80
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 81
    .local v6, "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;>;"
    const/4 v7, 0x0

    .line 83
    .local v7, "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    :goto_1
    if-nez v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    nop

    .line 85
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    .line 86
    .local v8, "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;
    invoke-interface {v8, v5}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;->handshakeExtension(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;)Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    move-result-object v7

    .line 87
    .end local v8    # "extensionHandshaker":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;
    goto :goto_1

    .line 89
    :cond_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v8, :cond_2

    .line 90
    iget-object v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    if-nez v8, :cond_1

    .line 91
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    .line 93
    :cond_1
    invoke-interface {v7}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->rsv()I

    move-result v8

    or-int/2addr v3, v8

    .line 94
    iget-object v8, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v5    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    .end local v6    # "extensionHandshakersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;>;"
    .end local v7    # "validExtension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    :cond_2
    goto :goto_0

    .line 101
    .end local v0    # "request":Lio/netty/handler/codec/http/HttpRequest;
    .end local v1    # "extensionsHeader":Ljava/lang/String;
    .end local v2    # "extensions":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;>;"
    .end local v3    # "rsv":I
    :cond_3
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 102
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

    .line 106
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_2

    .line 107
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 109
    .local v0, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->isWebsocketUpgrade(Lio/netty/handler/codec/http/HttpHeaders;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "headerValue":Ljava/lang/String;
    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;->validExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;

    .line 115
    .local v3, "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    invoke-interface {v3}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;->newReponseData()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;

    move-result-object v4

    .line 116
    .local v4, "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    nop

    .line 117
    invoke-virtual {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->name()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v4}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;->parameters()Ljava/util/Map;

    move-result-object v6

    .line 116
    invoke-static {v1, v5, v6}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionUtil;->appendExtension(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .end local v3    # "extension":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtension;
    .end local v4    # "extensionData":Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionData;
    goto :goto_0

    .line 120
    :cond_0
    new-instance v2, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;

    invoke-direct {v2, p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$1;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p3, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 135
    if-eqz v1, :cond_1

    .line 136
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_EXTENSIONS:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 140
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$2;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler$2;-><init>(Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p3, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 151
    .end local v0    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 152
    return-void
.end method

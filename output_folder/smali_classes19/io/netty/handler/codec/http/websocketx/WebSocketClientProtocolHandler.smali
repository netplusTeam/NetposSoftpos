.class public Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;
.super Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;
.source "WebSocketClientProtocolHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler$ClientHandshakeStateEvent;
    }
.end annotation


# instance fields
.field private final clientConfig:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

.field private final handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;)V
    .locals 2
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 347
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    .line 348
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V
    .locals 1
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handshakeTimeoutMillis"    # J

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZJ)V

    .line 362
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Z)V
    .locals 2
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handleCloseFrames"    # Z

    .line 279
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZJ)V

    .line 280
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZJ)V
    .locals 6
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handleCloseFrames"    # Z
    .param p3, "handshakeTimeoutMillis"    # J

    .line 296
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZZJ)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZZ)V
    .locals 6
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handleCloseFrames"    # Z
    .param p3, "dropPongFrames"    # Z

    .line 312
    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZZJ)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZZJ)V
    .locals 1
    .param p1, "handshaker"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .param p2, "handleCloseFrames"    # Z
    .param p3, "dropPongFrames"    # Z
    .param p4, "handshakeTimeoutMillis"    # J

    .line 331
    invoke-direct {p0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;-><init>(Z)V

    .line 332
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 333
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handleCloseFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p4, p5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handshakeTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->clientConfig:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    .line 337
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;)V
    .locals 17
    .param p1, "clientConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "clientConfig"

    invoke-static {v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->dropPongFrames()Z

    move-result v2

    .line 86
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->sendCloseFrame()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis()J

    move-result-wide v4

    .line 85
    invoke-direct {v0, v2, v3, v4, v5}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;-><init>(ZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;J)V

    .line 87
    nop

    .line 88
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->webSocketUri()Ljava/net/URI;

    move-result-object v6

    .line 89
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-result-object v7

    .line 90
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->subprotocol()Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowExtensions()Z

    move-result v9

    .line 92
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->customHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v10

    .line 93
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->maxFramePayloadLength()I

    move-result v11

    .line 94
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->performMasking()Z

    move-result v12

    .line 95
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowMaskMismatch()Z

    move-result v13

    .line 96
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis()J

    move-result-wide v14

    .line 97
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->absoluteUpgradeUrl()Z

    move-result v16

    .line 87
    invoke-static/range {v6 .. v16}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v2

    iput-object v2, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    .line 99
    iput-object v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->clientConfig:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;I)V
    .locals 9
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I

    .line 240
    const-wide/16 v7, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IJ)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IJ)V
    .locals 10
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "handshakeTimeoutMillis"    # J

    .line 265
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZJ)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZ)V
    .locals 10
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "handleCloseFrames"    # Z

    .line 191
    const-wide/16 v8, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZJ)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZJ)V
    .locals 12
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "handleCloseFrames"    # Z
    .param p8, "handshakeTimeoutMillis"    # J

    .line 218
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZZJ)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZZ)V
    .locals 12
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "handleCloseFrames"    # Z
    .param p8, "performMasking"    # Z
    .param p9, "allowMaskMismatch"    # Z

    .line 130
    const-wide/16 v10, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZZJ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZZJ)V
    .locals 8
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "handleCloseFrames"    # Z
    .param p8, "performMasking"    # Z
    .param p9, "allowMaskMismatch"    # Z
    .param p10, "handshakeTimeoutMillis"    # J

    .line 165
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    move-object v1, p0

    move v2, p7

    move-wide/from16 v3, p10

    invoke-direct {p0, v0, p7, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ZJ)V

    .line 169
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public bridge synthetic close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public bridge synthetic connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/handler/codec/http/websocketx/WebSocketFrame;
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

    .line 366
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->clientConfig:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handleCloseFrames()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 368
    return-void

    .line 370
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    .line 371
    return-void
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/websocketx/WebSocketFrame;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public bridge synthetic disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public bridge synthetic exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 375
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 376
    .local v0, "cp":Lio/netty/channel/ChannelPipeline;
    const-class v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 378
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;

    iget-object v5, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    iget-object v6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->clientConfig:Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    .line 379
    invoke-virtual {v6}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handshakeTimeoutMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandshakeHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;J)V

    .line 378
    invoke-interface {v1, v2, v3, v4}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 381
    :cond_0
    const-class v1, Lio/netty/handler/codec/http/websocketx/Utf8FrameValidator;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 383
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lio/netty/handler/codec/http/websocketx/Utf8FrameValidator;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/netty/handler/codec/http/websocketx/Utf8FrameValidator;

    invoke-direct {v4}, Lio/netty/handler/codec/http/websocketx/Utf8FrameValidator;-><init>()V

    invoke-interface {v1, v2, v3, v4}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 386
    :cond_1
    return-void
.end method

.method public handshaker()Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    return-object v0
.end method

.method public bridge synthetic read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public bridge synthetic write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

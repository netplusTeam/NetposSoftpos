.class public final Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;
.super Ljava/lang/Object;
.source "WebSocketClientHandshakerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 6
    .param p0, "webSocketURL"    # Ljava/net/URI;
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 53
    const/high16 v5, 0x10000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;I)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    return-object v0
.end method

.method public static newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;I)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 8
    .param p0, "webSocketURL"    # Ljava/net/URI;
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I

    .line 77
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    return-object v0
.end method

.method public static newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 10
    .param p0, "webSocketURL"    # Ljava/net/URI;
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "performMasking"    # Z
    .param p7, "allowMaskMismatch"    # Z

    .line 110
    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    return-object v0
.end method

.method public static newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 13
    .param p0, "webSocketURL"    # Ljava/net/URI;
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "performMasking"    # Z
    .param p7, "allowMaskMismatch"    # Z
    .param p8, "forceCloseTimeoutMillis"    # J

    .line 145
    move-object v0, p1

    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)V

    return-object v1

    .line 150
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_1

    .line 151
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)V

    return-object v1

    .line 155
    :cond_1
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_2

    .line 156
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-direct/range {v2 .. v12}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJ)V

    return-object v1

    .line 160
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_3

    .line 161
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p8

    invoke-direct/range {v2 .. v9}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJ)V

    return-object v1

    .line 165
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 14
    .param p0, "webSocketURL"    # Ljava/net/URI;
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p5, "maxFramePayloadLength"    # I
    .param p6, "performMasking"    # Z
    .param p7, "allowMaskMismatch"    # Z
    .param p8, "forceCloseTimeoutMillis"    # J
    .param p10, "absoluteUpgradeUrl"    # Z

    .line 202
    move-object v0, p1

    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)V

    return-object v1

    .line 207
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)V

    return-object v1

    .line 212
    :cond_1
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_2

    .line 213
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZJZ)V

    return-object v1

    .line 217
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne v0, v1, :cond_3

    .line 218
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;

    sget-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v2 .. v10}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;IJZ)V

    return-object v1

    .line 223
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

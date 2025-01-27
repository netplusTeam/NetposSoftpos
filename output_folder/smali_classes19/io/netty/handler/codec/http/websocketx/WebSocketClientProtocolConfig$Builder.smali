.class public final Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
.super Ljava/lang/Object;
.source "WebSocketClientProtocolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private absoluteUpgradeUrl:Z

.field private allowExtensions:Z

.field private allowMaskMismatch:Z

.field private customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private dropPongFrames:Z

.field private forceCloseTimeoutMillis:J

.field private handleCloseFrames:Z

.field private handshakeTimeoutMillis:J

.field private maxFramePayloadLength:I

.field private performMasking:Z

.field private sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field private subprotocol:Ljava/lang/String;

.field private version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field private webSocketUri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;)V
    .locals 17
    .param p1, "clientConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    move-object/from16 v0, p0

    .line 200
    const-string v1, "clientConfig"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->webSocketUri()Ljava/net/URI;

    move-result-object v1

    .line 201
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->subprotocol()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-result-object v3

    .line 203
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowExtensions()Z

    move-result v4

    .line 204
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->customHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    .line 205
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->maxFramePayloadLength()I

    move-result v6

    .line 206
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->performMasking()Z

    move-result v7

    .line 207
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowMaskMismatch()Z

    move-result v8

    .line 208
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handleCloseFrames()Z

    move-result v9

    .line 209
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->sendCloseFrame()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    move-result-object v10

    .line 210
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->dropPongFrames()Z

    move-result v11

    .line 211
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handshakeTimeoutMillis()J

    move-result-wide v12

    .line 212
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis()J

    move-result-wide v15

    move-wide v14, v15

    .line 213
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->absoluteUpgradeUrl()Z

    move-result v16

    .line 200
    invoke-direct/range {v0 .. v16}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZ)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;
    .param p2, "x1"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;

    .line 183
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZ)V
    .locals 16
    .param p1, "webSocketUri"    # Ljava/net/URI;
    .param p2, "subprotocol"    # Ljava/lang/String;
    .param p3, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p4, "allowExtensions"    # Z
    .param p5, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "maxFramePayloadLength"    # I
    .param p7, "performMasking"    # Z
    .param p8, "allowMaskMismatch"    # Z
    .param p9, "handleCloseFrames"    # Z
    .param p10, "sendCloseFrame"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .param p11, "dropPongFrames"    # Z
    .param p12, "handshakeTimeoutMillis"    # J
    .param p14, "forceCloseTimeoutMillis"    # J
    .param p16, "absoluteUpgradeUrl"    # Z

    .line 229
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    move-object/from16 v1, p1

    iput-object v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->webSocketUri:Ljava/net/URI;

    .line 231
    move-object/from16 v2, p2

    iput-object v2, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->subprotocol:Ljava/lang/String;

    .line 232
    move-object/from16 v3, p3

    iput-object v3, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 233
    move/from16 v4, p4

    iput-boolean v4, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowExtensions:Z

    .line 234
    move-object/from16 v5, p5

    iput-object v5, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 235
    move/from16 v6, p6

    iput v6, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->maxFramePayloadLength:I

    .line 236
    move/from16 v7, p7

    iput-boolean v7, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->performMasking:Z

    .line 237
    move/from16 v8, p8

    iput-boolean v8, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowMaskMismatch:Z

    .line 238
    move/from16 v9, p9

    iput-boolean v9, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handleCloseFrames:Z

    .line 239
    move-object/from16 v10, p10

    iput-object v10, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 240
    move/from16 v11, p11

    iput-boolean v11, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->dropPongFrames:Z

    .line 241
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handshakeTimeoutMillis:J

    .line 242
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->forceCloseTimeoutMillis:J

    .line 243
    move/from16 v1, p16

    iput-boolean v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->absoluteUpgradeUrl:Z

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/URI;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p6, "x5"    # I
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .param p11, "x10"    # Z
    .param p12, "x11"    # J
    .param p14, "x12"    # J
    .param p16, "x13"    # Z
    .param p17, "x14"    # Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;

    .line 183
    invoke-direct/range {p0 .. p16}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZ)V

    return-void
.end method


# virtual methods
.method public absoluteUpgradeUrl(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "absoluteUpgradeUrl"    # Z

    .line 366
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->absoluteUpgradeUrl:Z

    .line 367
    return-object p0
.end method

.method public allowExtensions(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "allowExtensions"    # Z

    .line 283
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowExtensions:Z

    .line 284
    return-object p0
.end method

.method public allowMaskMismatch(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "allowMaskMismatch"    # Z

    .line 317
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowMaskMismatch:Z

    .line 318
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;
    .locals 22

    .line 374
    move-object/from16 v0, p0

    new-instance v19, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;

    move-object/from16 v1, v19

    iget-object v2, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->webSocketUri:Ljava/net/URI;

    iget-object v3, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->subprotocol:Ljava/lang/String;

    iget-object v4, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    iget-boolean v5, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowExtensions:Z

    iget-object v6, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iget v7, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->maxFramePayloadLength:I

    iget-boolean v8, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->performMasking:Z

    iget-boolean v9, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->allowMaskMismatch:Z

    iget-boolean v10, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handleCloseFrames:Z

    iget-object v11, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    iget-boolean v12, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->dropPongFrames:Z

    iget-wide v13, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handshakeTimeoutMillis:J

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->forceCloseTimeoutMillis:J

    move-wide v15, v1

    iget-boolean v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->absoluteUpgradeUrl:Z

    move/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v18}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;)V

    return-object v19
.end method

.method public customHeaders(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "customHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 291
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 292
    return-object p0
.end method

.method public dropPongFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "dropPongFrames"    # Z

    .line 341
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->dropPongFrames:Z

    .line 342
    return-object p0
.end method

.method public forceCloseTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "forceCloseTimeoutMillis"    # J

    .line 358
    iput-wide p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->forceCloseTimeoutMillis:J

    .line 359
    return-object p0
.end method

.method public handleCloseFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "handleCloseFrames"    # Z

    .line 325
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handleCloseFrames:Z

    .line 326
    return-object p0
.end method

.method public handshakeTimeoutMillis(J)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "handshakeTimeoutMillis"    # J

    .line 350
    iput-wide p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->handshakeTimeoutMillis:J

    .line 351
    return-object p0
.end method

.method public maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "maxFramePayloadLength"    # I

    .line 299
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->maxFramePayloadLength:I

    .line 300
    return-object p0
.end method

.method public performMasking(Z)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "performMasking"    # Z

    .line 309
    iput-boolean p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->performMasking:Z

    .line 310
    return-object p0
.end method

.method public sendCloseFrame(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "sendCloseFrame"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 333
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 334
    return-object p0
.end method

.method public subprotocol(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "subprotocol"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->subprotocol:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public version(Lio/netty/handler/codec/http/websocketx/WebSocketVersion;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "version"    # Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 275
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 276
    return-object p0
.end method

.method public webSocketUri(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 1
    .param p1, "webSocketUri"    # Ljava/lang/String;

    .line 251
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->webSocketUri(Ljava/net/URI;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public webSocketUri(Ljava/net/URI;)Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 0
    .param p1, "webSocketUri"    # Ljava/net/URI;

    .line 259
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;->webSocketUri:Ljava/net/URI;

    .line 260
    return-object p0
.end method

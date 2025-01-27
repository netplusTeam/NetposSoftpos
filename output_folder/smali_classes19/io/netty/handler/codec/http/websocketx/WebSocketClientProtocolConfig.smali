.class public final Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;
.super Ljava/lang/Object;
.source "WebSocketClientProtocolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_ALLOW_MASK_MISMATCH:Z = false

.field static final DEFAULT_DROP_PONG_FRAMES:Z = true

.field static final DEFAULT_HANDLE_CLOSE_FRAMES:Z = true

.field static final DEFAULT_PERFORM_MASKING:Z = true


# instance fields
.field private final absoluteUpgradeUrl:Z

.field private final allowExtensions:Z

.field private final allowMaskMismatch:Z

.field private final customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

.field private final dropPongFrames:Z

.field private final forceCloseTimeoutMillis:J

.field private final handleCloseFrames:Z

.field private final handshakeTimeoutMillis:J

.field private final maxFramePayloadLength:I

.field private final performMasking:Z

.field private final sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field private final subprotocol:Ljava/lang/String;

.field private final version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field private final webSocketUri:Ljava/net/URI;


# direct methods
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

    .line 68
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object/from16 v1, p1

    iput-object v1, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->webSocketUri:Ljava/net/URI;

    .line 70
    move-object/from16 v2, p2

    iput-object v2, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->subprotocol:Ljava/lang/String;

    .line 71
    move-object/from16 v3, p3

    iput-object v3, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 72
    move/from16 v4, p4

    iput-boolean v4, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowExtensions:Z

    .line 73
    move-object/from16 v5, p5

    iput-object v5, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    .line 74
    move/from16 v6, p6

    iput v6, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->maxFramePayloadLength:I

    .line 75
    move/from16 v7, p7

    iput-boolean v7, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->performMasking:Z

    .line 76
    move/from16 v8, p8

    iput-boolean v8, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowMaskMismatch:Z

    .line 77
    move-wide/from16 v9, p14

    iput-wide v9, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis:J

    .line 78
    move/from16 v11, p9

    iput-boolean v11, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handleCloseFrames:Z

    .line 79
    move-object/from16 v12, p10

    iput-object v12, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 80
    move/from16 v13, p11

    iput-boolean v13, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->dropPongFrames:Z

    .line 81
    const-string v14, "handshakeTimeoutMillis"

    move-wide/from16 v1, p12

    invoke-static {v1, v2, v14}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handshakeTimeoutMillis:J

    .line 82
    move/from16 v14, p16

    iput-boolean v14, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->absoluteUpgradeUrl:Z

    .line 83
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

    .line 31
    invoke-direct/range {p0 .. p16}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;-><init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZ)V

    return-void
.end method

.method public static newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 19

    .line 166
    new-instance v18, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    move-object/from16 v0, v18

    .line 167
    const-string v1, "https://localhost/"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    sget-object v5, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    sget-object v10, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->NORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x10000

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x2710

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;-><init>(Ljava/net/URI;Ljava/lang/String;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;ZLio/netty/handler/codec/http/HttpHeaders;IZZZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;)V

    .line 166
    return-object v18
.end method


# virtual methods
.method public absoluteUpgradeUrl()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->absoluteUpgradeUrl:Z

    return v0
.end method

.method public allowExtensions()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowExtensions:Z

    return v0
.end method

.method public allowMaskMismatch()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowMaskMismatch:Z

    return v0
.end method

.method public customHeaders()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public dropPongFrames()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->dropPongFrames:Z

    return v0
.end method

.method public forceCloseTimeoutMillis()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis:J

    return-wide v0
.end method

.method public handleCloseFrames()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handleCloseFrames:Z

    return v0
.end method

.method public handshakeTimeoutMillis()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public maxFramePayloadLength()I
    .locals 1

    .line 106
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->maxFramePayloadLength:I

    return v0
.end method

.method public performMasking()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->performMasking:Z

    return v0
.end method

.method public sendCloseFrame()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0
.end method

.method public subprotocol()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->subprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;
    .locals 2

    .line 162
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$Builder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocketClientProtocolConfig {webSocketUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->webSocketUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subprotocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->subprotocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowExtensions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->customHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxFramePayloadLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->maxFramePayloadLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", performMasking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->performMasking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowMaskMismatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->allowMaskMismatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handleCloseFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handleCloseFrames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendCloseFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dropPongFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->dropPongFrames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handshakeTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->handshakeTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceCloseTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->forceCloseTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", absoluteUpgradeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->absoluteUpgradeUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->version:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public webSocketUri()Ljava/net/URI;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientProtocolConfig;->webSocketUri:Ljava/net/URI;

    return-object v0
.end method

.class public final Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;
.super Ljava/lang/Object;
.source "WebSocketServerProtocolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_HANDSHAKE_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private final checkStartsWith:Z

.field private final decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

.field private final dropPongFrames:Z

.field private final forceCloseTimeoutMillis:J

.field private final handleCloseFrames:Z

.field private final handshakeTimeoutMillis:J

.field private final sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field private final subprotocols:Ljava/lang/String;

.field private final websocketPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZLio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 2
    .param p1, "websocketPath"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "checkStartsWith"    # Z
    .param p4, "handshakeTimeoutMillis"    # J
    .param p6, "forceCloseTimeoutMillis"    # J
    .param p8, "handleCloseFrames"    # Z
    .param p9, "sendCloseFrame"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .param p10, "dropPongFrames"    # Z
    .param p11, "decoderConfig"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->websocketPath:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->subprotocols:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->checkStartsWith:Z

    .line 54
    const-string v0, "handshakeTimeoutMillis"

    invoke-static {p4, p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handshakeTimeoutMillis:J

    .line 55
    iput-wide p6, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->forceCloseTimeoutMillis:J

    .line 56
    iput-boolean p8, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handleCloseFrames:Z

    .line 57
    iput-object p9, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 58
    iput-boolean p10, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->dropPongFrames:Z

    .line 59
    if-nez p11, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->DEFAULT:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    goto :goto_0

    :cond_0
    move-object v0, p11

    :goto_0
    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZLio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # Z
    .param p9, "x6"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .param p10, "x7"    # Z
    .param p11, "x8"    # Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
    .param p12, "x9"    # Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$1;

    .line 26
    invoke-direct/range {p0 .. p11}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZLio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-void
.end method

.method public static newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;
    .locals 14

    .line 118
    new-instance v13, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;

    sget-object v9, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->NORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    sget-object v11, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->DEFAULT:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;ZLio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$1;)V

    return-object v13
.end method


# virtual methods
.method public checkStartsWith()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->checkStartsWith:Z

    return v0
.end method

.method public decoderConfig()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    return-object v0
.end method

.method public dropPongFrames()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->dropPongFrames:Z

    return v0
.end method

.method public forceCloseTimeoutMillis()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->forceCloseTimeoutMillis:J

    return-wide v0
.end method

.method public handleCloseFrames()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handleCloseFrames:Z

    return v0
.end method

.method public handshakeTimeoutMillis()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public sendCloseFrame()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0
.end method

.method public subprotocols()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->subprotocols:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;
    .locals 2

    .line 114
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$Builder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocketServerProtocolConfig {websocketPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->websocketPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subprotocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->subprotocols:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkStartsWith="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->checkStartsWith:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handshakeTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handshakeTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceCloseTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->forceCloseTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handleCloseFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->handleCloseFrames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendCloseFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->sendCloseFrame:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dropPongFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->dropPongFrames:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decoderConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->decoderConfig:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public websocketPath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerProtocolConfig;->websocketPath:Ljava/lang/String;

    return-object v0
.end method

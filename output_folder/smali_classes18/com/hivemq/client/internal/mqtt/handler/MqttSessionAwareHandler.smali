.class public abstract Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "MqttSessionAwareHandler.java"


# instance fields
.field protected hasSession:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSharable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    .line 44
    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    .line 40
    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 1
    .param p1, "connectionConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .param p2, "eventLoop"    # Lio/netty/channel/EventLoop;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    .line 36
    return-void
.end method

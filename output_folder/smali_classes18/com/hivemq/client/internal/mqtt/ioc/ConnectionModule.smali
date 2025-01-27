.class abstract Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;
.super Ljava/lang/Object;
.source "ConnectionModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 1
    .param p0, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation runtime Lcom/hivemq/client/internal/mqtt/ioc/ConnectionScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;"
        }
    .end annotation

    .line 50
    .local p1, "connectAuthHandlerLazy":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;>;"
    .local p2, "disconnectOnAuthHandlerLazy":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    .line 50
    :goto_0
    return-object v0
.end method

.method static provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;
    .locals 2
    .param p0, "channelInitializer"    # Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 39
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->getChannelFactory()Lio/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/bootstrap/Bootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    .line 40
    invoke-virtual {v0, p0}, Lio/netty/bootstrap/Bootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    .line 39
    return-object v0
.end method

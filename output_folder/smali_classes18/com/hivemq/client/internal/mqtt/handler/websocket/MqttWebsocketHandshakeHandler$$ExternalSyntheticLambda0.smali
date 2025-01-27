.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

.field public final synthetic f$1:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;->f$1:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler$$ExternalSyntheticLambda0;->f$1:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->lambda$startHandshake$0$com-hivemq-client-internal-mqtt-handler-websocket-MqttWebsocketHandshakeHandler(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

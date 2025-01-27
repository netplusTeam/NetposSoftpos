.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

.field public final synthetic f$1:Lio/netty/channel/Channel;

.field public final synthetic f$2:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

.field public final synthetic f$3:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$1:Lio/netty/channel/Channel;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$2:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$3:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$1:Lio/netty/channel/Channel;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$2:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$$ExternalSyntheticLambda0;->f$3:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;->lambda$null$1$com-hivemq-client-internal-mqtt-handler-disconnect-MqttDisconnectHandler(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

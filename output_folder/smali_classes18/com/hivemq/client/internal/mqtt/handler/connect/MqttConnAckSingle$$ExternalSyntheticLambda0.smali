.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field public final synthetic f$2:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field public final synthetic f$3:Lio/netty/channel/EventLoop;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$2:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$3:Lio/netty/channel/EventLoop;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$2:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda0;->f$3:Lio/netty/channel/EventLoop;

    invoke-static {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

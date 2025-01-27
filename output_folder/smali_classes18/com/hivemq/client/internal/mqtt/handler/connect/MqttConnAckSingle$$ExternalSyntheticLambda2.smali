.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Lio/netty/channel/EventLoop;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field public final synthetic f$2:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field public final synthetic f$3:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;


# direct methods
.method public synthetic constructor <init>(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$0:Lio/netty/channel/EventLoop;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$2:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$3:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$0:Lio/netty/channel/EventLoop;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$1:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$2:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle$$ExternalSyntheticLambda2;->f$3:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Lio/netty/channel/Channel;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lio/netty/channel/Channel;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$0:Lio/netty/channel/Channel;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$0:Lio/netty/channel/Channel;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, v2, p1}, Lcom/hivemq/client/internal/mqtt/handler/proxy/MqttProxyAdapterHandler;->lambda$connect$0(Lio/netty/channel/Channel;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

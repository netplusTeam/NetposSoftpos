.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field public final synthetic f$2:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

.field public final synthetic f$3:Lio/netty/channel/ChannelPromise;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$1:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$2:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$3:Lio/netty/channel/ChannelPromise;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$1:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$2:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda5;->f$3:Lio/netty/channel/ChannelPromise;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$writeConnect$1$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

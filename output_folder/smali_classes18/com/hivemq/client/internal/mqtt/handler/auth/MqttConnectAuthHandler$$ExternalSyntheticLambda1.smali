.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

.field public final synthetic f$1:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler$$ExternalSyntheticLambda1;->f$1:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->lambda$readConnAckSuccess$4$com-hivemq-client-internal-mqtt-handler-auth-MqttConnectAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

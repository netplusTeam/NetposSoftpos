.class public final synthetic Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    move-result-object p1

    return-object p1
.end method

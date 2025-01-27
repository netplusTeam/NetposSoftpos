.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$$ExternalSyntheticLambda3;->f$0:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    return-object p1
.end method

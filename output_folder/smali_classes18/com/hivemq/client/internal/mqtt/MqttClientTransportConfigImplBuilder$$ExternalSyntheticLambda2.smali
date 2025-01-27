.class public final synthetic Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;->sslConfig(Lcom/hivemq/client/mqtt/MqttClientSslConfig;)Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImplBuilder;

    move-result-object p1

    return-object p1
.end method

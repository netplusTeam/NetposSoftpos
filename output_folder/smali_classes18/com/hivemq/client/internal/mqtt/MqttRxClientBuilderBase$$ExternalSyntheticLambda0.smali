.class public final synthetic Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;->executorConfig(Lcom/hivemq/client/mqtt/MqttClientExecutorConfig;)Lcom/hivemq/client/internal/mqtt/MqttRxClientBuilderBase;

    move-result-object p1

    return-object p1
.end method

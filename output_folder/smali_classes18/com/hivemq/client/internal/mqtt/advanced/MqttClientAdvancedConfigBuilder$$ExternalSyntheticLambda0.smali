.class public final synthetic Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    return-object p1
.end method

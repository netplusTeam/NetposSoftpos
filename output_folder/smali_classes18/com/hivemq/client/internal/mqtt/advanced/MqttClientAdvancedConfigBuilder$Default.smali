.class public Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
.source "MqttClientAdvancedConfigBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<",
        "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;)V
    .locals 0
    .param p1, "advancedConfig"    # Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    .line 77
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;)V

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic allowServerReAuth(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->allowServerReAuth(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->build()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic interceptors()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder$Nested;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;
    .locals 0

    .line 82
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validatePayloadFormat(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->validatePayloadFormat(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

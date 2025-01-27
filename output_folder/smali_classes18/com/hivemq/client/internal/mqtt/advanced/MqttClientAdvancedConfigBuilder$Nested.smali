.class public Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
.source "MqttClientAdvancedConfigBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder<",
        "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "advancedConfig"    # Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;",
            "TP;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;)V

    .line 96
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 97
    return-void
.end method


# virtual methods
.method public bridge synthetic allowServerReAuth(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->allowServerReAuth(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

.method public applyAdvancedConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors(Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic interceptors()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptorsBuilder$Nested;
    .locals 1

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->interceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptorsBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;
    .locals 1

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic validatePayloadFormat(Z)Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;
    .locals 0

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;->validatePayloadFormat(Z)Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilderBase;

    return-object p1
.end method

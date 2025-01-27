.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfig;
.super Ljava/lang/Object;
.source "Mqtt5ClientAdvancedConfig.java"


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder;
    .locals 1

    .line 40
    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfigBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt5/advanced/Mqtt5ClientAdvancedConfigBuilder;
.end method

.method public abstract getInterceptors()Lcom/hivemq/client/mqtt/mqtt5/advanced/interceptor/Mqtt5ClientInterceptors;
.end method

.method public abstract isAllowServerReAuth()Z
.end method

.method public abstract isValidatePayloadFormat()Z
.end method

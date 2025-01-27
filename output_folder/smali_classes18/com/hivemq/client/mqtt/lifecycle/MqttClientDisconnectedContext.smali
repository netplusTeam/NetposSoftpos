.class public interface abstract Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;
.super Ljava/lang/Object;
.source "MqttClientDisconnectedContext.java"


# virtual methods
.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getClientConfig()Lcom/hivemq/client/mqtt/MqttClientConfig;
.end method

.method public abstract getReconnector()Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

.method public abstract getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
.end method

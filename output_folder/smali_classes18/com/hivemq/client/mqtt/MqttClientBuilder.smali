.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientBuilder;
.super Ljava/lang/Object;
.source "MqttClientBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "Lcom/hivemq/client/mqtt/MqttClientBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract useMqttVersion3()Lcom/hivemq/client/mqtt/mqtt3/Mqtt3ClientBuilder;
.end method

.method public abstract useMqttVersion5()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method

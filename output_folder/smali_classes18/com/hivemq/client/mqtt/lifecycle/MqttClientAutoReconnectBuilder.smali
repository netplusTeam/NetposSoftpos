.class public interface abstract Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;
.super Ljava/lang/Object;
.source "MqttClientAutoReconnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase<",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;
.end method

.class public interface abstract Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.super Ljava/lang/Object;
.source "MqttClientReconnector.java"


# static fields
.field public static final DEFAULT_DELAY_MS:J = 0x0L

.field public static final DEFAULT_RECONNECT:Z = false

.field public static final DEFAULT_REPUBLISH_IF_SESSION_EXPIRED:Z = false

.field public static final DEFAULT_RESUBSCRIBE_IF_SESSION_EXPIRED:Z = true


# virtual methods
.method public abstract delay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

.method public abstract getAttempts()I
.end method

.method public abstract getDelay(Ljava/util/concurrent/TimeUnit;)J
.end method

.method public abstract getTransportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfig;
.end method

.method public abstract isReconnect()Z
.end method

.method public abstract isRepublishIfSessionExpired()Z
.end method

.method public abstract isResubscribeIfSessionExpired()Z
.end method

.method public abstract reconnect(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

.method public abstract reconnectWhen(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;"
        }
    .end annotation
.end method

.method public abstract republishIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

.method public abstract resubscribeIfSessionExpired(Z)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

.method public abstract transportConfig()Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/mqtt/MqttClientTransportConfigBuilder$Nested<",
            "+",
            "Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;",
            ">;"
        }
    .end annotation
.end method

.method public abstract transportConfig(Lcom/hivemq/client/mqtt/MqttClientTransportConfig;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientReconnector;
.end method

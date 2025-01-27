.class public interface abstract Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;
.super Ljava/lang/Object;
.source "MqttClientAutoReconnect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedListener;


# static fields
.field public static final DEFAULT_MAX_DELAY_S:J = 0x78L

.field public static final DEFAULT_START_DELAY_S:J = 0x1L


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;
    .locals 1

    .line 53
    new-instance v0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;
.end method

.method public abstract getInitialDelay(Ljava/util/concurrent/TimeUnit;)J
.end method

.method public abstract getMaxDelay(Ljava/util/concurrent/TimeUnit;)J
.end method

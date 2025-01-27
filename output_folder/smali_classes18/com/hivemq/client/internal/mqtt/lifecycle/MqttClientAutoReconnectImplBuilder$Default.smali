.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
.source "MqttClientAutoReconnectImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;)V
    .locals 0
    .param p1, "autoReconnect"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    .line 74
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;)V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnect;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;
    .locals 0

    .line 79
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

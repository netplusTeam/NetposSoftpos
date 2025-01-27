.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
.source "MqttClientAutoReconnectImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "autoReconnect"    # Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;)V

    .line 93
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 94
    return-void
.end method


# virtual methods
.method public applyAutomaticReconnect()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .locals 0

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;
    .locals 0

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;->maxDelay(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/lifecycle/MqttClientAutoReconnectBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder;
    .locals 1

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientAutoReconnectImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

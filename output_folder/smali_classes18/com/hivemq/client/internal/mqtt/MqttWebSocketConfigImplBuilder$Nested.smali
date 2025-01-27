.class public Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
.source "MqttWebSocketConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;",
            "TP;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;)V

    .line 101
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 102
    return-void
.end method


# virtual methods
.method public applyWebSocketConfig()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic queryString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 1

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverPath(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic subprotocol(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

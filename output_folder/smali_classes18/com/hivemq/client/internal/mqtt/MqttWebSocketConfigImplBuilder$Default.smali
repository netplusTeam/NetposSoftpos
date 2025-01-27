.class public Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
.source "MqttWebSocketConfigImplBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<",
        "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;)V
    .locals 0
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 82
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;)V

    .line 83
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/MqttWebSocketConfig;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->build()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic queryString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;
    .locals 0

    .line 87
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverPath(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

.method public bridge synthetic subprotocol(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;

    return-object p1
.end method

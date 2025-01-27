.class public abstract Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
.super Ljava/lang/Object;
.source "MqttWebSocketConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private handshakeTimeoutMs:I

.field private queryString:Ljava/lang/String;

.field private serverPath:Ljava/lang/String;

.field private subprotocol:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString:Ljava/lang/String;

    .line 34
    const-string v0, "mqtt"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol:Ljava/lang/String;

    .line 35
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeoutMs:I

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;)V
    .locals 1
    .param p1, "webSocketConfig"    # Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 39
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString:Ljava/lang/String;

    .line 34
    const-string v0, "mqtt"

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol:Ljava/lang/String;

    .line 35
    const/16 v0, 0x2710

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeoutMs:I

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getServerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getSubprotocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getHandshakeTimeoutMs()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeoutMs:I

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    .locals 5

    .line 74
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString:Ljava/lang/String;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol:Ljava/lang/String;

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeoutMs:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 8
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    const-string v7, "Handshake timeout in milliseconds"

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/util/Checks;->range(JJJLjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->handshakeTimeoutMs:I

    .line 70
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public queryString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    const-string v0, "Query string"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->queryString:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public serverPath(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 3
    .param p1, "serverPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    const-string v0, "Server path"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "^/+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->serverPath:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public subprotocol(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;
    .locals 1
    .param p1, "subprotocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;, "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder<TB;>;"
    const-string v0, "Subprotocol"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->subprotocol:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;->self()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder;

    move-result-object v0

    return-object v0
.end method

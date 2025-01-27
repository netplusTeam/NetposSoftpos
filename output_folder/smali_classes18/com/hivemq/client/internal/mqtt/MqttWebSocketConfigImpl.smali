.class public Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
.super Ljava/lang/Object;
.source "MqttWebSocketConfigImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttWebSocketConfig;


# static fields
.field static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# instance fields
.field private final handshakeTimeoutMs:I

.field private final queryString:Ljava/lang/String;

.field private final serverPath:Ljava/lang/String;

.field private final subprotocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const-string v1, ""

    const-string v2, "mqtt"

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serverPath"    # Ljava/lang/String;
    .param p2, "queryString"    # Ljava/lang/String;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "handshakeTimeoutMs"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 81
    return v2

    .line 83
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    .line 85
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 85
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;
    .locals 1

    .line 72
    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->extend()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeTimeoutMs()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubprotocol()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 92
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

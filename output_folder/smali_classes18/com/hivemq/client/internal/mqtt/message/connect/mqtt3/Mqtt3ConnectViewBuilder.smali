.class public abstract Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
.super Ljava/lang/Object;
.source "Mqtt3ConnectViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Send;,
        Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cleanSession:Z

.field private keepAliveSeconds:I

.field private simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

.field private willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession:Z

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;)V
    .locals 2
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    .line 47
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession:Z

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    .line 49
    .local v0, "delegate":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    .line 50
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession:Z

    .line 51
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 52
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 53
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .locals 4

    .line 93
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession:Z

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-static {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->of(IZLcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    return-object v0
.end method

.method public cleanSession(Z)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 1
    .param p1, "cleanSession"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession:Z

    .line 69
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keepAlive(I)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 1
    .param p1, "keepAlive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    const-string v0, "Keep alive"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    .line 59
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public noKeepAlive()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAliveSeconds:I

    .line 64
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested<",
            "TB;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 2
    .param p1, "simpleAuth"    # Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;",
            ")TB;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    .line 74
    const-string v1, "Simple auth"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    .line 75
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 2
    .param p1, "willPublish"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ")TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    .line 84
    const-string v1, "Will publish"

    invoke-static {p1, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->asWill()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->willPublish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    .line 85
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested<",
            "TB;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<TB;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;)V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

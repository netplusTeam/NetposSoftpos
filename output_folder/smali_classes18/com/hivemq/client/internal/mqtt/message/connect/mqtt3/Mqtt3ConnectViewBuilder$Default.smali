.class public Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;
.super Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
.source "Mqtt3ConnectViewBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;)V
    .locals 0
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    .line 101
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;)V

    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cleanSession(Z)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->cleanSession(Z)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic keepAlive(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->keepAlive(I)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic noKeepAlive()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->noKeepAlive()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;
    .locals 0

    .line 106
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;->self()Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic simpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder$Nested;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->willPublish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3WillPublishBuilder$Nested;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectViewBuilder;->willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishViewBuilder$WillNested;

    move-result-object v0

    return-object v0
.end method

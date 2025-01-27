.class public abstract Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
.super Ljava/lang/Object;
.source "MqttConnectRestrictionsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;,
        Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private maximumPacketSize:I

.field private receiveMaximum:I

.field private requestProblemInformation:Z

.field private requestResponseInformation:Z

.field private sendMaximum:I

.field private sendMaximumPacketSize:I

.field private sendTopicAliasMaximum:I

.field private topicAliasMaximum:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0xffff

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum:I

    .line 32
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum:I

    .line 33
    const v0, 0x10000004

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize:I

    .line 34
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum:I

    .line 36
    const/16 v1, 0x10

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation:Z

    .line 38
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation:Z

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;)V
    .locals 2
    .param p1, "restrictions"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    .line 42
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0xffff

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum:I

    .line 32
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum:I

    .line 33
    const v0, 0x10000004

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize:I

    .line 34
    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum:I

    .line 36
    const/16 v1, 0x10

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation:Z

    .line 38
    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation:Z

    .line 43
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum:I

    .line 44
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum:I

    .line 45
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize:I

    .line 46
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximumPacketSize()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize:I

    .line 47
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum:I

    .line 48
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendTopicAliasMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum:I

    .line 49
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation:Z

    .line 50
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation:Z

    .line 51
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    .locals 10

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum:I

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum:I

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize:I

    iget v4, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize:I

    iget v5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum:I

    iget v6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum:I

    iget-boolean v7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation:Z

    iget-boolean v8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;-><init>(IIIIIIZZ)V

    return-object v9
.end method

.method public maximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "maximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Maximum packet size"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->packetSize(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize:I

    .line 67
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public receiveMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "receiveMaximum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Receive maximum"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShortNotZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum:I

    .line 57
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public requestProblemInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "requestProblemInformation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation:Z

    .line 87
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public requestResponseInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "requestResponseInformation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation:Z

    .line 92
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public sendMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "sendMaximum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Send maximum"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShortNotZero(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum:I

    .line 62
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sendMaximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "sendMaximumPacketSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Send maximum packet size"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->packetSize(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize:I

    .line 72
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public sendTopicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "sendTopicAliasMaximum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Send topic alias maximum"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum:I

    .line 82
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public topicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1
    .param p1, "topicAliasMaximum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<TB;>;"
    const-string v0, "Topic alias maximum"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->unsignedShort(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum:I

    .line 77
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object v0

    return-object v0
.end method

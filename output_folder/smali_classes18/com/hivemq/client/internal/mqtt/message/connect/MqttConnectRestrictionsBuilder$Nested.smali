.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
.source "MqttConnectRestrictionsBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "restrictions"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;",
            "TP;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;)V

    .line 123
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 124
    return-void
.end method


# virtual methods
.method public applyRestrictions()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maximumPacketSize(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->maximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic receiveMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->receiveMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic requestProblemInformation(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestProblemInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic requestResponseInformation(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->requestResponseInformation(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;
    .locals 1

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sendMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sendMaximumPacketSize(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendMaximumPacketSize(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sendTopicAliasMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->sendTopicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

.method public bridge synthetic topicAliasMaximum(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;
    .locals 0

    .line 115
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;->topicAliasMaximum(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilderBase;

    return-object p1
.end method

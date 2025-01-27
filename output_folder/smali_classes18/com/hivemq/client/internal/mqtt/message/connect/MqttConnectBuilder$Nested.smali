.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
.source "MqttConnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
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
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilder$Nested<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "TP;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    .local p2, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;TP;>;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    .line 166
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "TP;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 160
    return-void
.end method


# virtual methods
.method public applyConnect()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cleanStart(Z)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->cleanStart(Z)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->enhancedAuth(Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic keepAlive(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->keepAlive(I)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic noKeepAlive()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->noKeepAlive()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictions;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic restrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectRestrictionsBuilder$Nested;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->restrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictionsBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic simpleAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;
    .locals 0

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5ConnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic willPublish()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Nested;
    .locals 1

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder$Nested<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectBuilder;->willPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillNested;

    move-result-object v0

    return-object v0
.end method

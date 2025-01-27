.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;
.super Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.source "MqttDisconnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Send"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$Send<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;",
            "TP;>;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 1

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<",
            "TP;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;

    move-result-object v0

    return-object v0
.end method

.method public send()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverReference(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 139
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send;, "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Send<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

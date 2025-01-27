.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;
.super Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.source "MqttDisconnectBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$SendVoid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendVoid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder$SendVoid;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "parentConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;->parentConsumer:Ljava/util/function/Consumer;

    .line 164
    return-void
.end method


# virtual methods
.method public bridge synthetic noSessionExpiry()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->noSessionExpiry()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object v0
.end method

.method public bridge synthetic reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;
    .locals 0

    .line 168
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;->self()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;

    move-result-object v0

    return-object v0
.end method

.method public send()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;->parentConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$SendVoid;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public bridge synthetic serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic serverReference(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->serverReference(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic sessionExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->sessionExpiryInterval(J)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilderBase;

    return-object p1
.end method

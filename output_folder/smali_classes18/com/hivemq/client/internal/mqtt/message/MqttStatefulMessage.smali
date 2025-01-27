.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;
.super Ljava/lang/Object;
.source "MqttStatefulMessage.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;"
    }
.end annotation


# instance fields
.field private final statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;, "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<TM;>;"
    .local p1, "statelessMessage":Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    .line 36
    return-void
.end method


# virtual methods
.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;, "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<TM;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1

    .line 45
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;, "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<TM;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;, "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<TM;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    return-object v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 2

    .line 56
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;, "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stateless="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

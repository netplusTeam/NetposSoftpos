.class public Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
.super Ljava/lang/Object;
.source "MqttPubAckBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;


# instance fields
.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 1
    .param p1, "publish"    # Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    .line 40
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 43
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    .line 44
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .locals 5

    .line 80
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getPacketIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    return-object v0
.end method

.method public reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
    .locals 1
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    .line 48
    const-string v0, "Reason code"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    .line 49
    return-object p0
.end method

.method public bridge synthetic reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    move-result-object p1

    return-object p1
.end method

.method public reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
    .locals 1
    .param p1, "reasonString"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 60
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 61
    return-object p0
.end method

.method public reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
    .locals 1
    .param p1, "reasonString"    # Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 55
    return-object p0
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;

    .line 66
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 67
    return-object p0
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckBuilder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    move-result-object p1

    return-object p1
.end method

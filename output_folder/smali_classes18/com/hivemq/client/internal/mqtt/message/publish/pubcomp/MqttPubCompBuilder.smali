.class public Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
.super Ljava/lang/Object;
.source "MqttPubCompBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;


# instance fields
.field private final pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 1
    .param p1, "pubRel"    # Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    .line 39
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 42
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    .line 43
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;
    .locals 5

    .line 83
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;->getPacketIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-object v0
.end method

.method public getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    return-object v0
.end method

.method public reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
    .locals 0
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    .line 46
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    .line 47
    return-object p0
.end method

.method public reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
    .locals 1
    .param p1, "reasonString"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 58
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 59
    return-object p0
.end method

.method public reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
    .locals 1
    .param p1, "reasonString"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 53
    return-object p0
.end method

.method public bridge synthetic reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reasonString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested<",
            "Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)V

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
    .locals 1
    .param p1, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;

    .line 64
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 65
    return-object p0
.end method

.method public bridge synthetic userProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilder$Nested;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImplBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompBuilder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    move-result-object p1

    return-object p1
.end method

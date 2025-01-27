.class public Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "MqttConnAck.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;"
    }
.end annotation


# static fields
.field public static final KEEP_ALIVE_FROM_CONNECT:I = -0x1

.field public static final SESSION_EXPIRY_INTERVAL_FROM_CONNECT:J = -0x1L


# instance fields
.field private final assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private final enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

.field private final responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

.field private final serverKeepAlive:I

.field private final serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final sessionExpiryInterval:J

.field private final sessionPresent:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .param p2, "sessionPresent"    # Z
    .param p3, "sessionExpiryInterval"    # J
    .param p5, "serverKeepAlive"    # I
    .param p6, "assignedClientIdentifier"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .param p7, "enhancedAuth"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;
    .param p8, "restrictions"    # Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    .param p9, "responseInformation"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p10, "serverReference"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p11, "reasonString"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p12, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 70
    invoke-direct {p0, p1, p11, p12}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 71
    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    .line 72
    iput-wide p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    .line 73
    iput p5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    .line 74
    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 75
    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    .line 76
    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    .line 77
    iput-object p9, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 78
    iput-object p10, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 161
    return v0

    .line 163
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 164
    return v2

    .line 166
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    .line 168
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    iget-boolean v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    iget-wide v5, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    iget v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    .line 170
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    .line 171
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 172
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 173
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 168
    :goto_0
    return v0
.end method

.method public getAssignedClientIdentifier()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedAuth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRawAssignedClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public getRawEnhancedAuth()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    return-object v0
.end method

.method public getRawServerKeepAlive()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    return v0
.end method

.method public getRawSessionExpiryInterval()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public bridge synthetic getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object v0
.end method

.method public getResponseInformation()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    return-object v0
.end method

.method public bridge synthetic getRestrictions()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckRestrictions;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public getServerKeepAlive()Ljava/util/OptionalInt;
    .locals 2

    .line 98
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getServerReference()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSessionExpiryInterval()Ljava/util/OptionalLong;
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->partialHashCode()I

    move-result v0

    .line 179
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 180
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    add-int/2addr v1, v2

    .line 182
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 183
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 187
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isSessionPresent()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 7

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", sessionExpiryInterval="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->sessionExpiryInterval:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    int-to-long v5, v1

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", serverKeepAlive="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverKeepAlive:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", assignedClientIdentifier="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->assignedClientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", enhancedAuth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->enhancedAuth:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    sget-object v3, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    if-ne v1, v3, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", restrictions="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->restrictions:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", responseInformation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->responseInformation:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", serverReference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnAck{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

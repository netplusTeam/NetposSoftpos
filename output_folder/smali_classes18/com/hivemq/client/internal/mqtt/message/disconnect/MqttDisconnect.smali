.class public Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "MqttDisconnect.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

.field public static final SESSION_EXPIRY_INTERVAL_FROM_CONNECT:J = -0x1L


# instance fields
.field private final serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final sessionExpiryInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    sget-object v6, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .param p2, "sessionExpiryInterval"    # J
    .param p4, "serverReference"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p5, "reasonString"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p6, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 56
    invoke-direct {p0, p1, p5, p6}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 57
    iput-wide p2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    .line 58
    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 101
    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 104
    return v2

    .line 106
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    .line 108
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    iget-wide v5, v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 108
    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;
    .locals 1

    .line 82
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectBuilder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->extend()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public getRawServerReference()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public getRawSessionExpiryInterval()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    return-wide v0
.end method

.method public bridge synthetic getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

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

    .line 73
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSessionExpiryInterval()Ljava/util/OptionalLong;
    .locals 4

    .line 63
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getUserProperties()Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->partialHashCode()I

    move-result v0

    .line 115
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sessionExpiryInterval="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->sessionExpiryInterval:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", serverReference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->serverReference:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttDisconnect{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;->toAttributeString()Ljava/lang/String;

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

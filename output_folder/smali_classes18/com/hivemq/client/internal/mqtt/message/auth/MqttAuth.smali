.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
.super Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;
.source "MqttAuth.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;"
    }
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V
    .locals 0
    .param p1, "reasonCode"    # Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .param p2, "method"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p3, "data"    # Ljava/nio/ByteBuffer;
    .param p4, "reasonString"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .param p5, "userProperties"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    .line 51
    invoke-direct {p0, p1, p4, p5}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    .line 52
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 53
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 88
    return v2

    .line 90
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 92
    .local v1, "that":Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    invoke-virtual {p0, v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->partialEquals(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getData()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->optionalReadOnly(Ljava/nio/ByteBuffer;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public bridge synthetic getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRawData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public bridge synthetic getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

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
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->partialHashCode()I

    move-result v0

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reasonCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->data:Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/hivemq/client/internal/util/StringUtil;->prepend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttAuth{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->toAttributeString()Ljava/lang/String;

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

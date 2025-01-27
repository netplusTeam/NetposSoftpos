.class public final Lcom/hivemq/client/internal/mqtt/util/MqttChecks;
.super Ljava/lang/Object;
.source "MqttChecks.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryData(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "binary"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 136
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static binaryData([BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "binary"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 115
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static binaryDataInternal(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "binary"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be encoded as binary data. Maximum length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0xffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static binaryDataInternal([BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "binary"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be encoded as binary data. Maximum length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0xffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "binary"    # Ljava/nio/ByteBuffer;
    .param p1, "name"    # Ljava/lang/String;

    .line 141
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static binaryDataOrNull([BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "binary"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static clientIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 2
    .param p0, "clientIdentifier"    # Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;

    .line 101
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    const-string v1, "Client identifier"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public static connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 2
    .param p0, "connect"    # Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;

    .line 195
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    const-string v1, "Connect"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 2
    .param p0, "connect"    # Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;

    .line 190
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const-string v1, "Connect"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object v0
.end method

.method public static disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 2
    .param p0, "disconnect"    # Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;

    .line 230
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    const-string v1, "Disconnect"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-object v0
.end method

.method public static packetSize(ILjava/lang/String;)I
    .locals 4
    .param p0, "packetSize"    # I
    .param p1, "name"    # Ljava/lang/String;

    .line 181
    const v0, 0x10000004

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    .line 185
    return p0

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not exceed the value range of ]0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], but was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 2
    .param p0, "publish"    # Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    .line 205
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    const-string v1, "Publish"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    return-object v0
.end method

.method public static publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 2
    .param p0, "publish"    # Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    .line 200
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const-string v1, "Publish"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object v0
.end method

.method public static reasonString(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "reasonString"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 84
    const-string v0, "Reason string"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public static reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "reasonString"    # Ljava/lang/String;

    .line 79
    const-string v0, "Reason string"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public static string(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "string"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public static stringOrNull(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "string"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .param p1, "name"    # Ljava/lang/String;

    .line 74
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/util/Checks;->notImplementedOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method public static stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .locals 2
    .param p0, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;

    .line 215
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    const-string v1, "Subscribe"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public static subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .locals 2
    .param p0, "subscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;

    .line 210
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    const-string v1, "Subscribe"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    return-object v0
.end method

.method public static topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 2
    .param p0, "topic"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    .line 89
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    const-string v1, "Topic"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public static topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 2
    .param p0, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;

    .line 94
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    const-string v1, "Topic filter"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    return-object v0
.end method

.method public static unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .locals 2
    .param p0, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;

    .line 225
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    const-string v1, "Unsubscribe"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;->getDelegate()Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    move-result-object v0

    return-object v0
.end method

.method public static unsubscribe(Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .locals 2
    .param p0, "unsubscribe"    # Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/Mqtt5Unsubscribe;

    .line 220
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    const-string v1, "Unsubscribe"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;

    return-object v0
.end method

.method public static userProperties(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 2
    .param p0, "userProperties"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperties;

    .line 146
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-string v1, "User properties"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    return-object v0
.end method

.method public static userProperties(Ljava/util/Collection;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;"
        }
    .end annotation

    .line 162
    .local p0, "userProperties":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    const-string v0, "User properties"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf(Ljava/util/Collection;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 163
    .local v0, "immutable":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    const-class v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    .line 164
    const-string v2, "User property"

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/Checks;->elementsNotImplemented(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Class;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    .line 163
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v1

    return-object v1
.end method

.method public static varargs userProperties([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 3
    .param p0, "userProperties"    # [Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    .line 153
    const-string v0, "User properties"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->copyOf([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    .line 154
    .local v0, "immutable":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;>;"
    const-class v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    .line 155
    const-string v2, "User property"

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/Checks;->elementsNotImplemented(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Class;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->of(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v1

    return-object v1
.end method

.method public static userProperty(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 2
    .param p0, "name"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .param p1, "value"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 176
    nop

    .line 177
    const-string v0, "User property name"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->string(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    const-string v1, "User property value"

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->string(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v0

    return-object v0
.end method

.method public static userProperty(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;
    .locals 2
    .param p0, "userProperty"    # Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;

    .line 169
    const-class v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    const-string v1, "User property"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    return-object v0
.end method

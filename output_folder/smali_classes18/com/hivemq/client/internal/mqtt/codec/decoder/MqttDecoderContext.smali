.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;
.super Ljava/lang/Object;
.source "MqttDecoderContext.java"


# instance fields
.field private final directBufferAuth:Z

.field private final directBufferCorrelationData:Z

.field private final directBufferPayload:Z

.field private final maximumPacketSize:I

.field private final problemInformationRequested:Z

.field private final responseInformationRequested:Z

.field private final topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

.field private final validatePayloadFormat:Z


# direct methods
.method constructor <init>(IIZZZZZZ)V
    .locals 1
    .param p1, "maximumPacketSize"    # I
    .param p2, "topicAliasMaximum"    # I
    .param p3, "problemInformationRequested"    # Z
    .param p4, "responseInformationRequested"    # Z
    .param p5, "validatePayloadFormat"    # Z
    .param p6, "directBufferPayload"    # Z
    .param p7, "directBufferAuth"    # Z
    .param p8, "directBufferCorrelationData"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->maximumPacketSize:I

    .line 47
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-array v0, p2, [Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    :goto_0
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 48
    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->problemInformationRequested:Z

    .line 49
    iput-boolean p4, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->responseInformationRequested:Z

    .line 50
    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat:Z

    .line 51
    iput-boolean p6, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferPayload:Z

    .line 52
    iput-boolean p7, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferAuth:Z

    .line 53
    iput-boolean p8, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferCorrelationData:Z

    .line 54
    return-void
.end method


# virtual methods
.method public getMaximumPacketSize()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->maximumPacketSize:I

    return v0
.end method

.method public getTopicAliasMapping()[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->topicAliasMapping:[Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    return-object v0
.end method

.method public isProblemInformationRequested()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->problemInformationRequested:Z

    return v0
.end method

.method public isResponseInformationRequested()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->responseInformationRequested:Z

    return v0
.end method

.method public useDirectBufferAuth()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferAuth:Z

    return v0
.end method

.method public useDirectBufferCorrelationData()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferCorrelationData:Z

    return v0
.end method

.method public useDirectBufferPayload()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->directBufferPayload:Z

    return v0
.end method

.method public validatePayloadFormat()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->validatePayloadFormat:Z

    return v0
.end method

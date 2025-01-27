.class final Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3MessageDecoderUtil;
.super Ljava/lang/Object;
.source "Mqtt3MessageDecoderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static wrongReturnCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    .line 30
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string/jumbo v1, "wrong return code"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

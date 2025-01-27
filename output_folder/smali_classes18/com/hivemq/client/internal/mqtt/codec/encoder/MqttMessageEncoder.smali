.class public abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.super Ljava/lang/Object;
.source "MqttMessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method castAndEncode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "message"    # Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .param p2, "context"    # Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    .line 40
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;, "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<TM;>;"
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected abstract encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation
.end method

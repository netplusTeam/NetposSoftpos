.class public interface abstract Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
.super Ljava/lang/Object;
.source "MqttMessageDecoder.java"


# virtual methods
.method public abstract decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
        }
    .end annotation
.end method

.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
.super Ljava/lang/Object;
.source "MqttEncoderContext.java"


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;

.field private maximumPacketSize:I


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x10000004

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    .line 32
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 33
    return-void
.end method


# virtual methods
.method public getAllocator()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    return v0
.end method

.method setMaximumPacketSize(I)V
    .locals 0
    .param p1, "maximumPacketSize"    # I

    .line 44
    iput p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    .line 45
    return-void
.end method

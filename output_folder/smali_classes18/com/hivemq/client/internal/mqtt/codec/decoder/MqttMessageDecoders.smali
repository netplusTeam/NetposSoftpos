.class public abstract Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
.super Ljava/lang/Object;
.source "MqttMessageDecoders.java"


# instance fields
.field protected final decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;
    .locals 2
    .param p1, "code"    # I

    .line 39
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;
.super Ljava/lang/Object;
.source "MqttBinaryData.java"


# static fields
.field public static final EMPTY_LENGTH:I = 0x2

.field public static final MAX_LENGTH:I = 0xffff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "direct"    # Z

    .line 63
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 64
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 67
    .local v0, "length":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 68
    return-object v1

    .line 70
    :cond_1
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    return-object v1
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)[B
    .locals 3
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 43
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    .line 47
    .local v0, "length":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 48
    return-object v1

    .line 50
    :cond_1
    new-array v1, v0, [B

    .line 51
    .local v1, "binary":[B
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 52
    return-object v1
.end method

.method public static encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 98
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 99
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 100
    return-void
.end method

.method public static encode([BLio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "binary"    # [B
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 85
    array-length v0, p0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 86
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 87
    return-void
.end method

.method public static encodeEmpty(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 109
    return-void
.end method

.method public static encodedLength(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static encodedLength([B)I
    .locals 1
    .param p0, "binary"    # [B

    .line 140
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static isInRange(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInRange([B)Z
    .locals 2
    .param p0, "binary"    # [B

    .line 118
    array-length v0, p0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

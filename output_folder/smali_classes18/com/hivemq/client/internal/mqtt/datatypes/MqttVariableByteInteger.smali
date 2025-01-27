.class public final Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;
.super Ljava/lang/Object;
.source "MqttVariableByteInteger.java"


# static fields
.field private static final CONTINUATION_BIT_MASK:I = 0x80

.field public static final FOUR_BYTES_MAX_VALUE:I = 0xfffffff

.field public static final MAXIMUM_PACKET_SIZE_LIMIT:I = 0x10000004

.field private static final MAX_SHIFT:I = 0x15

.field public static final NOT_ENOUGH_BYTES:I = -0x1

.field public static final NOT_MINIMUM_BYTES:I = -0x3

.field private static final ONE_BYTE_MAX_VALUE:I = 0x7f

.field private static final THREE_BYTES_MAX_VALUE:I = 0x1fffff

.field public static final TOO_LARGE:I = -0x2

.field private static final TWO_BYTES_MAX_VALUE:I = 0x3fff

.field private static final VALUE_BITS:B = 0x7t

.field private static final VALUE_MASK:I = 0x7f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "value":I
    const/4 v1, 0x0

    .line 59
    .local v1, "shift":B
    :goto_0
    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 60
    const/4 v2, -0x2

    return v2

    .line 62
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const/4 v2, -0x1

    return v2

    .line 65
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    .line 66
    .local v2, "encodedByte":B
    and-int/lit8 v3, v2, 0x7f

    .line 67
    .local v3, "encodedByteValue":I
    shl-int v4, v3, v1

    add-int/2addr v0, v4

    .line 68
    add-int/lit8 v4, v1, 0x7

    int-to-byte v1, v4

    .line 69
    .end local v3    # "encodedByteValue":I
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_3

    .line 71
    const/4 v3, 0x7

    if-le v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 72
    const/4 v3, -0x3

    return v3

    .line 75
    :cond_2
    return v0

    .line 69
    :cond_3
    goto :goto_0
.end method

.method public static encode(ILio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 88
    :goto_0
    and-int/lit8 v0, p0, 0x7f

    .line 89
    .local v0, "encodedByte":I
    ushr-int/lit8 p0, p0, 0x7

    .line 90
    if-lez p0, :cond_0

    .line 91
    or-int/lit16 v0, v0, 0x80

    .line 93
    :cond_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 94
    .end local v0    # "encodedByte":I
    if-gtz p0, :cond_1

    .line 95
    return-void

    .line 94
    :cond_1
    goto :goto_0
.end method

.method public static encodedLength(I)I
    .locals 2
    .param p0, "value"    # I

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "length":I
    const/16 v1, 0x7f

    if-le p0, v1, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    const/16 v1, 0x3fff

    if-le p0, v1, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    const v1, 0x1fffff

    if-le p0, v1, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public static isInRange(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 104
    if-ltz p0, :cond_0

    const v0, 0xfffffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

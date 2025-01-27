.class public Lio/netty/handler/codec/compression/SnappyFrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SnappyFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_COMPRESSIBLE_LENGTH:I = 0x12

.field private static final STREAM_START:[B


# instance fields
.field private final snappy:Lio/netty/handler/codec/compression/Snappy;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->STREAM_START:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x6t
        0x0t
        0x0t
        0x73t
        0x4et
        0x61t
        0x50t
        0x70t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 45
    new-instance v0, Lio/netty/handler/codec/compression/Snappy;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Snappy;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    return-void
.end method

.method private static calculateAndWriteChecksum(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "slice"    # Lio/netty/buffer/ByteBuf;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 121
    invoke-static {p0}, Lio/netty/handler/codec/compression/Snappy;->calculateChecksum(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeIntLE(I)Lio/netty/buffer/ByteBuf;

    .line 122
    return-void
.end method

.method private static setChunkLength(Lio/netty/buffer/ByteBuf;I)V
    .locals 4
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "lengthIdx"    # I

    .line 97
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x3

    .line 98
    .local v0, "chunkLength":I
    ushr-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    .line 102
    return-void

    .line 99
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressed data too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static writeChunkLength(Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "chunkLength"    # I

    .line 111
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMediumLE(I)Lio/netty/buffer/ByteBuf;

    .line 112
    return-void
.end method

.method private static writeUnencodedChunk(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dataLength"    # I

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 91
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->writeChunkLength(Lio/netty/buffer/ByteBuf;I)V

    .line 92
    invoke-static {p0, p1}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->calculateAndWriteChecksum(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 93
    invoke-virtual {p1, p0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 94
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->started:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 55
    iput-boolean v1, p0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->started:Z

    .line 56
    sget-object v0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->STREAM_START:[B

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 59
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 60
    .local v0, "dataLength":I
    const/16 v2, 0x12

    if-le v0, v2, :cond_4

    .line 62
    :goto_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    add-int/2addr v3, v1

    .line 63
    .local v3, "lengthIdx":I
    if-ge v0, v2, :cond_2

    .line 64
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 65
    .local v1, "slice":Lio/netty/buffer/ByteBuf;
    invoke-static {v1, p3, v0}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->writeUnencodedChunk(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 66
    goto :goto_1

    .line 69
    .end local v1    # "slice":Lio/netty/buffer/ByteBuf;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 70
    const/16 v4, 0x7fff

    if-le v0, v4, :cond_3

    .line 71
    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 72
    .local v5, "slice":Lio/netty/buffer/ByteBuf;
    invoke-static {v5, p3}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->calculateAndWriteChecksum(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 73
    iget-object v6, p0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {v6, v5, p3, v4}, Lio/netty/handler/codec/compression/Snappy;->encode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 74
    invoke-static {p3, v3}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->setChunkLength(Lio/netty/buffer/ByteBuf;I)V

    .line 75
    nop

    .end local v5    # "slice":Lio/netty/buffer/ByteBuf;
    add-int/lit16 v0, v0, -0x7fff

    .line 76
    nop

    .line 83
    .end local v3    # "lengthIdx":I
    goto :goto_0

    .line 77
    .restart local v3    # "lengthIdx":I
    :cond_3
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 78
    .restart local v1    # "slice":Lio/netty/buffer/ByteBuf;
    invoke-static {v1, p3}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->calculateAndWriteChecksum(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    .line 79
    iget-object v2, p0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->snappy:Lio/netty/handler/codec/compression/Snappy;

    invoke-virtual {v2, v1, p3, v0}, Lio/netty/handler/codec/compression/Snappy;->encode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 80
    invoke-static {p3, v3}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->setChunkLength(Lio/netty/buffer/ByteBuf;I)V

    .line 81
    goto :goto_1

    .line 85
    .end local v1    # "slice":Lio/netty/buffer/ByteBuf;
    .end local v3    # "lengthIdx":I
    :cond_4
    invoke-static {p2, p3, v0}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->writeUnencodedChunk(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 87
    :goto_1
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

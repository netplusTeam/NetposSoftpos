.class final Lio/netty/handler/codec/compression/Bzip2BitWriter;
.super Ljava/lang/Object;
.source "Bzip2BitWriter.java"


# instance fields
.field private bitBuffer:J

.field private bitCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method flush(Lio/netty/buffer/ByteBuf;)V
    .locals 7
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;

    .line 103
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    .line 105
    .local v0, "bitCount":I
    if-lez v0, :cond_3

    .line 106
    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    .line 107
    .local v1, "bitBuffer":J
    rsub-int/lit8 v3, v0, 0x40

    .line 109
    .local v3, "shiftToRight":I
    const/16 v4, 0x8

    if-gt v0, v4, :cond_0

    .line 110
    ushr-long v4, v1, v3

    rsub-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 111
    :cond_0
    const/16 v4, 0x10

    if-gt v0, v4, :cond_1

    .line 112
    ushr-long v4, v1, v3

    rsub-int/lit8 v6, v0, 0x10

    shl-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 113
    :cond_1
    const/16 v4, 0x18

    if-gt v0, v4, :cond_2

    .line 114
    ushr-long v4, v1, v3

    rsub-int/lit8 v6, v0, 0x18

    shl-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 116
    :cond_2
    ushr-long v4, v1, v3

    rsub-int/lit8 v6, v0, 0x20

    shl-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 119
    .end local v1    # "bitBuffer":J
    .end local v3    # "shiftToRight":I
    :cond_3
    :goto_0
    return-void
.end method

.method writeBits(Lio/netty/buffer/ByteBuf;IJ)V
    .locals 6
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "count"    # I
    .param p3, "value"    # J

    .line 42
    if-ltz p2, :cond_1

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 45
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    .line 46
    .local v1, "bitCount":I
    iget-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    rsub-int/lit8 v4, p2, 0x40

    shl-long v4, p3, v4

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 47
    .local v2, "bitBuffer":J
    add-int/2addr v1, p2

    .line 49
    if-lt v1, v0, :cond_0

    .line 50
    ushr-long v4, v2, v0

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 51
    shl-long/2addr v2, v0

    .line 52
    add-int/lit8 v1, v1, -0x20

    .line 54
    :cond_0
    iput-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    .line 55
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    .line 56
    return-void

    .line 43
    .end local v1    # "bitCount":I
    .end local v2    # "bitBuffer":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeBoolean(Lio/netty/buffer/ByteBuf;Z)V
    .locals 6
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "value"    # Z

    .line 63
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    add-int/lit8 v0, v0, 0x1

    .line 64
    .local v0, "bitCount":I
    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x1

    rsub-int/lit8 v5, v0, 0x40

    shl-long/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    or-long/2addr v1, v3

    .line 66
    .local v1, "bitBuffer":J
    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 67
    ushr-long v3, v1, v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 68
    const-wide/16 v1, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    :cond_1
    iput-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    .line 72
    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    .line 73
    return-void
.end method

.method writeInt(Lio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "value"    # I

    .line 95
    int-to-long v0, p2

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    .line 96
    return-void
.end method

.method writeUnary(Lio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "value"    # I

    .line 81
    if-ltz p2, :cond_1

    .line 84
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .end local p2    # "value":I
    .local v0, "value":I
    if-lez p2, :cond_0

    .line 85
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    move p2, v0

    goto :goto_0

    .line 87
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    .line 88
    return-void

    .line 82
    .end local v0    # "value":I
    .restart local p2    # "value":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0 or more)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

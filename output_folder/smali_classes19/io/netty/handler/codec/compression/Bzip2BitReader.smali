.class Lio/netty/handler/codec/compression/Bzip2BitReader;
.super Ljava/lang/Object;
.source "Bzip2BitReader.java"


# static fields
.field private static final MAX_COUNT_OF_READABLE_BYTES:I = 0xfffffff


# instance fields
.field private bitBuffer:J

.field private bitCount:I

.field private in:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasReadableBits(I)Z
    .locals 3
    .param p1, "count"    # I

    .line 139
    if-ltz p1, :cond_2

    .line 142
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    sub-int v1, p1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected value greater than 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasReadableBytes(I)Z
    .locals 4
    .param p1, "count"    # I

    .line 151
    const v0, 0xfffffff

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 155
    shl-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v0

    return v0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: 0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isReadable()Z
    .locals 1

    .line 130
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method readBits(I)I
    .locals 9
    .param p1, "count"    # I

    .line 59
    if-ltz p1, :cond_2

    const/16 v0, 0x20

    if-gt p1, v0, :cond_2

    .line 62
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 63
    .local v1, "bitCount":I
    iget-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 65
    .local v2, "bitBuffer":J
    if-ge v1, p1, :cond_0

    .line 68
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 85
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v4

    .line 86
    .local v4, "readData":J
    const/16 v6, 0x20

    .local v6, "offset":I
    goto :goto_0

    .line 80
    .end local v4    # "readData":J
    .end local v6    # "offset":I
    :pswitch_0
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v4

    int-to-long v4, v4

    .line 81
    .restart local v4    # "readData":J
    const/16 v6, 0x18

    .line 82
    .restart local v6    # "offset":I
    goto :goto_0

    .line 75
    .end local v4    # "readData":J
    .end local v6    # "offset":I
    :pswitch_1
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v4

    int-to-long v4, v4

    .line 76
    .restart local v4    # "readData":J
    const/16 v6, 0x10

    .line 77
    .restart local v6    # "offset":I
    goto :goto_0

    .line 70
    .end local v4    # "readData":J
    .end local v6    # "offset":I
    :pswitch_2
    iget-object v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v4

    int-to-long v4, v4

    .line 71
    .restart local v4    # "readData":J
    const/16 v6, 0x8

    .line 72
    .restart local v6    # "offset":I
    nop

    .line 91
    :goto_0
    shl-long v7, v2, v6

    or-long v2, v7, v4

    .line 92
    add-int/2addr v1, v6

    .line 93
    iput-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 96
    .end local v4    # "readData":J
    .end local v6    # "offset":I
    :cond_0
    sub-int v4, v1, p1

    move v1, v4

    iput v4, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 97
    ushr-long v4, v2, v1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    shl-int v6, v0, p1

    sub-int/2addr v6, v0

    int-to-long v6, v6

    goto :goto_1

    :cond_1
    const-wide v6, 0xffffffffL

    :goto_1
    and-long/2addr v4, v6

    long-to-int v0, v4

    return v0

    .line 60
    .end local v1    # "bitCount":I
    .end local v2    # "bitBuffer":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-32 )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readBoolean()Z
    .locals 2

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readInt()I
    .locals 1

    .line 113
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v0

    return v0
.end method

.method refill()V
    .locals 6

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 121
    .local v0, "readData":I
    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    int-to-long v4, v0

    or-long/2addr v1, v4

    iput-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 122
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 123
    return-void
.end method

.method setByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;

    .line 50
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 51
    return-void
.end method

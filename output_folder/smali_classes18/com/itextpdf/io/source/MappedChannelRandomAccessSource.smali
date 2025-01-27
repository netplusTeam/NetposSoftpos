.class Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;
.super Ljava/lang/Object;
.source "MappedChannelRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final length:J

.field private final offset:J

.field private source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 82
    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    .line 86
    iput-wide p2, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->offset:J

    .line 87
    iput-wide p4, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->length:J

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    .line 89
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is zero or negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->close()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    .line 140
    return-void
.end method

.method public get(J)I
    .locals 2
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->get(J)I

    move-result v0

    return v0

    .line 112
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RandomAccessSource not opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    if-eqz v0, :cond_0

    .line 122
    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->get(J[BII)I

    move-result v0

    return v0

    .line 121
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RandomAccessSource not opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->length:J

    return-wide v0
.end method

.method open()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    iget-object v1, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v3, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->offset:J

    iget-wide v5, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->length:J

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->source:Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    .line 103
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

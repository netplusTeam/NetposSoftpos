.class public Lio/netty/buffer/ByteBufInputStream;
.super Ljava/io/InputStream;
.source "ByteBufInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final buffer:Lio/netty/buffer/ByteBuf;

.field private closed:Z

.field private final endIndex:I

.field private lineBuf:Ljava/lang/StringBuilder;

.field private final releaseOnClose:Z

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 64
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;IZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;IZ)V
    .locals 3
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I
    .param p3, "releaseOnClose"    # Z

    .line 105
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 106
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    if-gez p2, :cond_1

    .line 108
    if-eqz p3, :cond_0

    .line 109
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 114
    if-eqz p3, :cond_2

    .line 115
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    iput-boolean p3, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    .line 122
    iput-object p1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    .line 123
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iput v0, p0, Lio/netty/buffer/ByteBufInputStream;->startIndex:I

    .line 124
    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/ByteBufInputStream;->endIndex:I

    .line 125
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 126
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "releaseOnClose"    # Z

    .line 90
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;IZ)V

    .line 91
    return-void
.end method

.method private checkAvailable(I)V
    .locals 3
    .param p1, "fieldSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    if-ltz p1, :cond_1

    .line 321
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 325
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize is too long! Length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "fieldSize cannot be a negative number"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lio/netty/buffer/ByteBufInputStream;->endIndex:I

    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-boolean v1, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    if-nez v1, :cond_0

    .line 142
    iput-boolean v0, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    .line 143
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 146
    :cond_0
    return-void

    .line 141
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    if-nez v2, :cond_1

    .line 142
    iput-boolean v0, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    .line 143
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 145
    :cond_1
    throw v1
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 155
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 156
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    .line 166
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 167
    const/4 v1, -0x1

    return v1

    .line 169
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    .line 175
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 176
    const/4 v1, -0x1

    return v1

    .line 179
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 180
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 181
    return p3
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    .line 201
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    .line 207
    .local v0, "available":I
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v1

    return v1

    .line 208
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readBytes()I
    .locals 2

    .line 132
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/ByteBufInputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/buffer/ByteBufInputStream;->readFully([BII)V

    .line 231
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-direct {p0, p3}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    .line 236
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 237
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    .line 242
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    .line 250
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 251
    const/4 v1, 0x0

    return-object v1

    .line 254
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    .line 260
    .local v1, "c":I
    add-int/lit8 v0, v0, -0x1

    .line 261
    sparse-switch v1, :sswitch_data_0

    .line 273
    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :sswitch_0
    if-lez v0, :cond_3

    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 267
    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 263
    :sswitch_1
    goto :goto_1

    .line 276
    :cond_2
    :goto_0
    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    .end local v1    # "c":I
    if-gtz v0, :cond_1

    .line 280
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    .line 286
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    .line 292
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 187
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 192
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 194
    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    .local v0, "nBytes":I
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 314
    return v0
.end method

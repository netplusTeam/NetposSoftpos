.class public Lorg/jline/utils/PumpReader;
.super Ljava/io/Reader;
.source "PumpReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/PumpReader$InputStream;,
        Lorg/jline/utils/PumpReader$Writer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final EOF:I = -0x1


# instance fields
.field private closed:Z

.field private final readBuffer:Ljava/nio/CharBuffer;

.field private final writeBuffer:Ljava/nio/CharBuffer;

.field private final writer:Lorg/jline/utils/PumpReader$Writer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jline/utils/PumpReader;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "bufferSize"    # I

    .line 38
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    new-array v0, p1, [C

    .line 40
    .local v0, "buf":[C
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    .line 41
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    .line 42
    new-instance v2, Lorg/jline/utils/PumpReader$Writer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/jline/utils/PumpReader$Writer;-><init>(Lorg/jline/utils/PumpReader;Lorg/jline/utils/PumpReader$1;)V

    iput-object v2, p0, Lorg/jline/utils/PumpReader;->writer:Lorg/jline/utils/PumpReader$Writer;

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    return-void
.end method

.method private copyFromBuffer([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 161
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 162
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 163
    return p3
.end method

.method private encodeBytes(Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 206
    .local v0, "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, v2, p2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 208
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z

    .line 210
    :cond_0
    return-void
.end method

.method private static rewind(Ljava/nio/CharBuffer;Ljava/nio/CharBuffer;)Z
    .locals 2
    .param p0, "buffer"    # Ljava/nio/CharBuffer;
    .param p1, "other"    # Ljava/nio/CharBuffer;

    .line 104
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 111
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private rewindReadBuffer()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    iget-object v1, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0, v1}, Lorg/jline/utils/PumpReader;->rewind(Ljava/nio/CharBuffer;Ljava/nio/CharBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rewindWriteBuffer()V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    iget-object v1, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0, v1}, Lorg/jline/utils/PumpReader;->rewind(Ljava/nio/CharBuffer;Ljava/nio/CharBuffer;)Z

    .line 134
    return-void
.end method

.method private wait(Ljava/nio/CharBuffer;)Z
    .locals 2
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lorg/jline/utils/PumpReader;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 71
    iget-boolean v0, p0, Lorg/jline/utils/PumpReader;->closed:Z

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private waitForBufferSpace()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;,
            Lorg/jline/utils/ClosedException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, v0}, Lorg/jline/utils/PumpReader;->wait(Ljava/nio/CharBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/jline/utils/ClosedException;

    invoke-direct {v0}, Lorg/jline/utils/ClosedException;-><init>()V

    throw v0
.end method

.method private waitForInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, v0}, Lorg/jline/utils/PumpReader;->wait(Ljava/nio/CharBuffer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 143
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 146
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :cond_0
    monitor-exit p0

    return v0

    .line 141
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jline/utils/PumpReader;->closed:Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 281
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createInputStream(Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 53
    new-instance v0, Lorg/jline/utils/PumpReader$InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jline/utils/PumpReader$InputStream;-><init>(Lorg/jline/utils/PumpReader;Ljava/nio/charset/Charset;Lorg/jline/utils/PumpReader$1;)V

    return-object v0
.end method

.method declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :cond_0
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writer:Lorg/jline/utils/PumpReader$Writer;

    return-object v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForInput()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 155
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    .line 156
    .local v0, "b":I
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return v0

    .line 150
    .end local v0    # "b":I
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 2
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const/4 v0, -0x1

    return v0

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 196
    .local v0, "count":I
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/CharBuffer;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z

    .line 201
    :cond_2
    return v0
.end method

.method public declared-synchronized read([CII)I
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 168
    if-nez p3, :cond_0

    .line 169
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 172
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForInput()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 173
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 176
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jline/utils/PumpReader;->copyFromBuffer([CII)I

    move-result v0

    .line 177
    .local v0, "count":I
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ge v0, p3, :cond_2

    .line 178
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/jline/utils/PumpReader;->copyFromBuffer([CII)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindReadBuffer()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :cond_2
    monitor-exit p0

    return v0

    .line 167
    .end local v0    # "count":I
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized readBytes(Ljava/nio/charset/CharsetEncoder;[BII)I
    .locals 2
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForInput()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 217
    :cond_0
    :try_start_1
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v0}, Lorg/jline/utils/PumpReader;->encodeBytes(Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 219
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v1, p3

    monitor-exit p0

    return v1

    .line 212
    .end local v0    # "output":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    .end local p1    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local p2    # "b":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized readBytes(Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForInput()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 224
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/jline/utils/PumpReader;->encodeBytes(Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    .end local p1    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local p2    # "output":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ready()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->readBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 138
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized write(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForBufferSpace()V

    .line 232
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 233
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindWriteBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 230
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    .end local p1    # "c":C
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 255
    .local v0, "buf":[C
    :goto_0
    if-lez p3, :cond_0

    .line 256
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForBufferSpace()V

    .line 259
    iget-object v1, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 261
    .local v1, "count":I
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 262
    iget-object v2, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    add-int/2addr p2, v1

    .line 265
    sub-int/2addr p3, v1

    .line 268
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindWriteBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v1    # "count":I
    goto :goto_0

    .line 270
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "buf":[C
    .end local p1    # "str":Ljava/lang/String;
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 237
    :goto_0
    if-lez p3, :cond_0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->waitForBufferSpace()V

    .line 241
    iget-object v0, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 242
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/utils/PumpReader;->writeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 244
    add-int/2addr p2, v0

    .line 245
    sub-int/2addr p3, v0

    .line 248
    invoke-direct {p0}, Lorg/jline/utils/PumpReader;->rewindWriteBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0    # "count":I
    goto :goto_0

    .line 236
    .end local p0    # "this":Lorg/jline/utils/PumpReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 250
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_0
    monitor-exit p0

    return-void
.end method

.class public Lorg/jline/utils/NonBlockingPumpInputStream;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "NonBlockingPumpInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private closed:Z

.field private ioException:Ljava/io/IOException;

.field private final output:Ljava/io/OutputStream;

.field private final readBuffer:Ljava/nio/ByteBuffer;

.field private final writeBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jline/utils/NonBlockingPumpInputStream;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "bufferSize"    # I

    .line 34
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    .line 35
    new-array v0, p1, [B

    .line 36
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 38
    new-instance v2, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;-><init>(Lorg/jline/utils/NonBlockingPumpInputStream;Lorg/jline/utils/NonBlockingPumpInputStream$1;)V

    iput-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->output:Ljava/io/OutputStream;

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    return-void
.end method

.method private static rewind(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "other"    # Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private wait(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 49
    .local v2, "isInfinite":Z
    :goto_0
    const-wide/16 v4, 0x0

    .line 50
    .local v4, "end":J
    if-nez v2, :cond_1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v4, v6, p2

    .line 53
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->closed:Z

    if-nez v6, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v2, :cond_2

    cmp-long v6, p2, v0

    if-lez v6, :cond_3

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 58
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingPumpInputStream;->checkIoException()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    if-nez v2, :cond_1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p2, v4, v6

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingPumpInputStream;->checkIoException()V

    .line 61
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    iget-boolean v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 70
    const/4 v3, -0x1

    goto :goto_2

    .line 71
    :cond_5
    const/4 v3, -0x2

    .line 67
    :goto_2
    return v3
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 91
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 94
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    :cond_0
    monitor-exit p0

    return v0

    .line 89
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized checkIoException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->ioException:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
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

    .line 161
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->closed:Z

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public declared-synchronized read(JZ)I
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingPumpInputStream;->checkIoException()V

    .line 101
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1, p2}, Lorg/jline/utils/NonBlockingPumpInputStream;->wait(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 102
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 105
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    :cond_0
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/jline/utils/NonBlockingPumpInputStream;->rewind(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return v0

    .line 98
    .end local v0    # "res":I
    .end local p1    # "timeout":J
    .end local p3    # "isPeek":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readBuffered([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingPumpInputStream;->checkIoException()V

    .line 112
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/utils/NonBlockingPumpInputStream;->wait(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 113
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "res":I
    .local v1, "res":I
    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 119
    .end local v1    # "res":I
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    .restart local v0    # "res":I
    :cond_0
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/jline/utils/NonBlockingPumpInputStream;->rewind(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return v0

    .line 110
    .end local v0    # "res":I
    .end local p1    # "b":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIoException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "exception"    # Ljava/io/IOException;

    monitor-enter p0

    .line 124
    :try_start_0
    iput-object p1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->ioException:Ljava/io/IOException;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    .end local p1    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized write([BII)V
    .locals 3
    .param p1, "cbuf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 135
    :goto_0
    if-lez p3, :cond_1

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/utils/NonBlockingPumpInputStream;->wait(Ljava/nio/ByteBuffer;J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 144
    add-int/2addr p2, v0

    .line 145
    sub-int/2addr p3, v0

    .line 147
    iget-object v1, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->writeBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jline/utils/NonBlockingPumpInputStream;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/jline/utils/NonBlockingPumpInputStream;->rewind(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 148
    nop

    .end local v0    # "count":I
    goto :goto_0

    .line 139
    .end local p0    # "this":Lorg/jline/utils/NonBlockingPumpInputStream;
    :cond_0
    new-instance v0, Lorg/jline/utils/ClosedException;

    invoke-direct {v0}, Lorg/jline/utils/ClosedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local p1    # "cbuf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 149
    .restart local p1    # "cbuf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_1
    monitor-exit p0

    return-void
.end method

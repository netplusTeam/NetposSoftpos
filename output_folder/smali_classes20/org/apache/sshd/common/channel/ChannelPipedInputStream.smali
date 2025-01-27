.class public Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
.super Ljava/io/InputStream;
.source "ChannelPipedInputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelPipedSink;


# instance fields
.field private final b:[B

.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field private final dataAvailable:Ljava/util/concurrent/locks/Condition;

.field private final eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final localWindow:Lorg/apache/sshd/common/channel/Window;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private timeout:J

.field private final writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V
    .locals 3
    .param p1, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p2, "localWindow"    # Lorg/apache/sshd/common/channel/Window;

    .line 62
    const-string/jumbo v0, "window-timeout"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolver;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;-><init>(Lorg/apache/sshd/common/channel/Window;J)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/channel/Window;J)V
    .locals 2
    .param p1, "localWindow"    # Lorg/apache/sshd/common/channel/Window;
    .param p2, "windowTimeout"    # J

    .line 65
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 45
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->b:[B

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    const-string v0, "No local window provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/Window;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->localWindow:Lorg/apache/sshd/common/channel/Window;

    .line 67
    iput-wide p2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->timeout:J

    .line 68
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 88
    .local v0, "avail":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, -0x1

    .line 93
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    return v1

    .line 91
    :cond_0
    nop

    .line 93
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    return v0

    .line 93
    .end local v0    # "avail":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 175
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    throw v1
.end method

.method public eof()V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    throw v0
.end method

.method public getTimeout()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->timeout:J

    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->b:[B

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->b:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->read([BII)I

    move-result v1

    .line 101
    .local v1, "l":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 102
    monitor-exit v0

    return v2

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->b:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    monitor-exit v0

    return v2

    .line 105
    .end local v1    # "l":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-nez p3, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "startTime":J
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->isOpen()Z

    move-result v3

    .line 119
    .local v3, "openState":Z
    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .local v4, "writerClosedState":Z
    const-string v5, " cycles"

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pipe closed after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v6

    .line 123
    .restart local v0    # "startTime":J
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v6

    if-lez v6, :cond_7

    .line 124
    nop

    .line 146
    .end local v2    # "index":I
    .end local v3    # "openState":Z
    .end local v4    # "writerClosedState":Z
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    if-le p3, v2, :cond_4

    .line 147
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    move p3, v2

    .line 149
    :cond_4
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([BII)V

    .line 150
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->localWindow:Lorg/apache/sshd/common/channel/Window;

    invoke-virtual {v4}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    if-nez v2, :cond_6

    .line 151
    :cond_5
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_6
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    nop

    .line 156
    iget-object v2, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->localWindow:Lorg/apache/sshd/common/channel/Window;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 157
    return p3

    .line 126
    .restart local v2    # "index":I
    .restart local v3    # "openState":Z
    .restart local v4    # "writerClosedState":Z
    :cond_7
    :try_start_2
    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 127
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->eofSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    const/4 v5, -0x1

    .line 154
    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    return v5

    .line 132
    :cond_8
    :try_start_3
    iget-wide v6, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->timeout:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_a

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    sub-long/2addr v6, v10

    .line 134
    .local v6, "remaining":J
    cmp-long v8, v6, v8

    if-lez v8, :cond_9

    .line 137
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 138
    nop

    .end local v6    # "remaining":J
    goto :goto_2

    .line 135
    .restart local v6    # "remaining":J
    :cond_9
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->timeout:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") exceeded after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    .end local v2    # "index":I
    .end local v3    # "openState":Z
    .end local v4    # "writerClosedState":Z
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v8

    .line 139
    .end local v6    # "remaining":J
    .restart local v0    # "startTime":J
    .restart local v2    # "index":I
    .restart local v3    # "openState":Z
    .restart local v4    # "writerClosedState":Z
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_a
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :goto_2
    nop

    .line 117
    .end local v3    # "openState":Z
    .end local v4    # "writerClosedState":Z
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 141
    .restart local v3    # "openState":Z
    .restart local v4    # "writerClosedState":Z
    :catch_0
    move-exception v5

    .line 142
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v6, Ljava/io/InterruptedIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted at cycle #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " while waiting for data to become available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    .end local v0    # "startTime":J
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .end local v2    # "index":I
    .end local v3    # "openState":Z
    .end local v4    # "writerClosedState":Z
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "startTime":J
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    throw v2
.end method

.method public receive([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->writerClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 190
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->dataAvailable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 193
    nop

    .line 194
    return-void

    .line 187
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "bytes":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .restart local p1    # "bytes":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 193
    throw v0
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 76
    iput-wide p1, p0, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;->timeout:J

    .line 77
    return-void
.end method

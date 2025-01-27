.class public Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;
.super Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;
.source "SimpleDataChannel.java"


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;

    .line 33
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->ensureCloseForBlocking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 64
    nop

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    throw v0
.end method

.method public closeAsync()Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->ensureCloseAsyncForNonBlocking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 73
    nop

    .line 74
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    throw v0
.end method

.method public closeForcefully()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 80
    return-void
.end method

.method public flush()Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .locals 1

    .line 133
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DISABLED:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isTrustCapable()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SimpleDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

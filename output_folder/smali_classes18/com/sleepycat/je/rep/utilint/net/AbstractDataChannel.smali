.class public abstract Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;
.super Ljava/lang/Object;
.source "AbstractDataChannel.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/DataChannel;


# instance fields
.field protected configuredBlocking:Z

.field protected final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 1
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 57
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->configuredBlocking:Z

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized configureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 93
    iput-boolean p1, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->configuredBlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;
    .end local p1    # "block":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected ensureCloseAsyncForNonBlocking()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling closeAsync on blocking channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ensureCloseForBlocking()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling close on non-blocking channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public declared-synchronized isBlocking()Z
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->configuredBlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    .end local p0    # "this":Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/AbstractDataChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

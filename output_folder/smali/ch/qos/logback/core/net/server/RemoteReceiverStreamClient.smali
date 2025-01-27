.class Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "RemoteReceiverStreamClient.java"

# interfaces
.implements Lch/qos/logback/core/net/server/RemoteReceiverClient;


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final outputStream:Ljava/io/OutputStream;

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 62
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->socket:Ljava/net/Socket;

    .line 65
    iput-object p2, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->outputStream:Ljava/io/OutputStream;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 47
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->socket:Ljava/net/Socket;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->outputStream:Ljava/io/OutputStream;

    .line 51
    return-void
.end method

.method private createObjectOutputStream()Ljava/io/ObjectOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 89
    iget-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 92
    return-void
.end method

.method public offer(Ljava/io/Serializable;)Z
    .locals 2
    .param p1, "event"    # Ljava/io/Serializable;

    .line 79
    iget-object v0, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->queue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "client has no event queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 5

    .line 98
    const-string v0, "connection closed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addInfo(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 103
    .local v2, "counter":I
    :try_start_0
    invoke-direct {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->createObjectOutputStream()Ljava/io/ObjectOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 104
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 106
    :try_start_1
    iget-object v3, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    .line 107
    .local v3, "event":Ljava/io/Serializable;
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 109
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x46

    if-lt v2, v4, :cond_0

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    .end local v3    # "event":Ljava/io/Serializable;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 126
    .end local v2    # "counter":I
    :cond_1
    if-eqz v1, :cond_2

    .line 127
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->close()V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    iget-object v3, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addInfo(Ljava/lang/String;)V

    .line 131
    goto :goto_3

    .line 126
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_3

    .line 127
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->close()V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 121
    :catch_2
    move-exception v2

    .line 122
    .local v2, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 127
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    :cond_4
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->close()V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 119
    :catch_3
    move-exception v2

    .line 120
    .local v2, "ex":Ljava/net/SocketException;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addInfo(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    .end local v2    # "ex":Ljava/net/SocketException;
    if-eqz v1, :cond_5

    .line 127
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    :cond_5
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->close()V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 132
    :goto_3
    return-void

    .line 126
    :goto_4
    if-eqz v1, :cond_6

    .line 127
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    :cond_6
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->close()V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->addInfo(Ljava/lang/String;)V

    throw v2
.end method

.method public setQueue(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/io/Serializable;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/server/RemoteReceiverStreamClient;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 73
    return-void
.end method

.class public Lch/qos/logback/classic/net/SocketReceiver;
.super Lch/qos/logback/classic/net/ReceiverBase;
.source "SocketReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;


# static fields
.field private static final DEFAULT_ACCEPT_CONNECTION_DELAY:I = 0x1388


# instance fields
.field private acceptConnectionTimeout:I

.field private address:Ljava/net/InetAddress;

.field private connectorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private receiverId:Ljava/lang/String;

.field private reconnectionDelay:I

.field private remoteHost:Ljava/lang/String;

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lch/qos/logback/classic/net/ReceiverBase;-><init>()V

    .line 52
    const/16 v0, 0x1388

    iput v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    return-void
.end method

.method private activateConnector(Lch/qos/logback/core/net/SocketConnector;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "connector"    # Lch/qos/logback/core/net/SocketConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/SocketConnector;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private createConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "initialDelay"    # I
    .param p4, "retryDelay"    # I

    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/net/SocketReceiver;->newConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;

    move-result-object v0

    .line 133
    .local v0, "connector":Lch/qos/logback/core/net/SocketConnector;
    invoke-interface {v0, p0}, Lch/qos/logback/core/net/SocketConnector;->setExceptionHandler(Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;)V

    .line 134
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SocketReceiver;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/qos/logback/core/net/SocketConnector;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 135
    return-object v0
.end method

.method private dispatchEvents(Lch/qos/logback/classic/LoggerContext;)V
    .locals 6
    .param p1, "lc"    # Lch/qos/logback/classic/LoggerContext;

    .line 157
    const-string v0, "connection closed"

    const/4 v1, 0x0

    .line 159
    .local v1, "ois":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    iget v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 160
    new-instance v3, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lch/qos/logback/classic/net/server/HardenedLoggingEventInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 161
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connection established"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    .line 164
    :goto_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 165
    .local v3, "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    .line 166
    .local v4, "remoteLogger":Lch/qos/logback/classic/Logger;
    invoke-interface {v3}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/qos/logback/classic/Logger;->isEnabledFor(Lch/qos/logback/classic/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    invoke-virtual {v4, v3}, Lch/qos/logback/classic/Logger;->callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v3    # "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    .end local v4    # "remoteLogger":Lch/qos/logback/classic/Logger;
    :cond_0
    goto :goto_0

    .line 177
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "unknown event class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 179
    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "connection failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v3    # "ex":Ljava/io/IOException;
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 179
    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 170
    :catch_2
    move-exception v3

    .line 171
    .local v3, "ex":Ljava/io/EOFException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "end-of-stream detected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v3    # "ex":Ljava/io/EOFException;
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 179
    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    .line 181
    nop

    .line 182
    return-void

    .line 177
    :goto_2
    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 179
    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    throw v3
.end method

.method private waitForConnectorToReturnASocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 149
    .local v1, "s":Ljava/net/Socket;
    iput-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object v1

    .line 151
    .end local v1    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    return-object v0
.end method


# virtual methods
.method public connectionFailed(Lch/qos/logback/core/net/SocketConnector;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "connector"    # Lch/qos/logback/core/net/SocketConnector;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 188
    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "connector interrupted"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_0
    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connection refused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void
.end method

.method protected getRunnableTask()Ljava/lang/Runnable;
    .locals 0

    .line 105
    return-object p0
.end method

.method protected getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 202
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected newConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "initialDelay"    # I
    .param p4, "retryDelay"    # I

    .line 198
    new-instance v7, Lch/qos/logback/core/net/DefaultSocketConnector;

    int-to-long v3, p3

    int-to-long v5, p4

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/core/net/DefaultSocketConnector;-><init>(Ljava/net/InetAddress;IJJ)V

    return-object v7
.end method

.method protected onStop()V
    .locals 1

    .line 98
    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 101
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 114
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->address:Ljava/net/InetAddress;

    iget v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    const/4 v3, 0x0

    iget v4, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    invoke-direct {p0, v1, v2, v3, v4}, Lch/qos/logback/classic/net/SocketReceiver;->createConnector(Ljava/net/InetAddress;III)Lch/qos/logback/core/net/SocketConnector;

    move-result-object v1

    .line 116
    .local v1, "connector":Lch/qos/logback/core/net/SocketConnector;
    invoke-direct {p0, v1}, Lch/qos/logback/classic/net/SocketReceiver;->activateConnector(Lch/qos/logback/core/net/SocketConnector;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->connectorTask:Ljava/util/concurrent/Future;

    .line 117
    if-nez v2, :cond_0

    .line 118
    goto :goto_1

    .line 120
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/classic/net/SocketReceiver;->waitForConnectorToReturnASocket()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    .line 121
    iget-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->socket:Ljava/net/Socket;

    if-nez v2, :cond_1

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-direct {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->dispatchEvents(Lch/qos/logback/classic/LoggerContext;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "connector":Lch/qos/logback/core/net/SocketConnector;
    goto :goto_0

    .line 127
    .end local v0    # "lc":Lch/qos/logback/classic/LoggerContext;
    :cond_2
    :goto_1
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 128
    :goto_2
    const-string/jumbo v0, "shutting down"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/SocketReceiver;->addInfo(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setAcceptConnectionTimeout(I)V
    .locals 0
    .param p1, "acceptConnectionTimeout"    # I

    .line 218
    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->acceptConnectionTimeout:I

    .line 219
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 210
    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    .line 211
    return-void
.end method

.method public setReconnectionDelay(I)V
    .locals 0
    .param p1, "reconnectionDelay"    # I

    .line 214
    iput p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    .line 215
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteHost"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    .line 207
    return-void
.end method

.method protected shouldStart()Z
    .locals 4

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "errorCount":I
    iget v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    if-nez v1, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    const-string v1, "No port was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_port"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/net/SocketReceiver;->addError(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    const-string v1, "No host name or address was configured for receiver. For more information, please visit http://logback.qos.ch/codes.html#receiver_no_host"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/net/SocketReceiver;->addError(Ljava/lang/String;)V

    .line 74
    :cond_1
    iget v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    if-nez v1, :cond_2

    .line 75
    const/16 v1, 0x7530

    iput v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->reconnectionDelay:I

    .line 78
    :cond_2
    if-nez v0, :cond_3

    .line 80
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/net/SocketReceiver;->addError(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 87
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->remoteHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/qos/logback/classic/net/SocketReceiver;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/net/SocketReceiver;->receiverId:Ljava/lang/String;

    .line 91
    :cond_4
    if-nez v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

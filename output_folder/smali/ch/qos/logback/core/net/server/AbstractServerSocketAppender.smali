.class public abstract Lch/qos/logback/core/net/server/AbstractServerSocketAppender;
.super Lch/qos/logback/core/AppenderBase;
.source "AbstractServerSocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKLOG:I = 0x32

.field public static final DEFAULT_CLIENT_QUEUE_SIZE:I = 0x64


# instance fields
.field private address:Ljava/lang/String;

.field private backlog:I

.field private clientQueueSize:I

.field private port:I

.field private runner:Lch/qos/logback/core/net/server/ServerRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/net/server/ServerRunner<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 48
    const/16 v0, 0x11d0

    iput v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->port:I

    .line 49
    const/16 v0, 0x32

    iput v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->backlog:I

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->clientQueueSize:I

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->postProcessEvent(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getPST()Lch/qos/logback/core/spi/PreSerializationTransformer;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/qos/logback/core/spi/PreSerializationTransformer;->transform(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v0

    .line 99
    .local v0, "serEvent":Ljava/io/Serializable;
    iget-object v1, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    new-instance v2, Lch/qos/logback/core/net/server/AbstractServerSocketAppender$1;

    invoke-direct {v2, p0, v0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender$1;-><init>(Lch/qos/logback/core/net/server/AbstractServerSocketAppender;Ljava/io/Serializable;)V

    invoke-interface {v1, v2}, Lch/qos/logback/core/net/server/ServerRunner;->accept(Lch/qos/logback/core/net/server/ClientVisitor;)V

    .line 104
    return-void
.end method

.method protected createServerListener(Ljava/net/ServerSocket;)Lch/qos/logback/core/net/server/ServerListener;
    .locals 1
    .param p1, "socket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ServerSocket;",
            ")",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    new-instance v0, Lch/qos/logback/core/net/server/RemoteReceiverServerListener;

    invoke-direct {v0, p1}, Lch/qos/logback/core/net/server/RemoteReceiverServerListener;-><init>(Ljava/net/ServerSocket;)V

    return-object v0
.end method

.method protected createServerRunner(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)Lch/qos/logback/core/net/server/ServerRunner;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lch/qos/logback/core/net/server/ServerRunner<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    .local p1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/core/net/server/RemoteReceiverClient;>;"
    new-instance v0, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;

    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getClientQueueSize()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;-><init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;I)V

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 188
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBacklog()I
    .locals 1

    .line 168
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->backlog:I

    return v0
.end method

.method public getClientQueueSize()I
    .locals 1

    .line 204
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->clientQueueSize:I

    return v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 138
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPST()Lch/qos/logback/core/spi/PreSerializationTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/spi/PreSerializationTransformer<",
            "TE;>;"
        }
    .end annotation
.end method

.method public getPort()I
    .locals 1

    .line 148
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->port:I

    return v0
.end method

.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected abstract postProcessEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 196
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->address:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setBacklog(I)V
    .locals 0
    .param p1, "backlog"    # I

    .line 180
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->backlog:I

    .line 181
    return-void
.end method

.method public setClientQueueSize(I)V
    .locals 0
    .param p1, "clientQueueSize"    # I

    .line 212
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->clientQueueSize:I

    .line 213
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 156
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->port:I

    .line 157
    return-void
.end method

.method public start()V
    .locals 4

    .line 58
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getServerSocketFactory()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getBacklog()I

    move-result v2

    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 62
    .local v0, "socket":Ljava/net/ServerSocket;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->createServerListener(Ljava/net/ServerSocket;)Lch/qos/logback/core/net/server/ServerListener;

    move-result-object v1

    .line 64
    .local v1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/core/net/server/RemoteReceiverClient;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-interface {v2}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->createServerRunner(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)Lch/qos/logback/core/net/server/ServerRunner;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    .line 65
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lch/qos/logback/core/net/server/ServerRunner;->setContext(Lch/qos/logback/core/Context;)V

    .line 66
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-interface {v2}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "socket":Ljava/net/ServerSocket;
    .end local v1    # "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/core/net/server/RemoteReceiverClient;>;"
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "server startup error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 83
    .local p0, "this":Lch/qos/logback/core/net/server/AbstractServerSocketAppender;, "Lch/qos/logback/core/net/server/AbstractServerSocketAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    invoke-interface {v0}, Lch/qos/logback/core/net/server/ServerRunner;->stop()V

    .line 87
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "server shutdown error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/server/AbstractServerSocketAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

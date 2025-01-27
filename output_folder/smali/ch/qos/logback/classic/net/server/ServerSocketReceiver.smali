.class public Lch/qos/logback/classic/net/server/ServerSocketReceiver;
.super Lch/qos/logback/classic/net/ReceiverBase;
.source "ServerSocketReceiver.java"


# static fields
.field public static final DEFAULT_BACKLOG:I = 0x32


# instance fields
.field private address:Ljava/lang/String;

.field private backlog:I

.field private port:I

.field private runner:Lch/qos/logback/core/net/server/ServerRunner;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lch/qos/logback/classic/net/ReceiverBase;-><init>()V

    .line 42
    const/16 v0, 0x11d0

    iput v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->port:I

    .line 43
    const/16 v0, 0x32

    iput v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->backlog:I

    return-void
.end method


# virtual methods
.method protected createServerListener(Ljava/net/ServerSocket;)Lch/qos/logback/core/net/server/ServerListener;
    .locals 1
    .param p1, "socket"    # Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ServerSocket;",
            ")",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/classic/net/server/RemoteAppenderClient;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lch/qos/logback/classic/net/server/RemoteAppenderServerListener;

    invoke-direct {v0, p1}, Lch/qos/logback/classic/net/server/RemoteAppenderServerListener;-><init>(Ljava/net/ServerSocket;)V

    return-object v0
.end method

.method protected createServerRunner(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)Lch/qos/logback/core/net/server/ServerRunner;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/classic/net/server/RemoteAppenderClient;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lch/qos/logback/core/net/server/ServerRunner;"
        }
    .end annotation

    .line 74
    .local p1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/classic/net/server/RemoteAppenderClient;>;"
    new-instance v0, Lch/qos/logback/classic/net/server/RemoteAppenderServerRunner;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/classic/net/server/RemoteAppenderServerRunner;-><init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBacklog()I
    .locals 1

    .line 142
    iget v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->backlog:I

    return v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 122
    iget v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->port:I

    return v0
.end method

.method protected getRunnableTask()Ljava/lang/Runnable;
    .locals 1

    .line 79
    iget-object v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    return-object v0
.end method

.method protected getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected onStop()V
    .locals 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 89
    :cond_0
    invoke-interface {v0}, Lch/qos/logback/core/net/server/ServerRunner;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
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

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->address:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setBacklog(I)V
    .locals 0
    .param p1, "backlog"    # I

    .line 154
    iput p1, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->backlog:I

    .line 155
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 130
    iput p1, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->port:I

    .line 131
    return-void
.end method

.method protected shouldStart()Z
    .locals 4

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getServerSocketFactory()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getBacklog()I

    move-result v2

    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    .line 57
    .local v0, "serverSocket":Ljava/net/ServerSocket;
    invoke-virtual {p0, v0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->createServerListener(Ljava/net/ServerSocket;)Lch/qos/logback/core/net/server/ServerListener;

    move-result-object v1

    .line 59
    .local v1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/classic/net/server/RemoteAppenderClient;>;"
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    invoke-interface {v2}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->createServerRunner(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)Lch/qos/logback/core/net/server/ServerRunner;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->runner:Lch/qos/logback/core/net/server/ServerRunner;

    .line 60
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->getContext()Lch/qos/logback/core/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lch/qos/logback/core/net/server/ServerRunner;->setContext(Lch/qos/logback/core/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v2, 0x1

    return v2

    .line 62
    .end local v0    # "serverSocket":Ljava/net/ServerSocket;
    .end local v1    # "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/classic/net/server/RemoteAppenderClient;>;"
    :catch_0
    move-exception v0

    .line 63
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

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iget-object v1, p0, Lch/qos/logback/classic/net/server/ServerSocketReceiver;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/ServerSocket;)V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

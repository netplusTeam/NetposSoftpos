.class public Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;
.super Lorg/apache/sshd/common/io/AbstractIoServiceFactory;
.source "Nio2ServiceFactory.java"


# instance fields
.field private final group:Ljava/nio/channels/AsynchronousChannelGroup;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 4
    .param p1, "factoryManager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "service"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-nio2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->getNioWorkers(Lorg/apache/sshd/common/FactoryManager;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newFixedThreadPoolIf(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;Ljava/lang/String;I)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/AsynchronousChannelGroup;->withThreadPool(Ljava/util/concurrent/ExecutorService;)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to start async. channel group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Start async. channel group failure details"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createAcceptor(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoAcceptor;
    .locals 3
    .param p1, "handler"    # Lorg/apache/sshd/common/io/IoHandler;

    .line 62
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->autowireCreatedService(Lorg/apache/sshd/common/io/IoService;)Lorg/apache/sshd/common/io/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoAcceptor;

    return-object v0
.end method

.method public createConnector(Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/IoConnector;
    .locals 3
    .param p1, "handler"    # Lorg/apache/sshd/common/io/IoHandler;

    .line 57
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;-><init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousChannelGroup;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->autowireCreatedService(Lorg/apache/sshd/common/io/IoService;)Lorg/apache/sshd/common/io/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoConnector;

    return-object v0
.end method

.method protected doCloseImmediately()V
    .locals 4

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousChannelGroup;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Shutdown group"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousChannelGroup;->shutdownNow()V

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->group:Ljava/nio/channels/AsynchronousChannelGroup;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/AsynchronousChannelGroup;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Group successfully shut down"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Not all group tasks terminated"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->doCloseImmediately()V

    .line 83
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2ServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception caught while closing channel group"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 84
    :goto_1
    return-void

    .line 82
    :goto_2
    invoke-super {p0}, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->doCloseImmediately()V

    .line 83
    throw v0
.end method

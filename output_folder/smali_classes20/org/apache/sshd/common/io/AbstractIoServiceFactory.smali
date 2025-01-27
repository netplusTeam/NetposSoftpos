.class public abstract Lorg/apache/sshd/common/io/AbstractIoServiceFactory;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "AbstractIoServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoServiceFactory;
.implements Lorg/apache/sshd/common/FactoryManagerHolder;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;


# instance fields
.field private eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

.field private final executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field private final manager:Lorg/apache/sshd/common/FactoryManager;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 1
    .param p1, "factoryManager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 42
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 43
    const-string v0, "No factory manager provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    iput-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 44
    const-string v0, "No executor service provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    iput-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 45
    invoke-interface {p1}, Lorg/apache/sshd/common/FactoryManager;->getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 46
    return-void
.end method

.method public static getNioWorkers(Lorg/apache/sshd/common/FactoryManager;)I
    .locals 2
    .param p0, "manager"    # Lorg/apache/sshd/common/FactoryManager;

    .line 98
    sget v0, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO_WORKERS:I

    const-string v1, "nio-workers"

    invoke-interface {p0, v1, v0}, Lorg/apache/sshd/common/FactoryManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "nb":I
    if-lez v0, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    sget v1, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO_WORKERS:I

    return v1
.end method


# virtual methods
.method protected autowireCreatedService(Lorg/apache/sshd/common/io/IoService;)Lorg/apache/sshd/common/io/IoService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/apache/sshd/common/io/IoService;",
            ">(TS;)TS;"
        }
    .end annotation

    .line 89
    .local p1, "service":Lorg/apache/sshd/common/io/IoService;, "TS;"
    if-nez p1, :cond_0

    .line 90
    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoService;->setIoServiceEventListener(Lorg/apache/sshd/common/io/IoServiceEventListener;)V

    .line 94
    return-object p1
.end method

.method protected doCloseImmediately()V
    .locals 4

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    .line 72
    .local v0, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Shutdown executor"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    .line 75
    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Shutdown complete"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Not all tasks terminated"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 85
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception caught while closing executor"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 86
    :goto_1
    return-void

    .line 84
    :goto_2
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 85
    throw v0
.end method

.method public final getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method public final getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->manager:Lorg/apache/sshd/common/FactoryManager;

    return-object v0
.end method

.method public getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    return-object v0
.end method

.method public setIoServiceEventListener(Lorg/apache/sshd/common/io/IoServiceEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 65
    iput-object p1, p0, Lorg/apache/sshd/common/io/AbstractIoServiceFactory;->eventListener:Lorg/apache/sshd/common/io/IoServiceEventListener;

    .line 66
    return-void
.end method

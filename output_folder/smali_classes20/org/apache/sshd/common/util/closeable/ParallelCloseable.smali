.class public Lorg/apache/sshd/common/util/closeable/ParallelCloseable;
.super Lorg/apache/sshd/common/util/closeable/SimpleCloseable;
.source "ParallelCloseable.java"


# instance fields
.field private final closeables:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/Closeable;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "closeables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/Closeable;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->closeables:Ljava/lang/Iterable;

    .line 40
    return-void
.end method


# virtual methods
.method protected doClose(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    .line 46
    .local v1, "traceEnabled":Z
    new-instance v2, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/apache/sshd/common/util/closeable/ParallelCloseable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/util/closeable/ParallelCloseable;Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V

    .line 56
    .local v2, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v3, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->closeables:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/Closeable;

    .line 57
    .local v4, "c":Lorg/apache/sshd/common/Closeable;
    if-nez v4, :cond_0

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 62
    .local v5, "pendingCount":I
    if-eqz v1, :cond_1

    .line 63
    iget-object v6, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doClose("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") pending closeables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-interface {v4, p1}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 66
    .end local v4    # "c":Lorg/apache/sshd/common/Closeable;
    .end local v5    # "pendingCount":I
    goto :goto_0

    .line 71
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/sshd/common/future/SshFutureListener;->operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V

    .line 72
    return-void
.end method

.method synthetic lambda$doClose$0$org-apache-sshd-common-util-closeable-ParallelCloseable(Ljava/util/concurrent/atomic/AtomicInteger;ZZLorg/apache/sshd/common/future/CloseFuture;)V
    .locals 4
    .param p1, "count"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "traceEnabled"    # Z
    .param p3, "immediately"    # Z
    .param p4, "f"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 48
    .local v0, "pendingCount":I
    if-eqz p2, :cond_0

    .line 49
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") completed pending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 52
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 54
    :cond_1
    return-void
.end method

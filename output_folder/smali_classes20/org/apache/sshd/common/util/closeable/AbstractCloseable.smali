.class public abstract Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.super Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;
.source "AbstractCloseable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;
    }
.end annotation


# instance fields
.field protected final closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

.field protected final futureLock:Ljava/lang/Object;

.field protected final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 55
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "discriminator"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->futureLock:Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance v1, Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-direct {v1, p1, v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    .line 61
    return-void
.end method


# virtual methods
.method public addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 70
    return-void
.end method

.method protected builder()Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2

    .line 164
    new-instance v0, Lorg/apache/sshd/common/util/closeable/Builder;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->futureLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 5
    .param p1, "immediately"    # Z

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 80
    .local v0, "debugEnabled":Z
    if-eqz p1, :cond_3

    .line 81
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    sget-object v3, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Immediate:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Graceful:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    sget-object v3, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Immediate:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    .line 82
    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    if-eqz v0, :cond_8

    .line 93
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "close({})[Immediately] state already {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 83
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    const-string v2, "close({}) Closing immediately"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->preClose()V

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 88
    if-eqz v0, :cond_8

    .line 89
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    const-string v2, "close({})[Immediately] closed"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 97
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    sget-object v3, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Graceful:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-static {v1, v2, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    if-eqz v0, :cond_4

    .line 99
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    const-string v2, "close({}) Closing gracefully"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_4
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->preClose()V

    .line 102
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v1

    .line 103
    .local v1, "grace":Lorg/apache/sshd/common/future/SshFuture;, "Lorg/apache/sshd/common/future/SshFuture<Lorg/apache/sshd/common/future/CloseFuture;>;"
    if-eqz v1, :cond_5

    .line 104
    new-instance v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/util/closeable/AbstractCloseable;Z)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/future/SshFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    goto :goto_1

    .line 113
    :cond_5
    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Graceful:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    sget-object v4, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Immediate:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-static {v2, v3, v4}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 115
    if-eqz v0, :cond_6

    .line 116
    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    const-string v3, "close({})[Graceful] closed"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .end local v1    # "grace":Lorg/apache/sshd/common/future/SshFuture;, "Lorg/apache/sshd/common/future/SshFuture<Lorg/apache/sshd/common/future/CloseFuture;>;"
    :cond_6
    :goto_1
    goto :goto_2

    .line 121
    :cond_7
    if-eqz v0, :cond_8

    .line 122
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "close({})[Graceful] state already {}"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_8
    :goto_2
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    return-object v1
.end method

.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 1

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doCloseImmediately()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 160
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Closed:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public getFutureLock()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->futureLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Closed:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isClosing()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Opened:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$close$0$org-apache-sshd-common-util-closeable-AbstractCloseable(ZLorg/apache/sshd/common/future/CloseFuture;)V
    .locals 3
    .param p1, "debugEnabled"    # Z
    .param p2, "future"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Graceful:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    sget-object v2, Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;->Immediate:Lorg/apache/sshd/common/util/closeable/AbstractCloseable$State;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->log:Lorg/slf4j/Logger;

    const-string v1, "close({}][Graceful] - operationComplete() closed"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected preClose()V
    .locals 0

    .line 145
    return-void
.end method

.method public removeCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "Lorg/apache/sshd/common/future/CloseFuture;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/future/CloseFuture;->removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 75
    return-void
.end method

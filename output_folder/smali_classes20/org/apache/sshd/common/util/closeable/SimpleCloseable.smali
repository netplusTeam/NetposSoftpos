.class public Lorg/apache/sshd/common/util/closeable/SimpleCloseable;
.super Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;
.source "SimpleCloseable.java"


# instance fields
.field protected final closing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final future:Lorg/apache/sshd/common/future/DefaultCloseFuture;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;-><init>()V

    .line 36
    new-instance v0, Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-direct {v0, p1, p2}, Lorg/apache/sshd/common/future/DefaultCloseFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
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

    .line 52
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 53
    return-void
.end method

.method public close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    .locals 3
    .param p1, "immediately"    # Z

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->doClose(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    return-object v0
.end method

.method protected doClose(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 70
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->closing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
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

    .line 57
    .local p1, "listener":Lorg/apache/sshd/common/future/SshFutureListener;, "Lorg/apache/sshd/common/future/SshFutureListener<Lorg/apache/sshd/common/future/CloseFuture;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 58
    return-void
.end method

.class Lorg/apache/sshd/server/forward/TcpipServerChannel$2;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "TcpipServerChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/server/forward/TcpipServerChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

.field final synthetic this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;


# direct methods
.method constructor <init>(Lorg/apache/sshd/server/forward/TcpipServerChannel;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/sshd/server/forward/TcpipServerChannel;

    .line 323
    iput-object p1, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpIpServerChannel-ConnectorCleanup["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newCachedThreadPool(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 324
    return-void
.end method


# virtual methods
.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2

    .line 330
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    new-instance v1, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel$2;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doCloseImmediately()V
    .locals 2

    .line 337
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    new-instance v1, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel$2;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 338
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 339
    return-void
.end method

.method synthetic lambda$doCloseGracefully$0$org-apache-sshd-server-forward-TcpipServerChannel$2()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$300(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/apache/sshd/common/io/IoConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/io/IoConnector;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$doCloseImmediately$2$org-apache-sshd-server-forward-TcpipServerChannel$2()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->this$0:Lorg/apache/sshd/server/forward/TcpipServerChannel;

    invoke-static {v0}, Lorg/apache/sshd/server/forward/TcpipServerChannel;->access$300(Lorg/apache/sshd/server/forward/TcpipServerChannel;)Lorg/apache/sshd/common/io/IoConnector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/io/IoConnector;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/sshd/server/forward/TcpipServerChannel$2$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/server/forward/TcpipServerChannel$2;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/future/CloseFuture;

    return-object v0
.end method

.method synthetic lambda$null$1$org-apache-sshd-server-forward-TcpipServerChannel$2(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 2
    .param p1, "f"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 337
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpipServerChannel$2;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    return-void
.end method

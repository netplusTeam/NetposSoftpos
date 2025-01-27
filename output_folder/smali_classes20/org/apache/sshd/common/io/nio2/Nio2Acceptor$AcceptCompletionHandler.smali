.class public Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;
.super Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.source "Nio2Acceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AcceptCompletionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
        "Ljava/nio/channels/AsynchronousSocketChannel;",
        "Ljava/net/SocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field protected final socket:Ljava/nio/channels/AsynchronousServerSocketChannel;

.field final synthetic this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/nio/channels/AsynchronousServerSocketChannel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 270
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-direct {p0}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;-><init>()V

    .line 271
    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->socket:Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 272
    return-void
.end method


# virtual methods
.method protected createSession(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/nio2/Nio2Session;
    .locals 8
    .param p1, "acceptor"    # Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "channel"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p4, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$900(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1000(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "createNio2Session({}) address={}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Session;

    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v4

    move-object v2, v0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/sshd/common/io/nio2/Nio2Session;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Service;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method protected okToReaccept(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Z
    .locals 8
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "address"    # Ljava/net/SocketAddress;

    .line 381
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iget-object v0, v0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/AsynchronousServerSocketChannel;

    .line 382
    .local v0, "channel":Ljava/nio/channels/AsynchronousServerSocketChannel;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1200(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 383
    .local v1, "debugEnabled":Z
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 384
    if-eqz v1, :cond_0

    .line 385
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v6}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1300(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 385
    const-string v2, "Caught {} for untracked channel of {}: {}"

    invoke-interface {v6, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_0
    return v5

    .line 391
    :cond_1
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iget-object v6, v6, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->disposing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    if-eqz v1, :cond_2

    .line 393
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v6}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1400(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 393
    const-string v2, "Caught {} for tracked channel of {} while disposing: {}"

    invoke-interface {v6, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_2
    return v5

    .line 399
    :cond_3
    if-eqz v1, :cond_4

    .line 400
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v6}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1500(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 400
    const-string v2, "Caught {} while accepting incoming connection from {}: {}"

    invoke-interface {v6, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_4
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1600(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1700(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming connection from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    :cond_5
    return v4
.end method

.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 266
    check-cast p1, Ljava/nio/channels/AsynchronousSocketChannel;

    check-cast p2, Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->onCompleted(Ljava/nio/channels/AsynchronousSocketChannel;Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected onCompleted(Ljava/nio/channels/AsynchronousSocketChannel;Ljava/net/SocketAddress;)V
    .locals 11
    .param p1, "result"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p2, "address"    # Ljava/net/SocketAddress;

    .line 277
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iget-object v0, v0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->channels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$300(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$400(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "onCompleted({}) unbound address"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    .line 285
    .local v0, "session":Lorg/apache/sshd/common/io/nio2/Nio2Session;
    const/4 v1, 0x0

    .line 287
    .local v1, "sessionId":Ljava/lang/Long;
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;

    move-result-object v2

    .line 289
    .local v2, "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    if-eqz v2, :cond_2

    .line 290
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/AsynchronousSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 291
    .local v3, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/channels/AsynchronousSocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    .line 292
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-interface {v2, v5, v3, v4, p2}, Lorg/apache/sshd/common/io/IoServiceEventListener;->connectionAccepted(Lorg/apache/sshd/common/io/IoAcceptor;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    .line 296
    .end local v3    # "localAddress":Ljava/net/SocketAddress;
    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    :cond_2
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v3}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->getIoHandler()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v3

    .line 297
    .local v3, "handler":Lorg/apache/sshd/common/io/IoHandler;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v4, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->setSocketOptions(Ljava/nio/channels/NetworkChannel;)Ljava/nio/channels/NetworkChannel;

    .line 298
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    .line 299
    invoke-virtual {p0, v4, p2, p1, v3}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->createSession(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;Ljava/net/SocketAddress;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/io/IoHandler;)Lorg/apache/sshd/common/io/nio2/Nio2Session;

    move-result-object v4

    const-string v5, "No NIO2 session created"

    .line 298
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/io/nio2/Nio2Session;

    move-object v0, v4

    .line 301
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v1, v4

    .line 302
    invoke-interface {v3, v0}, Lorg/apache/sshd/common/io/IoHandler;->sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V

    .line 303
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    iget-object v4, v4, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->sessions:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->isClosing()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 306
    :try_start_1
    invoke-interface {v3, v0}, Lorg/apache/sshd/common/io/IoHandler;->sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v4, v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unmapSession(Ljava/lang/Long;)V

    .line 309
    goto :goto_0

    .line 308
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v5, v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unmapSession(Ljava/lang/Long;)V

    .line 309
    nop

    .end local v0    # "session":Lorg/apache/sshd/common/io/nio2/Nio2Session;
    .end local v1    # "sessionId":Ljava/lang/Long;
    .end local v2    # "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    .end local p1    # "result":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local p2    # "address":Ljava/net/SocketAddress;
    throw v4

    .line 311
    .restart local v0    # "session":Lorg/apache/sshd/common/io/nio2/Nio2Session;
    .restart local v1    # "sessionId":Ljava/lang/Long;
    .restart local v2    # "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    .restart local p1    # "result":Ljava/nio/channels/AsynchronousSocketChannel;
    .restart local p2    # "address":Ljava/net/SocketAddress;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 314
    :goto_0
    const/4 v3, 0x1

    .line 342
    .local v3, "keepAccepting":Z
    goto/16 :goto_3

    .line 315
    .end local v3    # "keepAccepting":Z
    :catchall_1
    move-exception v3

    move-object v9, v3

    .line 316
    .local v9, "exc":Ljava/lang/Throwable;
    const-string v10, "onCompleted("

    if-eqz v2, :cond_4

    .line 318
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/AsynchronousSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v5

    .line 319
    .local v5, "localAddress":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/channels/AsynchronousSocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    .line 320
    .local v6, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    move-object v3, v2

    move-object v7, p2

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Lorg/apache/sshd/common/io/IoServiceEventListener;->abortAcceptedConnection(Lorg/apache/sshd/common/io/IoAcceptor;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 325
    .end local v5    # "localAddress":Ljava/net/SocketAddress;
    .end local v6    # "remoteAddress":Ljava/net/SocketAddress;
    goto :goto_1

    .line 321
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v4}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$500(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v4}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$600(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignoring abort event exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-virtual {p0, v9, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->okToReaccept(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Z

    move-result v3

    .line 330
    .local v3, "keepAccepting":Z
    if-eqz v0, :cond_5

    .line 332
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 338
    goto :goto_2

    .line 333
    :catchall_2
    move-exception v4

    .line 334
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v5}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$700(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to close accepted connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 336
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-virtual {v4, v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->unmapSession(Ljava/lang/Long;)V

    .line 344
    .end local v9    # "exc":Ljava/lang/Throwable;
    :goto_3
    if-eqz v3, :cond_6

    .line 347
    :try_start_5
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->socket:Ljava/nio/channels/AsynchronousServerSocketChannel;

    invoke-virtual {v4, p2, p0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 348
    :catchall_3
    move-exception v4

    .line 349
    .local v4, "exc":Ljava/lang/Throwable;
    invoke-virtual {p0, v4, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 350
    .end local v4    # "exc":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 352
    :cond_6
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v4}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$800(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "=====> onCompleted({}) no longer accepting incoming connections <===="

    invoke-interface {v4, v5, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :goto_5
    return-void
.end method

.method protected bridge synthetic onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 266
    check-cast p2, Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->onFailed(Ljava/lang/Throwable;Ljava/net/SocketAddress;)V

    return-void
.end method

.method protected onFailed(Ljava/lang/Throwable;Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "address"    # Ljava/net/SocketAddress;

    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->okToReaccept(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->socket:Ljava/nio/channels/AsynchronousServerSocketChannel;

    invoke-virtual {v0, p2, p0}, Ljava/nio/channels/AsynchronousServerSocketChannel;->accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    .line 373
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor$AcceptCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;

    invoke-static {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;->access$1100(Lorg/apache/sshd/common/io/nio2/Nio2Acceptor;)Lorg/slf4j/Logger;

    move-result-object v1

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

    const-string v3, " to re-accept new connections on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

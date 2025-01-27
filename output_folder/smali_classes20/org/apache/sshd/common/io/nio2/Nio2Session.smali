.class public Lorg/apache/sshd/common/io/nio2/Nio2Session;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "Nio2Session.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoSession;


# static fields
.field public static final DEFAULT_READBUF_SIZE:I = 0x8000

.field private static final SESSION_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final acceptanceAddress:Ljava/net/SocketAddress;

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final currentWrite:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final ioHandler:Lorg/apache/sshd/common/io/IoHandler;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final manager:Lorg/apache/sshd/common/FactoryManager;

.field private final remoteAddress:Ljava/net/SocketAddress;

.field private final service:Lorg/apache/sshd/common/io/nio2/Nio2Service;

.field private final socketChannel:Ljava/nio/channels/AsynchronousSocketChannel;

.field private final writes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->SESSION_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Service;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "service"    # Lorg/apache/sshd/common/io/nio2/Nio2Service;
    .param p2, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p3, "handler"    # Lorg/apache/sshd/common/io/IoHandler;
    .param p4, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p5, "acceptanceAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 56
    sget-object v0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->SESSION_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->id:J

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    const-string v0, "No service instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/nio2/Nio2Service;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->service:Lorg/apache/sshd/common/io/nio2/Nio2Service;

    .line 72
    const-string v0, "No factory manager"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 73
    const-string v0, "No IoHandler"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/IoHandler;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->ioHandler:Lorg/apache/sshd/common/io/IoHandler;

    .line 74
    const-string v0, "No socket channel"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/AsynchronousSocketChannel;

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->socketChannel:Ljava/nio/channels/AsynchronousSocketChannel;

    .line 75
    invoke-virtual {p4}, Ljava/nio/channels/AsynchronousSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->localAddress:Ljava/net/SocketAddress;

    .line 76
    invoke-virtual {p4}, Ljava/nio/channels/AsynchronousSocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->remoteAddress:Ljava/net/SocketAddress;

    .line 77
    iput-object p5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->acceptanceAddress:Ljava/net/SocketAddress;

    .line 78
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p5, v3, v0

    const-string v0, "Creating IoSession on {} from {} via {}"

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method protected createReadCycleCompletionHandler(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufReader"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/apache/sshd/common/util/Readable;",
            ")",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Session$1;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)V

    return-object v0
.end method

.method protected createWriteCycleCompletionHandler(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
    .locals 8
    .param p1, "future"    # Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 440
    .local v6, "writeLen":I
    new-instance v7, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/io/nio2/Nio2Session$2;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;I)V

    return-object v7
.end method

.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 3

    .line 213
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "closeId":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    .line 215
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/io/nio2/Nio2Session$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;)V

    .line 216
    invoke-virtual {v1, v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    .line 225
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v1

    .line 214
    return-object v1
.end method

.method protected doCloseImmediately()V
    .locals 11

    .line 230
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 233
    .local v0, "debugEnabled":Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    .line 234
    .local v1, "future":Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    if-eqz v1, :cond_4

    .line 235
    invoke-virtual {v1}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->isWritten()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v3, "doCloseImmediately({}) skip already written future={}"

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v1}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 243
    .local v2, "error":Ljava/lang/Throwable;
    if-nez v2, :cond_3

    .line 244
    if-eqz v0, :cond_2

    .line 245
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v4, "doCloseImmediately({}) signal write abort for future={}"

    invoke-interface {v3, v4, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    :cond_2
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "Write request aborted due to immediate session close"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 253
    .end local v1    # "future":Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    .end local v2    # "error":Ljava/lang/Throwable;
    :cond_3
    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v1

    .line 257
    .local v1, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 258
    :try_start_0
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v7, "doCloseImmediately({}) closing socket={}"

    invoke-interface {v6, v7, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    :cond_5
    invoke-virtual {v1}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V

    .line 263
    if-eqz v0, :cond_6

    .line 264
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v7, "doCloseImmediately({}) socket={} closed"

    invoke-interface {v6, v7, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_6
    goto :goto_1

    .line 267
    :catch_0
    move-exception v6

    .line 268
    .local v6, "e":Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v8, "doCloseImmediately({}) {} caught while closing socket={}: {}"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v5

    .line 269
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v1, v9, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 268
    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    if-eqz v0, :cond_7

    .line 271
    iget-object v7, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doCloseImmediately("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") socket="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " close failure details"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_1
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->service:Lorg/apache/sshd/common/io/nio2/Nio2Service;

    invoke-virtual {v6, p0}, Lorg/apache/sshd/common/io/nio2/Nio2Service;->sessionClosed(Lorg/apache/sshd/common/io/nio2/Nio2Session;)V

    .line 276
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getIoHandler()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v6

    .line 280
    .local v6, "handler":Lorg/apache/sshd/common/io/IoHandler;
    :try_start_1
    invoke-interface {v6, p0}, Lorg/apache/sshd/common/io/IoHandler;->sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    goto :goto_2

    .line 281
    :catchall_0
    move-exception v7

    .line 282
    .local v7, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_8

    .line 283
    iget-object v8, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v9, "doCloseImmediately({}) {} while calling IoHandler#sessionClosed: {}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 284
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 283
    invoke-interface {v8, v9, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_8
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 288
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCloseImmediately("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") IoHandler#sessionClosed failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_2
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    monitor-enter v2

    .line 293
    :try_start_2
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 294
    monitor-exit v2

    .line 295
    return-void

    .line 294
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method protected doReadCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;)V
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p2, "completion":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v7

    .line 396
    .local v7, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->manager:Lorg/apache/sshd/common/FactoryManager;

    sget-wide v1, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO2_READ_TIMEOUT:J

    const-string v3, "nio2-read-timeout"

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/sshd/common/FactoryManager;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v8

    .line 398
    .local v8, "readTimeout":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v8

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    .line 399
    return-void
.end method

.method protected doReadCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufReader"    # Lorg/apache/sshd/common/util/Readable;

    .line 334
    nop

    .line 336
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->createReadCycleCompletionHandler(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    move-result-object v0

    .line 335
    const-string v1, "No completion handler created"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    .line 338
    .local v0, "completion":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->doReadCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;)V

    .line 339
    return-void
.end method

.method protected doWriteCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;)V
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p2, "completion":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v7

    .line 432
    .local v7, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->manager:Lorg/apache/sshd/common/FactoryManager;

    sget-wide v1, Lorg/apache/sshd/common/FactoryManager;->DEFAULT_NIO2_MIN_WRITE_TIMEOUT:J

    const-string v3, "nio2-min-write-timeout"

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/sshd/common/FactoryManager;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v8

    .line 434
    .local v8, "writeTimeout":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v8

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Ljava/nio/channels/AsynchronousSocketChannel;->write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V

    .line 435
    return-void
.end method

.method protected exceptionCaught(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "exc"    # Ljava/lang/Throwable;

    .line 182
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    .line 187
    .local v0, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->isOpen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getIoHandler()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v1

    .line 190
    .local v1, "handler":Lorg/apache/sshd/common/io/IoHandler;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v7, "exceptionCaught({}) caught {}[{}] - calling handler"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v4

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 191
    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_1
    invoke-interface {v1, p0, p1}, Lorg/apache/sshd/common/io/IoHandler;->exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    goto :goto_0

    .line 195
    :catchall_0
    move-exception v6

    .line 196
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 197
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    iget-object v8, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 199
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 198
    const-string v3, "exceptionCaught({}) Exception handler threw {}, closing the session: {}"

    invoke-interface {v8, v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_2
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exceptionCaught("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") exception handler failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v1    # "handler":Lorg/apache/sshd/common/io/IoHandler;
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 209
    return-void
.end method

.method protected finishWrite(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;)V
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    .line 507
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startWriting()V

    .line 510
    return-void
.end method

.method public getAcceptanceAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->acceptanceAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->id:J

    return-wide v0
.end method

.method public getIoHandler()Lorg/apache/sshd/common/io/IoHandler;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->ioHandler:Lorg/apache/sshd/common/io/IoHandler;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public bridge synthetic getService()Lorg/apache/sshd/common/io/IoService;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getService()Lorg/apache/sshd/common/io/nio2/Nio2Service;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/apache/sshd/common/io/nio2/Nio2Service;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->service:Lorg/apache/sshd/common/io/nio2/Nio2Service;

    return-object v0
.end method

.method public getSocket()Ljava/nio/channels/AsynchronousSocketChannel;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->socketChannel:Ljava/nio/channels/AsynchronousSocketChannel;

    return-object v0
.end method

.method protected handleCompletedWriteCycle(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;ILorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "future"    # Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "writeLen"    # I
    .param p6, "result"    # Ljava/lang/Integer;
    .param p7, "attachment"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 456
    .local p5, "completionHandler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3, v0, p5}, Ljava/nio/channels/AsynchronousSocketChannel;->write(Ljava/nio/ByteBuffer;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCompletedWriteCycle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Exception caught while writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setWritten()V

    .line 464
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->finishWrite(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;)V

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "handleCompletedWriteCycle({}) finished writing len={}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 473
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {p1}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setWritten()V

    .line 476
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->finishWrite(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;)V

    .line 478
    :goto_1
    return-void
.end method

.method protected handleReadCycleCompletion(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufReader"    # Lorg/apache/sshd/common/util/Readable;
    .param p4, "result"    # Ljava/lang/Integer;
    .param p5, "attachment"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/apache/sshd/common/util/Readable;",
            "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 360
    .local p3, "completionHandler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 361
    .local v0, "debugEnabled":Z
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    .line 362
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v2, "handleReadCycleCompletion({}) read {} bytes"

    invoke-interface {v1, v2, p0, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getIoHandler()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v1

    .line 368
    .local v1, "handler":Lorg/apache/sshd/common/io/IoHandler;
    invoke-interface {v1, p0, p2}, Lorg/apache/sshd/common/io/IoHandler;->messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V

    .line 369
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v2}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 372
    invoke-virtual {p0, p1, p3}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->doReadCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;)V

    goto :goto_0

    .line 374
    :cond_1
    if-eqz v0, :cond_2

    .line 375
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v3, "handleReadCycleCompletion({}) IoSession has been closed, stop reading"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    .end local v1    # "handler":Lorg/apache/sshd/common/io/IoHandler;
    :cond_2
    :goto_0
    goto :goto_1

    .line 379
    :cond_3
    if-eqz v0, :cond_4

    .line 380
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v2, "handleReadCycleCompletion({}) Socket has been disconnected (result={}), closing IoSession now"

    invoke-interface {v1, v2, p0, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v0    # "debugEnabled":Z
    :goto_1
    goto :goto_2

    .line 385
    :catchall_0
    move-exception v0

    .line 386
    .local v0, "exc":Ljava/lang/Throwable;
    invoke-virtual {p3, v0, p5}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 388
    .end local v0    # "exc":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method protected handleReadCycleFailure(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufReader"    # Lorg/apache/sshd/common/util/Readable;
    .param p3, "exc"    # Ljava/lang/Throwable;
    .param p4, "attachment"    # Ljava/lang/Object;

    .line 391
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method protected handleWriteCycleFailure(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;ILjava/lang/Throwable;Ljava/lang/Object;)V
    .locals 8
    .param p1, "future"    # Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    .param p2, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "writeLen"    # I
    .param p5, "exc"    # Ljava/lang/Throwable;
    .param p6, "attachment"    # Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 485
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 484
    const-string v6, "handleWriteCycleFailure({}) failed ({}) to write {} bytes: {}"

    invoke-interface {v0, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    .line 489
    .local v0, "traceEnabled":Z
    if-eqz v0, :cond_1

    .line 490
    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleWriteCycleFailure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failure details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    :cond_1
    invoke-virtual {p1, p5}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 493
    invoke-virtual {p0, p5}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 497
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->finishWrite(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 498
    :catch_0
    move-exception v5

    .line 499
    .local v5, "e":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_2

    .line 500
    iget-object v6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 501
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 500
    const-string v2, "handleWriteCycleFailure({}) failed ({}) to finish writing: {}"

    invoke-interface {v6, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$doCloseGracefully$0$org-apache-sshd-common-io-nio2-Nio2Session()V
    .locals 5

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    .line 219
    .local v0, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    nop

    .end local v0    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    const-string v3, "doCloseGracefully({}) {} while shutting down output: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shudownOutputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    .line 305
    .local v0, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    const-string v2, "shudownOutputStream({})"

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;

    .line 311
    :cond_1
    return-void
.end method

.method public startReading()V
    .locals 3

    .line 314
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->manager:Lorg/apache/sshd/common/FactoryManager;

    const-string v1, "nio2-read-buf-size"

    const v2, 0x8000

    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/FactoryManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading(I)V

    .line 315
    return-void
.end method

.method public startReading(I)V
    .locals 1
    .param p1, "bufSize"    # I

    .line 318
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading([B)V

    .line 319
    return-void
.end method

.method public startReading(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 330
    invoke-static {p1}, Lorg/apache/sshd/common/util/Readable;->readable(Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/util/Readable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->doReadCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/util/Readable;)V

    .line 331
    return-void
.end method

.method public startReading([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 322
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading([BII)V

    .line 323
    return-void
.end method

.method public startReading([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 326
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading(Ljava/nio/ByteBuffer;)V

    .line 327
    return-void
.end method

.method protected startWriting()V
    .locals 5

    .line 402
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    .line 403
    .local v0, "future":Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    if-nez v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    return-void

    .line 412
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v1

    .line 413
    .local v1, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 414
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    nop

    .line 416
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->createWriteCycleCompletionHandler(Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;Ljava/nio/channels/AsynchronousSocketChannel;Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    move-result-object v3

    const-string v4, "No write cycle completion handler created"

    .line 415
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;

    .line 418
    .local v3, "handler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->doWriteCycle(Ljava/nio/ByteBuffer;Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v1    # "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "handler":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 428
    return-void

    .line 419
    :catchall_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setWritten()V

    .line 422
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 423
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 425
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public suspend()V
    .locals 10

    .line 140
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getSocket()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    .line 141
    .local v0, "socket":Ljava/nio/channels/AsynchronousSocketChannel;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 143
    .local v1, "debugEnabled":Z
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->shutdownInput()Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 146
    iget-object v7, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v4

    .line 147
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 146
    const-string/jumbo v9, "suspend({}) failed {{}) to shutdown input: {}"

    invoke-interface {v7, v9, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto :goto_1

    .line 153
    :catch_1
    move-exception v6

    .line 154
    .restart local v6    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 155
    iget-object v7, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 156
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 155
    const-string/jumbo v2, "suspend({}) failed {{}) to shutdown output: {}"

    invoke-interface {v7, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    return-object v0
.end method

.method public writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "writePacket({}) Writing {} bytes"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "buf":Ljava/nio/ByteBuffer;
    new-instance v1, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;

    .line 169
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 170
    .local v1, "future":Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->isClosing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 172
    .local v2, "exc":Ljava/lang/Throwable;
    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/io/nio2/Nio2DefaultIoWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 174
    return-object v1

    .line 176
    .end local v2    # "exc":Ljava/lang/Throwable;
    :cond_1
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session;->writes:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startWriting()V

    .line 178
    return-object v1
.end method

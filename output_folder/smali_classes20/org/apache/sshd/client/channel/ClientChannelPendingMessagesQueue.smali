.class public Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "ClientChannelPendingMessagesQueue.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;
.implements Ljava/nio/channels/Channel;
.implements Lorg/apache/sshd/client/channel/ClientChannelHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/common/future/SshFutureListener<",
        "Lorg/apache/sshd/client/future/OpenFuture;",
        ">;",
        "Ljava/nio/channels/Channel;",
        "Lorg/apache/sshd/client/channel/ClientChannelHolder;"
    }
.end annotation


# instance fields
.field private final clientChannel:Lorg/apache/sshd/client/channel/ClientChannel;

.field protected final completedFuture:Lorg/apache/sshd/client/future/DefaultOpenFuture;

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final pendingQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Map$Entry<",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/channel/ClientChannel;)V
    .locals 3
    .param p1, "channel"    # Lorg/apache/sshd/client/channel/ClientChannel;

    .line 61
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    const-string v0, "No channel provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/channel/ClientChannel;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->clientChannel:Lorg/apache/sshd/client/channel/ClientChannel;

    .line 63
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->completedFuture:Lorg/apache/sshd/client/future/DefaultOpenFuture;

    .line 64
    return-void
.end method


# virtual methods
.method protected clearPendingQueue()I
    .locals 3

    .line 258
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 260
    .local v1, "numEntries":I
    if-lez v1, :cond_0

    .line 261
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    .line 263
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 264
    monitor-exit v0

    .line 266
    return v1

    .line 264
    .end local v1    # "numEntries":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markClosed()Z

    .line 90
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->clearPendingQueue()I

    move-result v0

    .line 91
    .local v0, "numPending":I
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "close({}) cleared {} pending messages"

    invoke-interface {v1, v3, p0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected flushPendingQueue()V
    .locals 9

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "numSent":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 218
    .local v1, "debugEnabled":Z
    if-eqz v1, :cond_0

    .line 219
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    const-string v3, "flushPendingQueue({}) start sending pending messages"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    .line 223
    .end local v0    # "numSent":I
    .local v3, "numSent":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, "msgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer<-Ljava/lang/Throwable;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/Consumer;

    invoke-virtual {p0, v4, v5}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->writeMessage(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer;)V

    .line 223
    .end local v0    # "msgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer<-Ljava/lang/Throwable;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markCompletionSuccessful()Lorg/apache/sshd/client/future/OpenFuture;

    .line 229
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    if-eqz v1, :cond_2

    .line 232
    :try_start_2
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    const-string v2, "flushPendingQueue({}) sent {} pending messages"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, p0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    .end local v1    # "debugEnabled":Z
    :cond_2
    goto :goto_2

    .line 229
    .restart local v1    # "debugEnabled":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "numSent":I
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    .end local v1    # "debugEnabled":Z
    .restart local v3    # "numSent":I
    :catch_0
    move-exception v1

    move v0, v3

    goto :goto_1

    .end local v3    # "numSent":I
    .local v0, "numSent":I
    :catch_1
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markCompletionException(Ljava/lang/Throwable;)Lorg/apache/sshd/client/future/OpenFuture;

    .line 237
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markClosed()Z

    move-result v2

    .line 238
    .local v2, "closed":Z
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->clearPendingQueue()I

    move-result v3

    .line 239
    .local v3, "numPending":I
    iget-object v4, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    const-string v5, "flushPendingQueue({}) Failed ({}) after {} successfully sent messages (pending={}, markClosed={}): {}"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 239
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 242
    .end local v0    # "numSent":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "closed":Z
    .local v3, "numSent":I
    :goto_2
    return-void
.end method

.method public getClientChannel()Lorg/apache/sshd/client/channel/ClientChannel;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->clientChannel:Lorg/apache/sshd/client/channel/ClientChannel;

    return-object v0
.end method

.method public getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->completedFuture:Lorg/apache/sshd/client/future/DefaultOpenFuture;

    return-object v0
.end method

.method public handleIncomingMessage(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer;)I
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    .local p2, "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "No message to enqueue"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    .line 144
    .local v0, "future":Lorg/apache/sshd/client/future/OpenFuture;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 145
    :try_start_0
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->isDone()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 146
    .local v2, "enqueue":Z
    if-eqz v2, :cond_0

    .line 147
    const-string v3, "No pending message error handler provided"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    :cond_0
    if-eqz v2, :cond_1

    .line 151
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->writeMessage(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer;)V

    .line 157
    :goto_0
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->pendingQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    monitor-exit v1

    return v3

    .line 158
    .end local v2    # "enqueue":Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 139
    .end local v0    # "future":Lorg/apache/sshd/client/future/OpenFuture;
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Queue is closed"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected markClosed()Z
    .locals 3

    .line 102
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    .line 103
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    return v1
.end method

.method protected markCompletionException(Ljava/lang/Throwable;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 1
    .param p1, "err"    # Ljava/lang/Throwable;

    .line 251
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    .line 252
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-interface {v0, p1}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    .line 253
    return-object v0
.end method

.method protected markCompletionSuccessful()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    .line 246
    .local v0, "f":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V

    .line 247
    return-object v0
.end method

.method public operationComplete(Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 6
    .param p1, "future"    # Lorg/apache/sshd/client/future/OpenFuture;

    .line 196
    invoke-interface {p1}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 197
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markCompletionException(Ljava/lang/Throwable;)Lorg/apache/sshd/client/future/OpenFuture;

    .line 200
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markClosed()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 201
    const-string v2, "operationComplete({}) {}[{}] signaled"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 204
    const-string v2, "operationComplete({}) got {}[{}] signal while queue is closed"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->clearPendingQueue()I

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->flushPendingQueue()V

    .line 212
    :goto_1
    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 52
    check-cast p1, Lorg/apache/sshd/client/future/OpenFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->operationComplete(Lorg/apache/sshd/client/future/OpenFuture;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getClientChannel()Lorg/apache/sshd/client/channel/ClientChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->isOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    return-object v0
.end method

.method protected writeMessage(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    .local p2, "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getClientChannel()Lorg/apache/sshd/client/channel/ClientChannel;

    move-result-object v0

    .line 164
    .local v0, "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-interface {v0}, Lorg/apache/sshd/client/channel/ClientChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0}, Lorg/apache/sshd/client/channel/ClientChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 173
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v1}, Lorg/apache/sshd/common/session/Session;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v0}, Lorg/apache/sshd/client/channel/ClientChannel;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v2

    .line 178
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 191
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    nop

    .line 192
    return-void

    .line 174
    .restart local v1    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Client session is closed/closing"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    throw v2

    .line 169
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Client channel is closed/closing"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    throw v1

    .line 165
    .restart local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Queue is marked as closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .restart local v0    # "channel":Lorg/apache/sshd/client/channel/ClientChannel;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/io/IOException;>;"
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 182
    const-string/jumbo v4, "writeMessage({}) failed ({}) to output message: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_3
    if-eqz p2, :cond_4

    .line 186
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 189
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->markCompletionException(Ljava/lang/Throwable;)Lorg/apache/sshd/client/future/OpenFuture;

    .line 190
    throw v1
.end method

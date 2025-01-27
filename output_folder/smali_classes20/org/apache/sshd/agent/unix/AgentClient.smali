.class public Lorg/apache/sshd/agent/unix/AgentClient;
.super Lorg/apache/sshd/agent/common/AbstractAgentProxy;
.source "AgentClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/sshd/common/FactoryManagerHolder;


# static fields
.field public static final DEFAULT_MESSAGE_POLL_FREQUENCY:J

.field public static final MESSAGE_POLL_FREQUENCY:Ljava/lang/String; = "agent-client-message-poll-time"


# instance fields
.field private final authSocket:Ljava/lang/String;

.field private final handle:J

.field private final manager:Lorg/apache/sshd/common/FactoryManager;

.field private final messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:J

.field private pumper:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/agent/unix/AgentClient;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/FactoryManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "authSocket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/agent/unix/AgentClient;-><init>(Lorg/apache/sshd/common/FactoryManager;Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/FactoryManager;Ljava/lang/String;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 5
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p2, "authSocket"    # Ljava/lang/String;
    .param p3, "executor"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentClient["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;-><init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    const-string v0, "No factory manager instance provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    iput-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 75
    iput-object p2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->authSocket:Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-static {}, Lorg/apache/sshd/agent/unix/AprLibrary;->getInstance()Lorg/apache/sshd/agent/unix/AprLibrary;

    move-result-object v0

    .line 79
    .local v0, "aprLibInstance":Lorg/apache/sshd/agent/unix/AprLibrary;
    invoke-virtual {v0}, Lorg/apache/sshd/agent/unix/AprLibrary;->getRootPool()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/Pool;->create(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->pool:J

    .line 80
    invoke-static {p2, v1, v2}, Lorg/apache/tomcat/jni/Local;->create(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->handle:J

    .line 81
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/apache/tomcat/jni/Local;->connect(JJ)I

    move-result v1

    .line 82
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/unix/AgentClient;->throwException(I)V

    .line 85
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    iput-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 86
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    .line 88
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    .line 89
    .local v2, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/agent/unix/AgentClient;->pumper:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "aprLibInstance":Lorg/apache/sshd/agent/unix/AprLibrary;
    .end local v1    # "result":I
    .end local v2    # "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    nop

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-wide v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->handle:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/Socket;->close(J)I

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->pumper:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->pumper:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 191
    :cond_1
    invoke-super {p0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->close()V

    .line 192
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAuthSocket()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->authSocket:Ljava/lang/String;

    return-object v0
.end method

.method public getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->manager:Lorg/apache/sshd/common/FactoryManager;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/agent/unix/AgentClient;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected messageReceived(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 7
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "message":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 152
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 153
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    .line 154
    .local v2, "rpos":I
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v3

    .line 156
    .local v3, "len":I
    if-ltz v3, :cond_0

    .line 160
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 161
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    if-lt v4, v5, :cond_1

    .line 162
    new-instance v4, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    move-object v0, v4

    .line 163
    iget-object v4, p0, Lorg/apache/sshd/agent/unix/AgentClient;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V

    goto :goto_0

    .line 157
    :cond_0
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illogical message length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "message":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    throw v4

    .line 166
    .end local v2    # "rpos":I
    .end local v3    # "len":I
    .restart local v0    # "message":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    monitor-enter v1

    .line 170
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 172
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 174
    :cond_2
    :goto_1
    return-void

    .line 166
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method protected declared-synchronized request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 7
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 197
    .local v0, "wpos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 198
    add-int/lit8 v1, v0, -0x4

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 199
    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 200
    iget-object v1, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    :try_start_1
    iget-wide v2, p0, Lorg/apache/sshd/agent/unix/AgentClient;->handle:J

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/tomcat/jni/Socket;->send(J[BII)I

    move-result v2

    .line 202
    .local v2, "result":I
    if-gez v2, :cond_0

    .line 203
    invoke-virtual {p0, v2}, Lorg/apache/sshd/agent/unix/AgentClient;->throwException(I)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->waitForMessageBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 207
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lorg/apache/sshd/agent/unix/AgentClient;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 195
    .end local v0    # "wpos":I
    .end local p1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 12

    .line 114
    const-string v0, "run({}) {} while closing: {}"

    const/16 v1, 0x400

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    :try_start_0
    new-array v1, v1, [B

    .line 115
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    iget-wide v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->handle:J

    array-length v8, v1

    invoke-static {v6, v7, v1, v5, v8}, Lorg/apache/tomcat/jni/Socket;->recv(J[BII)I

    move-result v6

    .line 117
    .local v6, "result":I
    if-gez v6, :cond_0

    .line 118
    invoke-virtual {p0, v6}, Lorg/apache/sshd/agent/unix/AgentClient;->throwException(I)V

    .line 121
    :cond_0
    new-instance v7, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v7, v1, v5, v6}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {p0, v7}, Lorg/apache/sshd/agent/unix/AgentClient;->messageReceived(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v6    # "result":I
    goto :goto_0

    .line 138
    .end local v1    # "buf":[B
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :goto_1
    goto/16 :goto_4

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    iget-object v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 141
    invoke-interface {v6, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    goto/16 :goto_4

    .line 137
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    .line 125
    .local v6, "debugEnabled":Z
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->isOpen()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "run("

    if-eqz v7, :cond_3

    .line 126
    :try_start_3
    iget-object v7, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    const-string v9, "run({}) {} while still open: {}"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object p0, v10, v5

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 126
    invoke-interface {v7, v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-eqz v6, :cond_4

    .line 129
    iget-object v7, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") open client exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 132
    :cond_3
    if-eqz v6, :cond_4

    .line 133
    iget-object v7, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") closed client loop exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "debugEnabled":Z
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 139
    :catch_2
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    iget-object v6, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 141
    invoke-interface {v6, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 138
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 144
    goto :goto_6

    .line 139
    :catch_3
    move-exception v6

    .line 140
    .local v6, "e":Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 141
    iget-object v7, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 141
    invoke-interface {v7, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    throw v1
.end method

.method protected throwException(I)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v2, p1

    invoke-static {v2}, Lorg/apache/tomcat/jni/Error;->strerror(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[socket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->getAuthSocket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected waitForMessageBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    .line 213
    .local v0, "mgr":Lorg/apache/sshd/common/FactoryManager;
    sget-wide v1, Lorg/apache/sshd/agent/unix/AgentClient;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    const-string v3, "agent-client-message-poll-time"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 215
    .local v1, "idleTimeout":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 216
    sget-wide v1, Lorg/apache/sshd/agent/unix/AgentClient;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    .line 219
    :cond_0
    iget-object v3, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    .line 220
    .local v3, "traceEnabled":Z
    const/4 v4, 0x1

    .line 221
    .local v4, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/unix/AgentClient;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v5

    .line 229
    :cond_1
    if-eqz v3, :cond_2

    .line 230
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentClient;->log:Lorg/slf4j/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "waitForMessageBuffer({}) wait iteration #{}"

    invoke-interface {v5, v7, p0, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/sshd/agent/unix/AgentClient;->messages:Ljava/util/Queue;

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    nop

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v5

    .line 236
    .local v5, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/InterruptedIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted while waiting for messages at iteration #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .line 222
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v5, Lorg/apache/sshd/common/SshException;

    const-string v6, "Client is being closed"

    invoke-direct {v5, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

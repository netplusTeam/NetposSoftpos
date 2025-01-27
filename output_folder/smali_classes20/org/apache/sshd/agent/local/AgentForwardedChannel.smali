.class public Lorg/apache/sshd/agent/local/AgentForwardedChannel;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "AgentForwardedChannel.java"


# static fields
.field public static final DEFAULT_MESSAGE_POLL_FREQUENCY:J

.field public static final MESSAGE_POLL_FREQUENCY:Ljava/lang/String; = "agent-fwd-channel-message-poll-time"


# instance fields
.field private final messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelType"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    .line 55
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 60
    new-instance v0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/agent/local/AgentForwardedChannel;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->addCloseFutureListener(Lorg/apache/sshd/common/future/SshFutureListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected doOpen()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 145
    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 144
    const-string v1, "Asynchronous streaming isn\'t supported yet on this channel"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 146
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 147
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->log:Lorg/slf4j/Logger;

    const/16 v6, 0x5e

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->invertedIn:Ljava/io/OutputStream;

    .line 148
    return-void
.end method

.method protected doWriteData([BIJ)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "message":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    new-instance v3, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    long-to-int v4, p3

    invoke-direct {v3, p1, p2, v4}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {v2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 158
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 159
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    move p2, v2

    .line 160
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v2

    int-to-long p3, v2

    .line 161
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 162
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 163
    new-instance v2, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    iget-object v3, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    move-object v0, v2

    .line 164
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->receiveBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->compact()V

    .line 167
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    monitor-enter v1

    .line 170
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

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

    .line 167
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getAgent()Lorg/apache/sshd/agent/SshAgent;
    .locals 3

    .line 68
    new-instance v0, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/sshd/agent/local/AgentForwardedChannel$1;-><init>(Lorg/apache/sshd/agent/local/AgentForwardedChannel;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 90
    .local v0, "rtn":Lorg/apache/sshd/agent/common/AbstractAgentProxy;
    nop

    .line 91
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 90
    const-string v2, "agent-fw-auth-type"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getString(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "chType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->setChannelType(Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method synthetic lambda$new$0$org-apache-sshd-agent-local-AgentForwardedChannel(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 2
    .param p1, "f"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v0

    .line 98
    .local v0, "reqLen":I
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v2

    .line 100
    .local v2, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 101
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 103
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    .line 104
    .local v3, "wLocal":Lorg/apache/sshd/common/channel/Window;
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->waitForMessageBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 106
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected waitForMessageBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 112
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    sget-wide v1, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    const-string v3, "agent-fwd-channel-message-poll-time"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/PropertyResolverUtils;->getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 114
    .local v1, "idleTimeout":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 115
    sget-wide v1, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->DEFAULT_MESSAGE_POLL_FREQUENCY:J

    .line 118
    :cond_0
    iget-object v3, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    .line 119
    .local v3, "traceEnabled":Z
    const/4 v4, 0x1

    .line 120
    .local v4, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->isClosing()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    iget-object v5, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    iget-object v5, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v5

    .line 128
    :cond_1
    if-eqz v3, :cond_2

    .line 129
    iget-object v5, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->log:Lorg/slf4j/Logger;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "waitForMessageBuffer({}) wait iteration #{}"

    invoke-interface {v5, v7, p0, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/sshd/agent/local/AgentForwardedChannel;->messages:Ljava/util/Queue;

    invoke-virtual {v5, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    nop

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v5

    .line 135
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

    .line 137
    invoke-virtual {v6, v5}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .line 121
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v5, Lorg/apache/sshd/common/SshException;

    const-string v6, "Channel is being closed"

    invoke-direct {v5, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

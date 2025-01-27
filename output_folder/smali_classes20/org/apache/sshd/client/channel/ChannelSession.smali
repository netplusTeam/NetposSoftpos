.class public Lorg/apache/sshd/client/channel/ChannelSession;
.super Lorg/apache/sshd/client/channel/AbstractClientChannel;
.source "ChannelSession.java"


# static fields
.field public static final DEFAULT_INPUT_STREAM_PUMP_CHUNK_SIZE:I = 0x400

.field public static final INPUT_STREAM_PUMP_CHUNK_SIZE:Ljava/lang/String; = "stdin-pump-chunk-size"


# instance fields
.field private pumper:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    const-string v0, "session"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/client/channel/ChannelSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/sshd/client/channel/ChannelSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->sendEof()V

    return-void
.end method


# virtual methods
.method protected closeImmediately0()V
    .locals 7

    .line 151
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 157
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    invoke-interface {v2}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    .line 169
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 170
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v4, "doCloseImmediately({}) failed {} to shutdown stream pumper: {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 161
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCloseImmediately("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") stream pumper shutdown error details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    .line 169
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 170
    throw v0

    .line 172
    :cond_3
    :goto_2
    return-void
.end method

.method protected doOpen()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Async:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lorg/apache/sshd/client/channel/ChannelSession$1;

    const/16 v1, 0x5e

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/sshd/client/channel/ChannelSession$1;-><init>(Lorg/apache/sshd/client/channel/ChannelSession;Lorg/apache/sshd/common/channel/Channel;B)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 83
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    .line 84
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    goto/16 :goto_1

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    .line 87
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/16 v5, 0x5e

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->invertedIn:Ljava/io/OutputStream;

    .line 89
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 90
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;-><init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V

    .line 92
    .local v1, "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    new-instance v2, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;-><init>(Lorg/apache/sshd/common/channel/ChannelPipedSink;)V

    .line 93
    .local v2, "pos":Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;
    iput-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->out:Ljava/io/OutputStream;

    .line 94
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->invertedOut:Ljava/io/InputStream;

    .line 96
    .end local v1    # "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    .end local v2    # "pos":Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->err:Ljava/io/OutputStream;

    if-nez v1, :cond_2

    .line 97
    new-instance v1, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/sshd/common/channel/ChannelPipedInputStream;-><init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V

    .line 98
    .restart local v1    # "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    new-instance v2, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;-><init>(Lorg/apache/sshd/common/channel/ChannelPipedSink;)V

    .line 99
    .restart local v2    # "pos":Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;
    iput-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->err:Ljava/io/OutputStream;

    .line 100
    iput-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->invertedErr:Ljava/io/InputStream;

    .line 103
    .end local v1    # "pis":Lorg/apache/sshd/common/channel/ChannelPipedInputStream;
    .end local v2    # "pos":Lorg/apache/sshd/common/channel/ChannelPipedOutputStream;
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v1

    .line 106
    .local v1, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-nez v1, :cond_3

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientInputStreamPump["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->newSingleThreadExecutor(Ljava/lang/String;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {v1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->noClose(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 116
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumperService:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    new-instance v3, Lorg/apache/sshd/client/channel/ChannelSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/apache/sshd/client/channel/ChannelSession$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/channel/ChannelSession;)V

    invoke-interface {v2, v3}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/channel/ChannelSession;->pumper:Ljava/util/concurrent/Future;

    .line 119
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v1    # "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    :cond_4
    :goto_1
    return-void
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 144
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 145
    invoke-super {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/client/channel/ChannelSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/channel/ChannelSession$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/channel/ChannelSession;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method protected handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 1
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "xon-xoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 128
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_1
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/client/channel/ChannelSession;->handleXonXoff(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5fc829ad
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleXonXoff(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v0

    .line 135
    .local v0, "clientCanDo":Z
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "handleXonXoff({})[want-reply={}] client-can-do={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v1
.end method

.method protected pumpInputStream()V
    .locals 13

    .line 176
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    .line 177
    .local v2, "session":Lorg/apache/sshd/common/session/Session;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    .line 178
    .local v3, "wRemote":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v3}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v4

    .line 179
    .local v4, "packetSize":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    const-string v7, "Invalid remote packet size int boundary: %d"

    invoke-static {v6, v7, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 181
    long-to-int v6, v4

    new-array v6, v6, [B

    .line 182
    .local v6, "buffer":[B
    const-string v7, "stdin-pump-chunk-size"

    const/16 v8, 0x400

    invoke-static {v2, v7, v8}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v7

    .line 184
    .local v7, "maxChunkSize":I
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 186
    .end local v7    # "maxChunkSize":I
    .local v9, "maxChunkSize":I
    :goto_1
    iget-object v7, p0, Lorg/apache/sshd/client/channel/ChannelSession;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v7}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 187
    iget-object v8, p0, Lorg/apache/sshd/client/channel/ChannelSession;->in:Ljava/io/InputStream;

    const/4 v11, 0x0

    array-length v12, v6

    move-object v7, p0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lorg/apache/sshd/client/channel/ChannelSession;->securedRead(Ljava/io/InputStream;I[BII)I

    move-result v7

    .line 188
    .local v7, "len":I
    if-gez v7, :cond_2

    .line 189
    iget-object v8, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    iget-object v8, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v10, "pumpInputStream({}) EOF signalled"

    invoke-interface {v8, v10, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->sendEof()V

    .line 193
    return-void

    .line 196
    :cond_2
    invoke-interface {v2}, Lorg/apache/sshd/common/session/Session;->resetIdleTimeout()J

    .line 197
    if-lez v7, :cond_3

    .line 198
    iget-object v8, p0, Lorg/apache/sshd/client/channel/ChannelSession;->invertedIn:Ljava/io/OutputStream;

    invoke-virtual {v8, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    iget-object v8, p0, Lorg/apache/sshd/client/channel/ChannelSession;->invertedIn:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 201
    .end local v7    # "len":I
    :cond_3
    goto :goto_1

    .line 203
    :cond_4
    iget-object v7, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    iget-object v7, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v8, "pumpInputStream({}) close future closed"

    invoke-interface {v7, v8, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v3    # "wRemote":Lorg/apache/sshd/common/channel/Window;
    .end local v4    # "packetSize":J
    .end local v6    # "buffer":[B
    .end local v9    # "maxChunkSize":I
    :cond_5
    goto :goto_2

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/ChannelSession;->isClosing()Z

    move-result v3

    if-nez v3, :cond_8

    .line 208
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    iget-object v3, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 209
    const-string v0, "pumpInputStream({}) Caught {} : {}"

    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_6
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    iget-object v0, p0, Lorg/apache/sshd/client/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pumpInputStream("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") caught exception details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/channel/ChannelSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_2
    return-void
.end method

.method protected securedRead(Ljava/io/InputStream;I[BII)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxChunkSize"    # I
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "n":I
    :goto_0
    add-int v1, p4, v0

    sub-int v2, p5, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, p3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 225
    .local v1, "nread":I
    if-gtz v1, :cond_1

    .line 226
    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 229
    :cond_1
    add-int/2addr v0, v1

    .line 230
    if-lt v0, p5, :cond_2

    .line 231
    return v0

    .line 235
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 236
    .local v2, "availLen":I
    if-gtz v2, :cond_3

    .line 237
    return v0

    .line 239
    .end local v1    # "nread":I
    .end local v2    # "availLen":I
    :cond_3
    goto :goto_0
.end method

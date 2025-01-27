.class public abstract Lorg/apache/sshd/client/channel/AbstractClientChannel;
.super Lorg/apache/sshd/common/channel/AbstractChannel;
.source "AbstractClientChannel.java"

# interfaces
.implements Lorg/apache/sshd/client/channel/ClientChannel;


# instance fields
.field protected asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

.field protected asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

.field protected asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

.field private final channelType:Ljava/lang/String;

.field protected err:Ljava/io/OutputStream;

.field protected final exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected in:Ljava/io/InputStream;

.field protected invertedErr:Ljava/io/InputStream;

.field protected invertedIn:Ljava/io/OutputStream;

.field protected invertedOut:Ljava/io/InputStream;

.field protected openFailureLang:Ljava/lang/String;

.field protected openFailureMsg:Ljava/lang/String;

.field protected openFailureReason:I

.field protected openFuture:Lorg/apache/sshd/client/future/OpenFuture;

.field protected final opened:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected out:Ljava/io/OutputStream;

.field protected streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 92
    .local p2, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/apache/sshd/common/channel/AbstractChannel;-><init>(ZLjava/util/Collection;)V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->opened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    const-string v0, "No channel type specified"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->channelType:Ljava/lang/String;

    .line 94
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannel$Streaming;->Sync:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 96
    new-instance v0, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/client/channel/AbstractClientChannel;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->addChannelSignalRequestHandlers(Lorg/apache/sshd/common/util/EventNotifier;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected addChannelSignalRequestHandlers(Lorg/apache/sshd/common/util/EventNotifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/EventNotifier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "notifier":Lorg/apache/sshd/common/util/EventNotifier;, "Lorg/apache/sshd/common/util/EventNotifier<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/client/channel/exit/ExitStatusChannelRequestHandler;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->addRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V

    .line 106
    new-instance v0, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/client/channel/exit/ExitSignalChannelRequestHandler;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->addRequestHandler(Lorg/apache/sshd/common/channel/RequestHandler;)V

    .line 107
    return-void
.end method

.method protected abstract doOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected doWriteData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 407
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    if-eqz v0, :cond_2

    .line 408
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    long-to-int v2, p3

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->write(Lorg/apache/sshd/common/util/Readable;)V

    goto :goto_1

    .line 409
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 410
    long-to-int v1, p3

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 411
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 413
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedOut:Ljava/io/InputStream;

    if-nez v0, :cond_3

    .line 414
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 415
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 420
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    :cond_3
    :goto_1
    return-void

    .line 418
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No output stream for channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doWriteExtendedData([BIJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Extended data length exceeds int boundaries: %d"

    invoke-static {v0, v1, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 431
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    if-eqz v0, :cond_2

    .line 432
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    long-to-int v2, p3

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BII)V

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;->write(Lorg/apache/sshd/common/util/Readable;)V

    goto :goto_1

    .line 433
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->err:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    .line 434
    long-to-int v1, p3

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 435
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->err:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 437
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedErr:Ljava/io/InputStream;

    if-nez v0, :cond_3

    .line 438
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v0

    .line 439
    .local v0, "wLocal":Lorg/apache/sshd/common/channel/Window;
    invoke-virtual {v0, p3, p4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 444
    .end local v0    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    :cond_3
    :goto_1
    return-void

    .line 442
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error stream for channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsyncErr()Lorg/apache/sshd/common/io/IoInputStream;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    return-object v0
.end method

.method public getAsyncIn()Lorg/apache/sshd/common/io/IoOutputStream;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    return-object v0
.end method

.method public getAsyncOut()Lorg/apache/sshd/common/io/IoInputStream;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    return-object v0
.end method

.method public getChannelState()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation

    .line 290
    const-class v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    .line 291
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 292
    .local v0, "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->futureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->updateCurrentChannelState(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    monitor-exit v1

    return-object v2

    .line 294
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getErr()Ljava/io/OutputStream;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 183
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    .line 184
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Lorg/apache/sshd/common/future/SshFuture;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/client/channel/AbstractClientChannel;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncInputStream;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 200
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 201
    invoke-super {p0}, Lorg/apache/sshd/common/channel/AbstractChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public getInvertedErr()Ljava/io/InputStream;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedErr:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInvertedIn()Ljava/io/OutputStream;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedIn:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getInvertedOut()Ljava/io/InputStream;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedOut:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Ljava/io/OutputStream;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getStreaming()Lorg/apache/sshd/client/channel/ClientChannel$Streaming;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    return-object v0
.end method

.method public handleOpenFailure(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 7
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 381
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 382
    .local v0, "reason":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "lang":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 386
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getOpenErrorCodeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 385
    const-string v5, "handleOpenFailure({}) reason={}, lang={}, msg={}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_0
    iput v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFailureReason:I

    .line 390
    iput-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFailureMsg:Ljava/lang/String;

    .line 391
    iput-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFailureLang:Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    new-instance v4, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;

    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getId()I

    move-result v5

    invoke-direct {v4, v5, v0, v1}, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    .line 393
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v3}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 394
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->doCloseImmediately()V

    .line 395
    const-string v3, "SSH_MSG_CHANNEL_OPEN_FAILURE"

    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public handleOpenSuccess(IJJLorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 9
    .param p1, "recipient"    # I
    .param p2, "rwSize"    # J
    .param p4, "packetSize"    # J
    .param p6, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->setRecipient(I)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 353
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    nop

    .line 354
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    const-string v2, "No factory manager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/FactoryManager;

    .line 355
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v8

    .line 356
    .local v8, "wRemote":Lorg/apache/sshd/common/channel/Window;
    move-object v2, v8

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sshd/common/channel/Window;->init(JJLorg/apache/sshd/common/PropertyResolver;)V

    .line 358
    const-string v2, "SSH_MSG_CHANNEL_OPEN_CONFIRMATION"

    .line 360
    .local v2, "changeEvent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->doOpen()V

    .line 362
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->signalChannelOpenSuccess()V

    .line 363
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->opened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    iget-object v3, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    invoke-interface {v3}, Lorg/apache/sshd/client/future/OpenFuture;->setOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 374
    goto :goto_1

    .line 365
    :catchall_0
    move-exception v3

    .line 366
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 367
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 368
    invoke-virtual {p0, v4}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->signalChannelOpenFailure(Ljava/lang/Throwable;)V

    .line 369
    iget-object v5, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    invoke-interface {v5, v4}, Lorg/apache/sshd/client/future/OpenFuture;->setException(Ljava/lang/Throwable;)V

    .line 370
    iget-object v5, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v5}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 371
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->doCloseImmediately()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 375
    :goto_1
    return-void

    .line 373
    :catchall_1
    move-exception v3

    invoke-virtual {p0, v2}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 374
    throw v3
.end method

.method public handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-super {p0, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 449
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->asyncIn:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->onWindowExpanded()V

    .line 452
    :cond_0
    return-void
.end method

.method synthetic lambda$getInnerCloseable$1$org-apache-sshd-client-channel-AbstractClientChannel()V
    .locals 6

    .line 188
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->gracefulFuture:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 197
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/io/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->out:Ljava/io/OutputStream;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->err:Ljava/io/OutputStream;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    .line 198
    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedIn:Ljava/io/OutputStream;

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedOut:Ljava/io/InputStream;

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->invertedErr:Ljava/io/InputStream;

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    .line 199
    return-void
.end method

.method synthetic lambda$new$0$org-apache-sshd-client-channel-AbstractClientChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "notifyEvent({}): {}"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->notifyStateChanged(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public declared-synchronized open()Lorg/apache/sshd/client/future/OpenFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Lorg/apache/sshd/client/future/DefaultOpenFuture;

    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->futureLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/client/future/DefaultOpenFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    .line 325
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getChannelType()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string v2, "open({}) Send SSH_MSG_CHANNEL_OPEN - type={}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .end local p0    # "this":Lorg/apache/sshd/client/channel/AbstractClientChannel;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v1

    .line 331
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v2

    .line 332
    .local v2, "wLocal":Lorg/apache/sshd/common/channel/Window;
    const/16 v3, 0x5a

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-interface {v1, v3, v4}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 334
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 336
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 337
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 338
    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 339
    iget-object v4, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 321
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v2    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    .end local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Session has been closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(IJJLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/client/future/OpenFuture;
    .locals 3
    .param p1, "recipient"    # I
    .param p2, "rwSize"    # J
    .param p4, "packetSize"    # J
    .param p6, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErr(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 178
    iput-object p1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->err:Ljava/io/OutputStream;

    .line 179
    return-void
.end method

.method public setIn(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 150
    iput-object p1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->in:Ljava/io/InputStream;

    .line 151
    return-void
.end method

.method public setOut(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 164
    iput-object p1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->out:Ljava/io/OutputStream;

    .line 165
    return-void
.end method

.method public setStreaming(Lorg/apache/sshd/client/channel/ClientChannel$Streaming;)V
    .locals 0
    .param p1, "streaming"    # Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 121
    iput-object p1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->streaming:Lorg/apache/sshd/client/channel/ClientChannel$Streaming;

    .line 122
    return-void
.end method

.method protected updateCurrentChannelState(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;>(TC;)TC;"
        }
    .end annotation

    .line 299
    .local p1, "state":Ljava/util/Collection;, "TC;"
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->openFuture:Lorg/apache/sshd/client/future/OpenFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/client/future/OpenFuture;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->OPENED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->CLOSED:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->isEofSignalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EOF:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_STATUS:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 312
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_SIGNAL:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    return-object p1
.end method

.method public waitFor(Ljava/util/Collection;J)Ljava/util/Set;
    .locals 24
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;J)",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/channel/ClientChannelEvent;",
            ">;"
        }
    .end annotation

    .line 207
    .local p1, "mask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "No mask specified"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 209
    .local v3, "debugEnabled":Z
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    .line 210
    .local v4, "traceEnabled":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 215
    .local v5, "startTime":J
    iget-object v7, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->futureLock:Ljava/lang/Object;

    monitor-enter v7

    .line 216
    move-wide/from16 v8, p2

    .line 217
    .local v8, "remWait":J
    :try_start_0
    const-class v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    move-object v10, v0

    .line 218
    .local v10, "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    :goto_0
    invoke-virtual {v1, v10}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->updateCurrentChannelState(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 219
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-eqz v3, :cond_1

    .line 220
    :try_start_1
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_STATUS:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v15, "waitFor({}) mask={} - exit status={}"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    aput-object v2, v11, v12

    iget-object v12, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitStatusHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v16, 0x2

    aput-object v12, v11, v16

    invoke-interface {v0, v15, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_0
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->EXIT_SIGNAL:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v11, "waitFor({}) mask={} - exit signal={}"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v1, v12, v13

    const/4 v15, 0x1

    aput-object v2, v12, v15

    iget-object v15, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->exitSignalHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v16, 0x2

    aput-object v15, v12, v16

    invoke-interface {v0, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 285
    .end local v8    # "remWait":J
    .end local v10    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    :catchall_0
    move-exception v0

    move/from16 v19, v3

    move/from16 v22, v4

    goto/16 :goto_4

    .line 228
    .restart local v8    # "remWait":J
    .restart local v10    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v2, v10}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v11, v0

    .line 229
    .local v11, "nothingInCommon":Z
    if-nez v11, :cond_3

    .line 230
    if-eqz v4, :cond_2

    .line 231
    :try_start_3
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "waitFor({}) call returning mask={}, cond={}"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v13

    const/4 v13, 0x1

    aput-object v2, v14, v13

    const/4 v13, 0x2

    aput-object v10, v14, v13

    invoke-interface {v0, v12, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_2
    monitor-exit v7

    return-object v10

    .line 236
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v0, p2, v18

    if-lez v0, :cond_6

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 238
    .local v20, "now":J
    sub-long v22, v20, v5

    .line 239
    .local v22, "usedTime":J
    cmp-long v0, v22, p2

    if-gez v0, :cond_4

    cmp-long v0, v8, v18

    if-gtz v0, :cond_6

    .line 240
    :cond_4
    if-eqz v4, :cond_5

    .line 241
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v15, "waitFor({}) call timeout {}/{} for mask={}: {}"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v13

    .line 242
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v12, v17

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v12, v16

    aput-object v2, v12, v14

    const/4 v13, 0x4

    aput-object v10, v12, v13

    .line 241
    invoke-interface {v0, v15, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_5
    sget-object v0, Lorg/apache/sshd/client/channel/ClientChannelEvent;->TIMEOUT:Lorg/apache/sshd/client/channel/ClientChannelEvent;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v7

    return-object v10

    .line 249
    .end local v20    # "now":J
    .end local v22    # "usedTime":J
    :cond_6
    if-eqz v4, :cond_7

    .line 250
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "waitFor({}) waiting {} millis for lock - mask={}, cond={}"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v13

    .line 251
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v17, 0x1

    aput-object v20, v15, v17

    const/16 v16, 0x2

    aput-object v2, v15, v16

    aput-object v10, v15, v14

    .line 250
    invoke-interface {v0, v12, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :cond_7
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 256
    .local v20, "nanoStart":J
    cmp-long v0, p2, v18

    if-lez v0, :cond_8

    .line 257
    :try_start_5
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->futureLock:Ljava/lang/Object;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 259
    :cond_8
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->futureLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 262
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 263
    .local v22, "nanoEnd":J
    sub-long v13, v22, v20

    .line 264
    .local v13, "nanoDuration":J
    if-eqz v4, :cond_9

    .line 265
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;

    const-string/jumbo v12, "waitFor({}) lock notified on channel after {} nanos"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v0, v12, v1, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    :cond_9
    cmp-long v0, p2, v18

    if-lez v0, :cond_b

    .line 269
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-virtual {v0, v13, v14, v12}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v15
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    .local v15, "waitDuration":J
    cmp-long v0, v15, v18

    if-gtz v0, :cond_a

    .line 272
    const-wide/16 v15, 0x7b

    .line 274
    :cond_a
    sub-long/2addr v8, v15

    .line 283
    .end local v13    # "nanoDuration":J
    .end local v15    # "waitDuration":J
    .end local v22    # "nanoEnd":J
    :cond_b
    move/from16 v19, v3

    move/from16 v22, v4

    goto :goto_3

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 278
    .local v12, "nanoEnd":J
    sub-long v14, v12, v20

    .line 279
    .local v14, "nanoDuration":J
    if-eqz v4, :cond_c

    .line 280
    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .local v18, "e":Ljava/lang/InterruptedException;
    iget-object v0, v1, Lorg/apache/sshd/client/channel/AbstractClientChannel;->log:Lorg/slf4j/Logger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v19, v3

    .end local v3    # "debugEnabled":Z
    .local v19, "debugEnabled":Z
    :try_start_7
    const-string/jumbo v3, "waitFor({}) mask={} - ignoring interrupted exception after {} nanos"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v22, v4

    const/4 v4, 0x3

    .end local v4    # "traceEnabled":Z
    .local v22, "traceEnabled":Z
    :try_start_8
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v1, v4, v23

    const/16 v17, 0x1

    aput-object v2, v4, v17

    .line 281
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v4, v16

    .line 280
    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 285
    .end local v8    # "remWait":J
    .end local v10    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    .end local v11    # "nothingInCommon":Z
    .end local v12    # "nanoEnd":J
    .end local v14    # "nanoDuration":J
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .end local v20    # "nanoStart":J
    .end local v22    # "traceEnabled":Z
    .restart local v4    # "traceEnabled":Z
    :catchall_1
    move-exception v0

    move/from16 v22, v4

    .end local v4    # "traceEnabled":Z
    .restart local v22    # "traceEnabled":Z
    goto :goto_4

    .line 279
    .end local v19    # "debugEnabled":Z
    .end local v22    # "traceEnabled":Z
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "debugEnabled":Z
    .restart local v4    # "traceEnabled":Z
    .restart local v8    # "remWait":J
    .restart local v10    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    .restart local v11    # "nothingInCommon":Z
    .restart local v12    # "nanoEnd":J
    .restart local v14    # "nanoDuration":J
    .restart local v20    # "nanoStart":J
    :cond_c
    move-object/from16 v18, v0

    move/from16 v19, v3

    move/from16 v22, v4

    .line 217
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "debugEnabled":Z
    .end local v4    # "traceEnabled":Z
    .end local v11    # "nothingInCommon":Z
    .end local v12    # "nanoEnd":J
    .end local v14    # "nanoDuration":J
    .end local v20    # "nanoStart":J
    .restart local v19    # "debugEnabled":Z
    .restart local v22    # "traceEnabled":Z
    :goto_3
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    move/from16 v3, v19

    move/from16 v4, v22

    goto/16 :goto_0

    .line 285
    .end local v8    # "remWait":J
    .end local v10    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/channel/ClientChannelEvent;>;"
    .end local v19    # "debugEnabled":Z
    .end local v22    # "traceEnabled":Z
    .restart local v3    # "debugEnabled":Z
    .restart local v4    # "traceEnabled":Z
    :catchall_2
    move-exception v0

    move/from16 v19, v3

    move/from16 v22, v4

    .end local v3    # "debugEnabled":Z
    .end local v4    # "traceEnabled":Z
    .restart local v19    # "debugEnabled":Z
    .restart local v22    # "traceEnabled":Z
    :goto_4
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

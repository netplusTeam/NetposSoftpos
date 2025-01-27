.class public Lio/netty/handler/flush/FlushConsolidationHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "FlushConsolidationHandler.java"


# static fields
.field public static final DEFAULT_EXPLICIT_FLUSH_AFTER_FLUSHES:I = 0x100


# instance fields
.field private final consolidateWhenNoReadInProgress:Z

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final explicitFlushAfterFlushes:I

.field private flushPendingCount:I

.field private final flushTask:Ljava/lang/Runnable;

.field private nextScheduledFlush:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private readInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "explicitFlushAfterFlushes"    # I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    .line 89
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "explicitFlushAfterFlushes"    # I
    .param p2, "consolidateWhenNoReadInProgress"    # Z

    .line 98
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 99
    nop

    .line 100
    const-string v0, "explicitFlushAfterFlushes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    .line 101
    iput-boolean p2, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    .line 102
    if-eqz p2, :cond_0

    new-instance v0, Lio/netty/handler/flush/FlushConsolidationHandler$1;

    invoke-direct {v0, p0}, Lio/netty/handler/flush/FlushConsolidationHandler$1;-><init>(Lio/netty/handler/flush/FlushConsolidationHandler;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/flush/FlushConsolidationHandler;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/flush/FlushConsolidationHandler;

    .line 59
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return v0
.end method

.method static synthetic access$002(Lio/netty/handler/flush/FlushConsolidationHandler;I)I
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/flush/FlushConsolidationHandler;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return p1
.end method

.method static synthetic access$100(Lio/netty/handler/flush/FlushConsolidationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/flush/FlushConsolidationHandler;

    .line 59
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    return v0
.end method

.method static synthetic access$202(Lio/netty/handler/flush/FlushConsolidationHandler;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/flush/FlushConsolidationHandler;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 59
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$300(Lio/netty/handler/flush/FlushConsolidationHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/flush/FlushConsolidationHandler;

    .line 59
    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private cancelScheduledFlush()V
    .locals 2

    .line 215
    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    .line 219
    :cond_0
    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 196
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    if-lez v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    .line 199
    :cond_0
    return-void
.end method

.method private flushNow(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 202
    invoke-direct {p0}, Lio/netty/handler/flush/FlushConsolidationHandler;->cancelScheduledFlush()V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    .line 204
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 205
    return-void
.end method

.method private resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    .line 192
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 193
    return-void
.end method

.method private scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 208
    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 210
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    .line 152
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 153
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 146
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 147
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 182
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 183
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 173
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 174
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 166
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 167
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 159
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 160
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    if-eqz v0, :cond_0

    .line 126
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_3

    .line 127
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    if-eqz v0, :cond_2

    .line 131
    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_1

    .line 132
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    .line 140
    :cond_3
    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 119
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 188
    return-void
.end method

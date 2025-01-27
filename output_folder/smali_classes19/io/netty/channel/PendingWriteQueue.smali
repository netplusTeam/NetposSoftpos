.class public final Lio/netty/channel/PendingWriteQueue;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingWriteQueue$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PENDING_WRITE_OVERHEAD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private bytes:J

.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private size:I

.field private tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private final tracker:Lio/netty/channel/PendingBytesTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    nop

    .line 33
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 38
    const/16 v0, 0x40

    .line 39
    const-string v1, "io.netty.transport.pendingWriteSizeOverhead"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/PendingBytesTracker;->newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    .line 52
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 53
    return-void
.end method

.method private assertEmpty()V
    .locals 1

    .line 203
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V
    .locals 8
    .param p1, "write"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .param p2, "update"    # Z

    .line 256
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 257
    .local v0, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v1

    .line 259
    .local v1, "writeSize":J
    if-eqz p2, :cond_2

    .line 260
    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    .line 263
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v5, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 264
    const/4 v5, 0x0

    iput v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 265
    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    goto :goto_0

    .line 267
    :cond_0
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 268
    iget v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 269
    iget-wide v6, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    sub-long/2addr v6, v1

    iput-wide v6, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 270
    if-lez v5, :cond_1

    cmp-long v3, v6, v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 274
    :cond_2
    :goto_0
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$400(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 275
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {v3, v1, v2}, Lio/netty/channel/PendingBytesTracker;->decrementPendingOutboundBytes(J)V

    .line 276
    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 279
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    sget-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    :cond_0
    return-void
.end method

.method private size(Ljava/lang/Object;)I
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-virtual {v0, p1}, Lio/netty/channel/PendingBytesTracker;->size(Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, "messageSize":I
    if-gez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :cond_0
    sget v1, Lio/netty/channel/PendingWriteQueue;->PENDING_WRITE_OVERHEAD:I

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 95
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "msg"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-direct {p0, p1}, Lio/netty/channel/PendingWriteQueue;->size(Ljava/lang/Object;)I

    move-result v0

    .line 102
    .local v0, "messageSize":I
    invoke-static {p1, v0, p2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v1

    .line 103
    .local v1, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 104
    .local v2, "currentTail":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v2, :cond_0

    .line 105
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v2, v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$002(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 108
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 110
    :goto_0
    iget v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 111
    iget-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 112
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$100(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/netty/channel/PendingBytesTracker;->incrementPendingOutboundBytes(J)V

    .line 113
    return-void

    .line 95
    .end local v0    # "messageSize":I
    .end local v1    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v2    # "currentTail":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bytes()J
    .locals 2

    .line 76
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-wide v0, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    return-wide v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public current()Ljava/lang/Object;
    .locals 2

    .line 247
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 249
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 250
    const/4 v1, 0x0

    return-object v1

    .line 252
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 247
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public remove()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 232
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 234
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 235
    const/4 v1, 0x0

    return-object v1

    .line 237
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 238
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 239
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 240
    return-object v1

    .line 232
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndFail(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 189
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 193
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 197
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 198
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v1, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 199
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 200
    return-void

    .line 189
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndFailAll(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 164
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 171
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 172
    :goto_1
    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v2

    .line 174
    .local v2, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 175
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v3

    .line 176
    .local v3, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v0, v1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 177
    invoke-static {v3, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 178
    move-object v0, v2

    .line 179
    .end local v2    # "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v3    # "promise":Lio/netty/channel/ChannelPromise;
    goto :goto_1

    .line 168
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0

    .line 181
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_1
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    .line 182
    return-void

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndWrite()Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 214
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 216
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 219
    :cond_0
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "msg":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v2

    .line 221
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 222
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3, v1, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    return-object v3

    .line 214
    .end local v0    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v1    # "msg":Ljava/lang/Object;
    .end local v2    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeAndWriteAll()Lio/netty/channel/ChannelFuture;
    .locals 9

    .line 123
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lio/netty/channel/PendingWriteQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    return-object v1

    .line 129
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 130
    .local v0, "p":Lio/netty/channel/ChannelPromise;
    new-instance v2, Lio/netty/util/concurrent/PromiseCombiner;

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 134
    .local v2, "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .local v3, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :goto_0
    if-eqz v3, :cond_3

    .line 135
    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 136
    const/4 v4, 0x0

    iput v4, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 137
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lio/netty/channel/PendingWriteQueue;->bytes:J

    .line 139
    :goto_1
    if-eqz v3, :cond_2

    .line 140
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$000(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v5

    .line 141
    .local v5, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$200(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v6

    .line 142
    .local v6, "msg":Ljava/lang/Object;
    invoke-static {v3}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$300(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v7

    .line 143
    .local v7, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v3, v4}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;Z)V

    .line 144
    instance-of v8, v7, Lio/netty/channel/VoidChannelPromise;

    if-nez v8, :cond_1

    .line 145
    invoke-virtual {v2, v7}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Promise;)V

    .line 147
    :cond_1
    iget-object v8, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v8, v6, v7}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 148
    move-object v3, v5

    .line 149
    .end local v5    # "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    .end local v6    # "msg":Ljava/lang/Object;
    .end local v7    # "promise":Lio/netty/channel/ChannelPromise;
    goto :goto_1

    .line 134
    :cond_2
    iget-object v4, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-object v3, v4

    goto :goto_0

    .line 151
    .end local v3    # "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :cond_3
    invoke-virtual {v2, v0}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 155
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_2
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    .line 156
    return-object v0

    .line 123
    .end local v0    # "p":Lio/netty/channel/ChannelPromise;
    .end local v2    # "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.class public Lio/netty/channel/pool/FixedChannelPool;
.super Lio/netty/channel/pool/SimpleChannelPool;
.source "FixedChannelPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/pool/FixedChannelPool$AcquireListener;,
        Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;,
        Lio/netty/channel/pool/FixedChannelPool$AcquireTask;,
        Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acquireTimeoutNanos:J

.field private final acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private closed:Z

.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final maxConnections:I

.field private final maxPendingAcquires:I

.field private pendingAcquireCount:I

.field private final pendingAcquireQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/pool/FixedChannelPool$AcquireTask;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;I)V
    .locals 1
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "maxConnections"    # I

    .line 77
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;II)V
    .locals 9
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "maxConnections"    # I
    .param p4, "maxPendingAcquires"    # I

    .line 93
    sget-object v3, Lio/netty/channel/pool/ChannelHealthChecker;->ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JII)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JII)V
    .locals 10
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;
    .param p4, "action"    # Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;
    .param p5, "acquireTimeoutMillis"    # J
    .param p7, "maxConnections"    # I
    .param p8, "maxPendingAcquires"    # I

    .line 118
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZ)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZ)V
    .locals 11
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;
    .param p4, "action"    # Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;
    .param p5, "acquireTimeoutMillis"    # J
    .param p7, "maxConnections"    # I
    .param p8, "maxPendingAcquires"    # I
    .param p9, "releaseHealthCheck"    # Z

    .line 145
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZZ)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZZ)V
    .locals 11
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;
    .param p4, "action"    # Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;
    .param p5, "acquireTimeoutMillis"    # J
    .param p7, "maxConnections"    # I
    .param p8, "maxPendingAcquires"    # I
    .param p9, "releaseHealthCheck"    # Z
    .param p10, "lastRecentUsed"    # Z

    .line 175
    move-object v6, p0

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    const-string v0, " (expected: >= 1)"

    const/4 v1, 0x1

    if-lt v9, v1, :cond_6

    .line 179
    if-lt v10, v1, :cond_5

    .line 182
    const-wide/16 v0, -0x1

    if-nez p4, :cond_0

    cmp-long v2, v7, v0

    if-nez v2, :cond_0

    .line 183
    const/4 v2, 0x0

    iput-object v2, v6, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    .line 184
    iput-wide v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    goto :goto_2

    .line 185
    :cond_0
    if-nez p4, :cond_2

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_4
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    .line 191
    sget-object v0, Lio/netty/channel/pool/FixedChannelPool$7;->$SwitchMap$io$netty$channel$pool$FixedChannelPool$AcquireTimeoutAction:[I

    invoke-virtual {p4}, Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 208
    :pswitch_0
    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$2;

    invoke-direct {v0, p0}, Lio/netty/channel/pool/FixedChannelPool$2;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    .line 218
    goto :goto_2

    .line 193
    :pswitch_1
    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$1;

    invoke-direct {v0, p0}, Lio/netty/channel/pool/FixedChannelPool$1;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    .line 206
    nop

    .line 223
    :goto_2
    invoke-virtual {p1}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 224
    iput v9, v6, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    .line 225
    iput v10, v6, Lio/netty/channel/pool/FixedChannelPool;->maxPendingAcquires:I

    .line 226
    return-void

    .line 180
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxPendingAcquires: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxConnections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$101(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;
    .param p1, "x1"    # Lio/netty/util/concurrent/Promise;

    .line 40
    invoke-super {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->close0()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1201(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    invoke-super {p0}, Lio/netty/channel/pool/SimpleChannelPool;->close()V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;
    .param p1, "x1"    # Lio/netty/util/concurrent/Promise;

    .line 40
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->acquire0(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/EventExecutor;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/channel/pool/FixedChannelPool;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    return v0
.end method

.method static synthetic access$500(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->decrementAndRunTaskQueue()V

    return-void
.end method

.method static synthetic access$600(Lio/netty/channel/pool/FixedChannelPool;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget-wide v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$700(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$806(Lio/netty/channel/pool/FixedChannelPool;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    return v0
.end method

.method static synthetic access$900(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/FixedChannelPool;

    .line 40
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->runTaskQueue()V

    return-void
.end method

.method private acquire0(Lio/netty/util/concurrent/Promise;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FixedChannelPool was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    if-ge v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_1

    .line 264
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 265
    .local v0, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    .line 266
    .local v1, "l":Lio/netty/channel/pool/FixedChannelPool$AcquireListener;
    invoke-virtual {v1}, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired()V

    .line 267
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 268
    invoke-super {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 269
    .end local v0    # "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    .end local v1    # "l":Lio/netty/channel/pool/FixedChannelPool$AcquireListener;
    goto :goto_1

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 270
    :cond_2
    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxPendingAcquires:I

    if-lt v0, v1, :cond_3

    .line 271
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->tooManyOutstanding(Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 273
    :cond_3
    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    .line 274
    .local v0, "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    .line 277
    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 278
    iget-object v2, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    iget-wide v3, p0, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 281
    :cond_4
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->tooManyOutstanding(Lio/netty/util/concurrent/Promise;)V

    .line 285
    .end local v0    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    :cond_5
    :goto_0
    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    if-lez v0, :cond_6

    .line 287
    :goto_1
    return-void

    .line 285
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 253
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private close0()Lio/netty/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    if-nez v0, :cond_2

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    .line 489
    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    .line 490
    .local v0, "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    nop

    .line 499
    .end local v0    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 500
    iput v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    .line 504
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$6;

    invoke-direct {v1, p0}, Lio/netty/channel/pool/FixedChannelPool$6;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 493
    .restart local v0    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    :cond_0
    iget-object v2, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 494
    .local v2, "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 497
    :cond_1
    iget-object v1, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->promise:Lio/netty/util/concurrent/Promise;

    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 498
    .end local v0    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    .end local v2    # "f":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 513
    :cond_2
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 484
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private decrementAndRunTaskQueue()V
    .locals 2

    .line 328
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 329
    .local v0, "currentCount":I
    if-ltz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->runTaskQueue()V

    .line 336
    return-void

    .line 329
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private runTaskQueue()V
    .locals 3

    .line 339
    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    if-ge v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    .line 341
    .local v0, "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    if-nez v0, :cond_0

    .line 342
    goto :goto_1

    .line 346
    :cond_0
    iget-object v1, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 347
    .local v1, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v1, :cond_1

    .line 348
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 351
    :cond_1
    iget v2, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    .line 352
    invoke-virtual {v0}, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->acquired()V

    .line 354
    iget-object v2, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->promise:Lio/netty/util/concurrent/Promise;

    invoke-super {p0, v2}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 355
    .end local v0    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    .end local v1    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 358
    :cond_2
    :goto_1
    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    if-ltz v0, :cond_4

    .line 359
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_3

    .line 360
    return-void

    .line 359
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private tooManyOutstanding(Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;)V"
        }
    .end annotation

    .line 290
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<*>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many outstanding acquire operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 291
    return-void
.end method


# virtual methods
.method public acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 236
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->acquire0(Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$3;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    goto :goto_1

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 249
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-object p1
.end method

.method public acquiredChannelCount()I
    .locals 1

    .line 230
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 446
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/pool/FixedChannelPool;->closeAsync()Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    nop

    .line 451
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 449
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeAsync()Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->close0()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 464
    .local v0, "closeComplete":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    new-instance v2, Lio/netty/channel/pool/FixedChannelPool$5;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/pool/FixedChannelPool$5;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 479
    return-object v0
.end method

.method public release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 295
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    .line 297
    .local v0, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/FixedChannelPool$4;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 323
    return-object p2
.end method

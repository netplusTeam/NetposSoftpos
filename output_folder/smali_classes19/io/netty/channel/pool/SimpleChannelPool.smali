.class public Lio/netty/channel/pool/SimpleChannelPool;
.super Ljava/lang/Object;
.source "SimpleChannelPool.java"

# interfaces
.implements Lio/netty/channel/pool/ChannelPool;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final POOL_KEY:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Lio/netty/channel/pool/SimpleChannelPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bootstrap:Lio/netty/bootstrap/Bootstrap;

.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lio/netty/channel/pool/ChannelPoolHandler;

.field private final healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

.field private final lastRecentUsed:Z

.field private final releaseHealthCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    nop

    .line 44
    nop

    .line 45
    const-string v0, "io.netty.channel.pool.SimpleChannelPool"

    invoke-static {v0}, Lio/netty/util/AttributeKey;->newInstance(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    .line 44
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;)V
    .locals 1
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;

    .line 60
    sget-object v0, Lio/netty/channel/pool/ChannelHealthChecker;->ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;)V
    .locals 1
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Z)V
    .locals 6
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;
    .param p4, "releaseHealthCheck"    # Z

    .line 87
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V
    .locals 2
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;
    .param p2, "handler"    # Lio/netty/channel/pool/ChannelPoolHandler;
    .param p3, "healthCheck"    # Lio/netty/channel/pool/ChannelHealthChecker;
    .param p4, "releaseHealthCheck"    # Z
    .param p5, "lastRecentUsed"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentDeque()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    .line 103
    const-string v0, "handler"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPoolHandler;

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    .line 104
    const-string v0, "healthCheck"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelHealthChecker;

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    .line 105
    iput-boolean p4, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    .line 107
    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 108
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$1;

    invoke-direct {v1, p0, p2}, Lio/netty/channel/pool/SimpleChannelPool$1;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/pool/ChannelPoolHandler;)V

    invoke-virtual {v0, v1}, Lio/netty/bootstrap/Bootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 115
    iput-boolean p5, p0, Lio/netty/channel/pool/SimpleChannelPool;->lastRecentUsed:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/SimpleChannelPool;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/SimpleChannelPool;
    .param p1, "x1"    # Lio/netty/channel/Channel;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/SimpleChannelPool;
    .param p1, "x1"    # Lio/netty/util/concurrent/Future;
    .param p2, "x2"    # Lio/netty/channel/Channel;
    .param p3, "x3"    # Lio/netty/util/concurrent/Promise;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/pool/SimpleChannelPool;->notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/SimpleChannelPool;
    .param p1, "x1"    # Lio/netty/channel/Channel;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/pool/SimpleChannelPool;
    .param p1, "x1"    # Lio/netty/channel/Channel;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;
    .param p3, "x3"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 4
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

    .line 172
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/pool/SimpleChannelPool;->pollChannel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 173
    .local v0, "ch":Lio/netty/channel/Channel;
    if-nez v0, :cond_1

    .line 175
    iget-object v1, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v1}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v1

    .line 176
    .local v1, "bs":Lio/netty/bootstrap/Bootstrap;
    sget-object v2, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-virtual {v1, v2, p0}, Lio/netty/bootstrap/Bootstrap;->attr(Lio/netty/util/AttributeKey;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 177
    invoke-virtual {p0, v1}, Lio/netty/channel/pool/SimpleChannelPool;->connectChannel(Lio/netty/bootstrap/Bootstrap;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    .line 178
    .local v2, "f":Lio/netty/channel/ChannelFuture;
    invoke-interface {v2}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-direct {p0, v2, p1}, Lio/netty/channel/pool/SimpleChannelPool;->notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v3, Lio/netty/channel/pool/SimpleChannelPool$2;

    invoke-direct {v3, p0, p1}, Lio/netty/channel/pool/SimpleChannelPool$2;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 188
    :goto_0
    return-object p1

    .line 190
    .end local v1    # "bs":Lio/netty/bootstrap/Bootstrap;
    .end local v2    # "f":Lio/netty/channel/ChannelFuture;
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    .line 191
    .local v1, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    invoke-direct {p0, v0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_1

    .line 194
    :cond_2
    new-instance v2, Lio/netty/channel/pool/SimpleChannelPool$3;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/pool/SimpleChannelPool$3;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v0    # "ch":Lio/netty/channel/Channel;
    .end local v1    # "loop":Lio/netty/channel/EventLoop;
    :goto_1
    goto :goto_2

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 204
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2
    return-object p1
.end method

.method private closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/concurrent/Promise<",
            "*>;)V"
        }
    .end annotation

    .line 368
    .local p3, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<*>;"
    invoke-direct {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->closeChannel(Lio/netty/channel/Channel;)V

    .line 369
    invoke-interface {p3, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 370
    return-void
.end method

.method private closeChannel(Lio/netty/channel/Channel;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 363
    sget-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p1, v0}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 365
    return-void
.end method

.method private doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "ch"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelHealthChecker;->isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 224
    .local v0, "f":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool$4;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 234
    :goto_0
    return-void

    .line 221
    .end local v0    # "f":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private doHealthCheckOnRelease(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelHealthChecker;->isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 319
    .local v0, "f":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    .line 322
    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool$6;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 329
    :goto_0
    return-void
.end method

.method private doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    sget-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p1, v0}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not acquired from this ChannelPool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    goto :goto_1

    .line 306
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheckOnRelease(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    .line 315
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 296
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelFuture;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 210
    .local v0, "channel":Lio/netty/channel/Channel;
    iget-object v1, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {v1, v0}, Lio/netty/channel/pool/ChannelPoolHandler;->channelAcquired(Lio/netty/channel/Channel;)V

    .line 211
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    .line 215
    .end local v0    # "channel":Lio/netty/channel/Channel;
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 218
    :goto_0
    return-void
.end method

.method private notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .param p2, "ch"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .local p3, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    invoke-interface {p2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    sget-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p2, v0}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {v0, p2}, Lio/netty/channel/pool/ChannelPoolHandler;->channelAcquired(Lio/netty/channel/Channel;)V

    .line 244
    invoke-interface {p3, p2}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p2, v0, p3}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    .line 247
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 249
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeChannel(Lio/netty/channel/Channel;)V

    .line 250
    invoke-direct {p0, p3}, Lio/netty/channel/pool/SimpleChannelPool;->acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    goto :goto_1

    .line 253
    :cond_1
    invoke-direct {p0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeChannel(Lio/netty/channel/Channel;)V

    .line 254
    invoke-direct {p0, p3}, Lio/netty/channel/pool/SimpleChannelPool;->acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 256
    :goto_1
    return-void

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->offerChannel(Lio/netty/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelPoolHandler;->channelReleased(Lio/netty/channel/Channel;)V

    .line 351
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Lio/netty/channel/pool/SimpleChannelPool$7;

    const-string v1, "ChannelPool full"

    invoke-direct {v0, p0, v1}, Lio/netty/channel/pool/SimpleChannelPool$7;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    .line 360
    :goto_0
    return-void
.end method

.method private releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    .local p3, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelPoolHandler;->channelReleased(Lio/netty/channel/Channel;)V

    .line 344
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 346
    :goto_0
    return-void
.end method


# virtual methods
.method public final acquire()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/BootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
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

    .line 162
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Lio/netty/channel/Channel;>;"
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/Promise;

    invoke-direct {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected bootstrap()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    .line 124
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 397
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/pool/SimpleChannelPool;->pollChannel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 398
    .local v0, "channel":Lio/netty/channel/Channel;
    if-nez v0, :cond_0

    .line 399
    nop

    .line 404
    .end local v0    # "channel":Lio/netty/channel/Channel;
    return-void

    .line 402
    .restart local v0    # "channel":Lio/netty/channel/Channel;
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    .line 403
    .end local v0    # "channel":Lio/netty/channel/Channel;
    goto :goto_0
.end method

.method public closeAsync()Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 413
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$8;

    invoke-direct {v1, p0}, Lio/netty/channel/pool/SimpleChannelPool$8;-><init>(Lio/netty/channel/pool/SimpleChannelPool;)V

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/GlobalEventExecutor;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected connectChannel(Lio/netty/bootstrap/Bootstrap;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "bs"    # Lio/netty/bootstrap/Bootstrap;

    .line 265
    invoke-virtual {p1}, Lio/netty/bootstrap/Bootstrap;->connect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected handler()Lio/netty/channel/pool/ChannelPoolHandler;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    return-object v0
.end method

.method protected healthChecker()Lio/netty/channel/pool/ChannelHealthChecker;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    return-object v0
.end method

.method protected offerChannel(Lio/netty/channel/Channel;)Z
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 391
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected pollChannel()Lio/netty/channel/Channel;
    .locals 1

    .line 380
    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->lastRecentUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method

.method public final release(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

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

    .line 275
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 279
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$5;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool$5;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v0    # "loop":Lio/netty/channel/EventLoop;
    :goto_0
    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    .line 290
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    .line 292
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-object p2
.end method

.method protected releaseHealthCheck()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    return v0
.end method

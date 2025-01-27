.class abstract Lio/netty/channel/AbstractChannelHandlerContext;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Lio/netty/channel/ChannelHandlerContext;
.implements Lio/netty/util/ResourceLeakHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AbstractChannelHandlerContext$Tasks;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADD_COMPLETE:I = 0x2

.field private static final ADD_PENDING:I = 0x1

.field private static final HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/AbstractChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT:I = 0x0

.field private static final REMOVE_COMPLETE:I = 0x3

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executionMask:I

.field final executor:Lio/netty/util/concurrent/EventExecutor;

.field private volatile handlerState:I

.field private invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

.field private final name:Ljava/lang/String;

.field volatile next:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final ordered:Z

.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;

.field volatile prev:Lio/netty/channel/AbstractChannelHandlerContext;

.field private succeededFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lio/netty/channel/AbstractChannelHandlerContext;

    .line 63
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 67
    nop

    .line 68
    const-string v1, "handlerState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 67
    return-void
.end method

.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/DefaultChannelPipeline;",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p4, "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/channel/ChannelHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 106
    const-string v1, "name"

    invoke-static {p3, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 108
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 109
    invoke-static {p4}, Lio/netty/channel/ChannelHandlerMask;->mask(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    .line 111
    if-eqz p2, :cond_0

    instance-of v1, p2, Lio/netty/util/concurrent/OrderedEventExecutor;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->ordered:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    return-void
.end method

.method static synthetic access$1000(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Ljava/net/SocketAddress;
    .param p3, "x3"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1100(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1200(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1300(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$1700(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/DefaultChannelPipeline;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method static synthetic access$1900(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    return-void
.end method

.method static synthetic access$2000(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    return-void
.end method

.method static synthetic access$2100(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    return-void
.end method

.method static synthetic access$2200(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 61
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    return-void
.end method

.method static synthetic access$400(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "x1"    # Ljava/net/SocketAddress;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 61
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .param p1, "mask"    # I

    .line 910
    move-object v0, p0

    .line 911
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 913
    .local v1, "currentExecutor":Lio/netty/util/concurrent/EventExecutor;
    :goto_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 914
    const/16 v2, 0x1fe

    invoke-static {v0, v1, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    return-object v0

    .line 914
    :cond_0
    goto :goto_0
.end method

.method private findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .param p1, "mask"    # I

    .line 919
    move-object v0, p0

    .line 920
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 922
    .local v1, "currentExecutor":Lio/netty/util/concurrent/EventExecutor;
    :goto_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 923
    const v2, 0x1fe00

    invoke-static {v0, v1, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    return-object v0

    .line 923
    :cond_0
    goto :goto_0
.end method

.method private static inExceptionCaught(Ljava/lang/Throwable;)Z
    .locals 7
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 832
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 833
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 834
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 835
    .local v4, "t":Ljava/lang/StackTraceElement;
    if-nez v4, :cond_0

    .line 836
    goto :goto_2

    .line 838
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "exceptionCaught"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 839
    const/4 v1, 0x1

    return v1

    .line 834
    .end local v4    # "t":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 844
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 845
    .end local v0    # "trace":[Ljava/lang/StackTraceElement;
    if-nez p0, :cond_3

    .line 847
    return v1

    .line 845
    :cond_3
    goto :goto_0
.end method

.method private invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 504
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 509
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 511
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 513
    :goto_1
    return-void
.end method

.method private invokeChannelActive()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 237
    :goto_1
    return-void
.end method

.method static invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 214
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 215
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$3;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 225
    :goto_0
    return-void
.end method

.method private invokeChannelInactive()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 265
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 269
    :goto_1
    return-void
.end method

.method static invokeChannelInactive(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 246
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 247
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$4;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 257
    :goto_0
    return-void
.end method

.method static invokeChannelRead(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "msg"    # Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    const-string v1, "msg"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lio/netty/channel/DefaultChannelPipeline;->touch(Ljava/lang/Object;Lio/netty/channel/AbstractChannelHandlerContext;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "m":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 364
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$7;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext$7;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 374
    :goto_0
    return-void
.end method

.method private invokeChannelRead(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 382
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 386
    :goto_1
    return-void
.end method

.method private invokeChannelReadComplete()V
    .locals 1

    .line 408
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    .line 412
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 413
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 417
    :goto_1
    return-void
.end method

.method static invokeChannelReadComplete(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 395
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 396
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 400
    .local v1, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v1, :cond_1

    .line 401
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v1, v2

    iput-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 403
    :cond_1
    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$700(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 405
    .end local v1    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-void
.end method

.method private invokeChannelRegistered()V
    .locals 1

    .line 164
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 169
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 173
    :goto_1
    return-void
.end method

.method static invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 150
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 151
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$1;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    :goto_0
    return-void
.end method

.method private invokeChannelUnregistered()V
    .locals 1

    .line 196
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    .line 205
    :goto_1
    return-void
.end method

.method static invokeChannelUnregistered(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 182
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 183
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    goto :goto_0

    .line 186
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$2;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 193
    :goto_0
    return-void
.end method

.method private invokeChannelWritabilityChanged()V
    .locals 1

    .line 439
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 444
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 446
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 448
    :goto_1
    return-void
.end method

.method static invokeChannelWritabilityChanged(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 3
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 426
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 427
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 431
    .local v1, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v1, :cond_1

    .line 432
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v2, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v1, v2

    iput-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 434
    :cond_1
    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 436
    .end local v1    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-void
.end method

.method private invokeClose(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 620
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    .line 624
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 625
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 629
    :goto_1
    return-void
.end method

.method private invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 546
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    .line 550
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 551
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 553
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 555
    :goto_1
    return-void
.end method

.method private invokeDeregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 655
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    .line 659
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 660
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 662
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 664
    :goto_1
    return-void
.end method

.method private invokeDisconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 585
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    .line 589
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 590
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 592
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 594
    :goto_1
    return-void
.end method

.method static invokeExceptionCaught(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 278
    const-string v0, "cause"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 280
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    :cond_0
    :try_start_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$5;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$5;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    const-string v3, "Failed to submit an exceptionCaught() event."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const-string v3, "The exceptionCaught() event that was failed to submit was:"

    invoke-interface {v2, v3, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private invokeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 300
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    :goto_0
    goto :goto_1

    .line 303
    :catchall_0
    move-exception v0

    .line 304
    .local v0, "error":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    nop

    .line 309
    invoke-static {v0}, Lio/netty/util/internal/ThrowableUtil;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 305
    const-string v3, "An exception {}was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const-string v2, "An exception \'{}\' [enable DEBUG level for full stacktrace] was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 320
    :goto_1
    return-void
.end method

.method private invokeFlush()V
    .locals 1

    .line 741
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush0()V

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 746
    :goto_0
    return-void
.end method

.method private invokeFlush0()V
    .locals 1

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    goto :goto_0

    .line 751
    :catchall_0
    move-exception v0

    .line 752
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 754
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private invokeHandler()Z
    .locals 3

    .line 997
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 998
    .local v0, "handlerState":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->ordered:Z

    if-nez v2, :cond_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private invokeRead()V
    .locals 1

    .line 684
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    .line 688
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 689
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 691
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 693
    :goto_1
    return-void
.end method

.method static invokeUserEventTriggered(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p0, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "event"    # Ljava/lang/Object;

    .line 329
    const-string v0, "event"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 331
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$6;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$6;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 341
    :goto_0
    return-void
.end method

.method private invokeUserEventTriggered(Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .line 344
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    .line 349
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 353
    :goto_1
    return-void
.end method

.method private invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    goto :goto_0

    .line 718
    :catchall_0
    move-exception v0

    .line 719
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    .line 721
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "allowVoidPromise"    # Z

    .line 875
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 877
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 882
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    return v1

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promise already done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/channel/DefaultChannelPromise;

    if-ne v0, v1, :cond_2

    .line 894
    return v3

    .line 897
    :cond_2
    if-nez p2, :cond_4

    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_3

    goto :goto_0

    .line 898
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/channel/VoidChannelPromise;

    .line 899
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed for this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_4
    :goto_0
    instance-of v0, p1, Lio/netty/channel/AbstractChannel$CloseFuture;

    if-nez v0, :cond_5

    .line 906
    return v3

    .line 903
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/netty/channel/AbstractChannel$CloseFuture;

    .line 904
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed in a pipeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 890
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 889
    const-string v1, "promise.channel does not match: %s (expected: %s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyHandlerException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 818
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->inExceptionCaught(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const-string v1, "An exception was thrown by a user handler while handling an exceptionCaught event"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 824
    :cond_0
    return-void

    .line 827
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 828
    return-void
.end method

.method private static notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 814
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :goto_0
    invoke-static {p1, p0, v0}, Lio/netty/util/internal/PromiseNotificationUtil;->tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 815
    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "msg"    # Ljava/lang/Object;
    .param p4, "lazy"    # Z

    .line 1019
    if-eqz p4, :cond_0

    :try_start_0
    instance-of v0, p0, Lio/netty/util/concurrent/AbstractEventExecutor;

    if-eqz v0, :cond_0

    .line 1020
    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/AbstractEventExecutor;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1022
    :cond_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1025
    :catchall_0
    move-exception v0

    .line 1027
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1029
    if-eqz p3, :cond_1

    .line 1030
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1033
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1029
    :catchall_1
    move-exception v1

    if-eqz p3, :cond_2

    .line 1030
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1032
    :cond_2
    throw v1
.end method

.method private static skipContext(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;II)Z
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "currentExecutor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "mask"    # I
    .param p3, "onlyMask"    # I

    .line 930
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    or-int v1, p3, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executionMask:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 930
    :goto_1
    return v0
.end method

.method private write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "flush"    # Z
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 772
    const-string v0, "msg"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 774
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    return-void

    .line 782
    :cond_0
    nop

    .line 784
    if-eqz p2, :cond_1

    const v0, 0x18000

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 786
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, p1, v0}, Lio/netty/channel/DefaultChannelPipeline;->touch(Ljava/lang/Object;Lio/netty/channel/AbstractChannelHandlerContext;)Ljava/lang/Object;

    move-result-object v1

    .line 787
    .local v1, "m":Ljava/lang/Object;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 788
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 789
    if-eqz p2, :cond_2

    .line 790
    invoke-virtual {v0, v1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWriteAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 792
    :cond_2
    invoke-virtual {v0, v1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 795
    :cond_3
    invoke-static {v0, v1, p3, p2}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;Z)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    move-result-object v3

    .line 796
    .local v3, "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v2, v3, p3, v1, v4}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 801
    invoke-virtual {v3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->cancel()V

    .line 804
    .end local v3    # "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    :cond_4
    :goto_1
    return-void

    .line 779
    .end local v0    # "next":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local v1    # "m":Ljava/lang/Object;
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 781
    throw v0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 1008
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 452
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 482
    const-string v0, "localAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    return-object p2

    .line 488
    :cond_0
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 489
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 490
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    invoke-direct {v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 493
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$8;

    invoke-direct {v3, p0, v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext$8;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 500
    :goto_0
    return-object p2
.end method

.method final callHandlerAdded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 973
    :cond_0
    return-void
.end method

.method final callHandlerRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 978
    :try_start_0
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 979
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    .line 984
    nop

    .line 985
    return-void

    .line 983
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->setRemoved()V

    .line 984
    throw v0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    return-object p1

    .line 603
    :cond_0
    const/16 v1, 0x1000

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 604
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 605
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 608
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$11;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$11;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 616
    :goto_0
    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 457
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 462
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 10
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 523
    const-string v0, "remoteAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    return-object p3

    .line 530
    :cond_0
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 531
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v8

    .line 532
    .local v8, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v8}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    invoke-direct {v1, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 535
    :cond_1
    new-instance v9, Lio/netty/channel/AbstractChannelHandlerContext$9;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lio/netty/channel/AbstractChannelHandlerContext$9;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    const/4 v2, 0x0

    invoke-static {v8, v9, p3, v2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 542
    :goto_0
    return-object p3
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    return-object p1

    .line 638
    :cond_0
    const/16 v1, 0x2000

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 639
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 640
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 643
    :cond_1
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$12;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$12;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 651
    :goto_0
    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 467
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 5
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 559
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->isNotValidPromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    return-object p1

    .line 569
    :cond_1
    const/16 v1, 0x800

    invoke-direct {p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 570
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 571
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 574
    :cond_2
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$10;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$10;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 581
    :goto_0
    return-object p1
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method public fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 209
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 210
    return-object p0
.end method

.method public bridge synthetic fireChannelActive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 241
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 242
    return-object p0
.end method

.method public bridge synthetic fireChannelInactive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 357
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 358
    return-object p0
.end method

.method public bridge synthetic fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 390
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 391
    return-object p0
.end method

.method public bridge synthetic fireChannelReadComplete()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 145
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 146
    return-object p0
.end method

.method public bridge synthetic fireChannelRegistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 178
    return-object p0
.end method

.method public bridge synthetic fireChannelUnregistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 421
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 422
    return-object p0
.end method

.method public bridge synthetic fireChannelWritabilityChanged()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 274
    return-object p0
.end method

.method public bridge synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .line 324
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 325
    return-object p0
.end method

.method public bridge synthetic fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public flush()Lio/netty/channel/ChannelHandlerContext;
    .locals 7

    .line 725
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 726
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 727
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    goto :goto_0

    .line 730
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 731
    .local v2, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v2, :cond_1

    .line 732
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v3, v0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v2, v3

    iput-object v3, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 734
    :cond_1
    invoke-static {v2}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$1500(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;Z)Z

    .line 737
    .end local v2    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1013
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->hasAttr(Lio/netty/util/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 708
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 713
    :goto_0
    return-void
.end method

.method invokeWriteAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 763
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite0(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 765
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush0()V

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 769
    :goto_0
    return-void
.end method

.method public isRemoved()Z
    .locals 2

    .line 1003
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 871
    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 3

    .line 857
    new-instance v0, Lio/netty/channel/DefaultChannelProgressivePromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelProgressivePromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 3

    .line 852
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 4

    .line 862
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 863
    .local v0, "succeededFuture":Lio/netty/channel/ChannelFuture;
    if-nez v0, :cond_0

    .line 864
    new-instance v1, Lio/netty/channel/SucceededChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/netty/channel/SucceededChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 866
    :cond_0
    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .line 668
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound(I)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 669
    .local v0, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 670
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v2, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 674
    .local v2, "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    if-nez v2, :cond_1

    .line 675
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {v3, v0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    move-object v2, v3

    iput-object v3, v0, Lio/netty/channel/AbstractChannelHandlerContext;->invokeTasks:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 677
    :cond_1
    invoke-static {v2}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$1400(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 680
    .end local v2    # "tasks":Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
    :goto_0
    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method final setAddComplete()Z
    .locals 3

    .line 949
    :goto_0
    iget v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 950
    .local v0, "oldState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 951
    const/4 v1, 0x0

    return v1

    .line 956
    :cond_0
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    const/4 v1, 0x1

    return v1

    .line 959
    .end local v0    # "oldState":I
    :cond_1
    goto :goto_0
.end method

.method final setAddPending()V
    .locals 3

    .line 963
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext;->HANDLER_STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    .line 964
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 965
    return-void

    .line 964
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method final setRemoved()V
    .locals 1

    .line 944
    const/4 v0, 0x3

    iput v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->handlerState:I

    .line 945
    return-void
.end method

.method public toHintString()Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' will handle the message from this point."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/netty/channel/ChannelHandlerContext;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 940
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 697
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    .line 704
    return-object p2
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 808
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 758
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    .line 759
    return-object p2
.end method

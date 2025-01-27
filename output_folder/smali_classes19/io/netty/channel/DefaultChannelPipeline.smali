.class public Lio/netty/channel/DefaultChannelPipeline;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lio/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;,
        Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;,
        Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;,
        Lio/netty/channel/DefaultChannelPipeline$HeadContext;,
        Lio/netty/channel/DefaultChannelPipeline$TailContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ESTIMATOR:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/channel/DefaultChannelPipeline;",
            "Lio/netty/channel/MessageSizeEstimator$Handle;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEAD_NAME:Ljava/lang/String;

.field private static final TAIL_NAME:Ljava/lang/String;

.field static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final nameCaches:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private childExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/concurrent/EventExecutorGroup;",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private volatile estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

.field private firstRegistration:Z

.field final head:Lio/netty/channel/AbstractChannelHandlerContext;

.field private pendingHandlerCallbackHead:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

.field private registered:Z

.field private final succeededFuture:Lio/netty/channel/ChannelFuture;

.field final tail:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final touch:Z

.field private final voidPromise:Lio/netty/channel/VoidChannelPromise;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const-class v0, Lio/netty/channel/DefaultChannelPipeline;

    .line 48
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 50
    const-class v1, Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    invoke-static {v1}, Lio/netty/channel/DefaultChannelPipeline;->generateName0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/channel/DefaultChannelPipeline;->HEAD_NAME:Ljava/lang/String;

    .line 51
    const-class v1, Lio/netty/channel/DefaultChannelPipeline$TailContext;

    invoke-static {v1}, Lio/netty/channel/DefaultChannelPipeline;->generateName0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/channel/DefaultChannelPipeline;->TAIL_NAME:Ljava/lang/String;

    .line 53
    new-instance v1, Lio/netty/channel/DefaultChannelPipeline$1;

    invoke-direct {v1}, Lio/netty/channel/DefaultChannelPipeline$1;-><init>()V

    sput-object v1, Lio/netty/channel/DefaultChannelPipeline;->nameCaches:Lio/netty/util/concurrent/FastThreadLocal;

    .line 61
    const-class v1, Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 62
    const-string v2, "estimatorHandle"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DefaultChannelPipeline;->ESTIMATOR:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 3
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->touch:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->firstRegistration:Z

    .line 93
    const-string v1, "channel"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/Channel;

    iput-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    .line 94
    new-instance v1, Lio/netty/channel/SucceededChannelFuture;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/netty/channel/SucceededChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 95
    new-instance v1, Lio/netty/channel/VoidChannelPromise;

    invoke-direct {v1, p1, v0}, Lio/netty/channel/VoidChannelPromise;-><init>(Lio/netty/channel/Channel;Z)V

    iput-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->voidPromise:Lio/netty/channel/VoidChannelPromise;

    .line 97
    new-instance v0, Lio/netty/channel/DefaultChannelPipeline$TailContext;

    invoke-direct {v0, p0, p0}, Lio/netty/channel/DefaultChannelPipeline$TailContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/DefaultChannelPipeline;)V

    iput-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 98
    new-instance v1, Lio/netty/channel/DefaultChannelPipeline$HeadContext;

    invoke-direct {v1, p0, p0}, Lio/netty/channel/DefaultChannelPipeline$HeadContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/DefaultChannelPipeline;)V

    iput-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 100
    iput-object v0, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 101
    iput-object v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p1, "x1"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerRemoved0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p1, "x1"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p1, "x1"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "x2"    # Z

    .line 46
    invoke-direct {p0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->destroyUp(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/DefaultChannelPipeline;Ljava/lang/Thread;Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p3, "x3"    # Z

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->destroyDown(Ljava/lang/Thread;Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->TAIL_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->HEAD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/channel/DefaultChannelPipeline;)Lio/netty/channel/Channel;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;

    .line 46
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/channel/DefaultChannelPipeline;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;

    .line 46
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelPipeline;->destroy()V

    return-void
.end method

.method static synthetic access$800(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p1, "x1"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->atomicRemoveFromHandlerList(Lio/netty/channel/AbstractChannelHandlerContext;)V

    return-void
.end method

.method private static addAfter0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 327
    iput-object p0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 328
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 329
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 330
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 331
    return-void
.end method

.method private static addBefore0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 1
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 274
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 275
    iput-object p0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 276
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 277
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 278
    return-void
.end method

.method private addFirst0(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 186
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 187
    .local v0, "nextCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object v1, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 188
    iput-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 189
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 190
    iput-object p1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 191
    return-void
.end method

.method private addLast0(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 228
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 229
    .local v0, "prev":Lio/netty/channel/AbstractChannelHandlerContext;
    iput-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 230
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object v1, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 231
    iput-object p1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 232
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 233
    return-void
.end method

.method private declared-synchronized atomicRemoveFromHandlerList(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 486
    .local v0, "prev":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 487
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    iput-object v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 488
    iput-object v0, v1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 484
    .end local v0    # "prev":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local v1    # "next":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local p0    # "this":Lio/netty/channel/DefaultChannelPipeline;
    .end local p1    # "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 609
    :try_start_0
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->callHandlerAdded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    goto/16 :goto_1

    .line 610
    :catchall_0
    move-exception v0

    .line 611
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 613
    .local v1, "removed":Z
    :try_start_1
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->atomicRemoveFromHandlerList(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 614
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->callHandlerRemoved()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    const/4 v1, 0x1

    .line 620
    goto :goto_0

    .line 616
    :catchall_1
    move-exception v2

    .line 617
    .local v2, "t2":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove a handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    .end local v2    # "t2":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 623
    new-instance v2, Lio/netty/channel/ChannelPipelineException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".handlerAdded() has thrown an exception; removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lio/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    invoke-virtual {p0, v2}, Lio/netty/channel/DefaultChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    goto :goto_1

    .line 627
    :cond_1
    new-instance v2, Lio/netty/channel/ChannelPipelineException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".handlerAdded() has thrown an exception; also failed to remove."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lio/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    invoke-virtual {p0, v2}, Lio/netty/channel/DefaultChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 632
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "removed":Z
    :goto_1
    return-void
.end method

.method private callHandlerAddedForAllHandlers()V
    .locals 2

    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_0
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v0, :cond_1

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    .line 1105
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->pendingHandlerCallbackHead:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    .line 1107
    .local v0, "pendingHandlerCallbackHead":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->pendingHandlerCallbackHead:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    .line 1108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    move-object v1, v0

    .line 1114
    .local v1, "task":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    :goto_0
    if-eqz v1, :cond_0

    .line 1115
    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->execute()V

    .line 1116
    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->next:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    goto :goto_0

    .line 1118
    :cond_0
    return-void

    .line 1100
    .end local v0    # "pendingHandlerCallbackHead":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    .end local v1    # "task":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1108
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method private callHandlerAddedInEventLoop(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 1137
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddPending()V

    .line 1138
    new-instance v0, Lio/netty/channel/DefaultChannelPipeline$6;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$6;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1144
    return-void
.end method

.method private callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "added"    # Z

    .line 1121
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v0, :cond_3

    .line 1123
    if-eqz p2, :cond_0

    new-instance v0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerAddedTask;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerRemovedTask;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 1124
    .local v0, "task":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    :goto_0
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->pendingHandlerCallbackHead:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    .line 1125
    .local v1, "pending":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    if-nez v1, :cond_1

    .line 1126
    iput-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->pendingHandlerCallbackHead:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    goto :goto_2

    .line 1129
    :cond_1
    :goto_1
    iget-object v2, v1, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->next:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    if-eqz v2, :cond_2

    .line 1130
    iget-object v1, v1, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->next:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    goto :goto_1

    .line 1132
    :cond_2
    iput-object v0, v1, Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;->next:Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;

    .line 1134
    :goto_2
    return-void

    .line 1121
    .end local v0    # "task":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    .end local v1    # "pending":Lio/netty/channel/DefaultChannelPipeline$PendingHandlerCallback;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private callHandlerRemoved0(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 637
    :try_start_0
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->callHandlerRemoved()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    .line 639
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lio/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".handlerRemoved() has thrown an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    invoke-virtual {p0, v1}, Lio/netty/channel/DefaultChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 642
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private checkDuplicateName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1054
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context0(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1057
    return-void

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMultiplicity(Lio/netty/channel/ChannelHandler;)V
    .locals 4
    .param p0, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 596
    instance-of v0, p0, Lio/netty/channel/ChannelHandlerAdapter;

    if-eqz v0, :cond_2

    .line 597
    move-object v0, p0

    check-cast v0, Lio/netty/channel/ChannelHandlerAdapter;

    .line 598
    .local v0, "h":Lio/netty/channel/ChannelHandlerAdapter;
    invoke-virtual {v0}, Lio/netty/channel/ChannelHandlerAdapter;->isSharable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lio/netty/channel/ChannelHandlerAdapter;->added:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a @Sharable handler, so can\'t be added or removed multiple times."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/channel/ChannelHandlerAdapter;->added:Z

    .line 605
    .end local v0    # "h":Lio/netty/channel/ChannelHandlerAdapter;
    :cond_2
    return-void
.end method

.method private childExecutor(Lio/netty/util/concurrent/EventExecutorGroup;)Lio/netty/util/concurrent/EventExecutor;
    .locals 4
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .local v0, "pinEventExecutor":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    return-object v1

    .line 131
    :cond_1
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    .line 132
    .local v1, "childExecutors":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/util/concurrent/EventExecutorGroup;Lio/netty/util/concurrent/EventExecutor;>;"
    if-nez v1, :cond_2

    .line 134
    new-instance v2, Ljava/util/IdentityHashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v2, p0, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    move-object v1, v2

    .line 138
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/concurrent/EventExecutor;

    .line 139
    .local v2, "childExecutor":Lio/netty/util/concurrent/EventExecutor;
    if-nez v2, :cond_3

    .line 140
    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 141
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3
    return-object v2
.end method

.method private context0(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1061
    .local v0, "context":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq v0, v1, :cond_1

    .line 1062
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    return-object v0

    .line 1065
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    goto :goto_0

    .line 1067
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->destroyUp(Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    monitor-exit p0

    return-void

    .line 835
    .end local p0    # "this":Lio/netty/channel/DefaultChannelPipeline;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private destroyDown(Ljava/lang/Thread;Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    .locals 4
    .param p1, "currentThread"    # Ljava/lang/Thread;
    .param p2, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p3, "inEventLoop"    # Z

    .line 867
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 869
    .local v0, "head":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    if-ne p2, v0, :cond_0

    .line 870
    goto :goto_1

    .line 873
    :cond_0
    invoke-virtual {p2}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 874
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    if-nez p3, :cond_2

    invoke-interface {v1, p1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop(Ljava/lang/Thread;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 878
    :cond_1
    move-object v2, p2

    .line 879
    .local v2, "finalCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    new-instance v3, Lio/netty/channel/DefaultChannelPipeline$5;

    invoke-direct {v3, p0, v2}, Lio/netty/channel/DefaultChannelPipeline$5;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 885
    nop

    .line 891
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    .end local v2    # "finalCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_1
    return-void

    .line 875
    .restart local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_2
    :goto_2
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->atomicRemoveFromHandlerList(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 876
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerRemoved0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 888
    iget-object p2, p2, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 889
    const/4 p3, 0x0

    .line 890
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0
.end method

.method private destroyUp(Lio/netty/channel/AbstractChannelHandlerContext;Z)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "inEventLoop"    # Z

    .line 840
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 841
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 843
    .local v1, "tail":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    if-ne p1, v1, :cond_0

    .line 844
    iget-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0, v0, v2, p2}, Lio/netty/channel/DefaultChannelPipeline;->destroyDown(Ljava/lang/Thread;Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 845
    goto :goto_1

    .line 848
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 849
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    if-nez p2, :cond_1

    invoke-interface {v2, v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop(Ljava/lang/Thread;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 850
    move-object v3, p1

    .line 851
    .local v3, "finalCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    new-instance v4, Lio/netty/channel/DefaultChannelPipeline$4;

    invoke-direct {v4, p0, v3}, Lio/netty/channel/DefaultChannelPipeline$4;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v2, v4}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 857
    nop

    .line 863
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    .end local v3    # "finalCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_1
    return-void

    .line 860
    .restart local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    iget-object p1, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 861
    const/4 p2, 0x0

    .line 862
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    goto :goto_0
.end method

.method private filterName(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 281
    if-nez p1, :cond_0

    .line 282
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->generateName(Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 285
    return-object p1
.end method

.method private generateName(Lio/netty/channel/ChannelHandler;)Ljava/lang/String;
    .locals 7
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 388
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->nameCaches:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 389
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 390
    .local v1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 392
    invoke-static {v1}, Lio/netty/channel/DefaultChannelPipeline;->generateName0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_0
    invoke-direct {p0, v2}, Lio/netty/channel/DefaultChannelPipeline;->context0(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 399
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "baseName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 401
    .local v4, "i":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "newName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lio/netty/channel/DefaultChannelPipeline;->context0(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v6

    if-nez v6, :cond_1

    .line 403
    move-object v2, v5

    .line 404
    goto :goto_1

    .line 400
    .end local v5    # "newName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v3    # "baseName":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static generateName0(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 412
    .local p0, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextOrDie(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 1080
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1081
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 1084
    return-object v0

    .line 1082
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContextOrDie(Ljava/lang/Class;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)",
            "Lio/netty/channel/AbstractChannelHandlerContext;"
        }
    .end annotation

    .line 1089
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/channel/ChannelHandler;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1090
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 1093
    return-object v0

    .line 1091
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContextOrDie(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1071
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1072
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 1075
    return-object v0

    .line 1073
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 120
    new-instance v0, Lio/netty/channel/DefaultChannelHandlerContext;

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->childExecutor(Lio/netty/util/concurrent/EventExecutorGroup;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lio/netty/channel/DefaultChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)V

    return-object v0
.end method

.method private remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 453
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq p1, v0, :cond_2

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->atomicRemoveFromHandlerList(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 461
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 463
    monitor-exit p0

    return-object p1

    .line 466
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 467
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    new-instance v1, Lio/netty/channel/DefaultChannelPipeline$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/DefaultChannelPipeline$2;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 474
    monitor-exit p0

    return-object p1

    .line 476
    .end local v0    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerRemoved0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 478
    return-object p1

    .line 476
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 453
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private removeIfExists(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Lio/netty/channel/ChannelHandlerContext;",
            ")TT;"
        }
    .end annotation

    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method private replace(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lio/netty/channel/ChannelHandler;

    .line 527
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq p1, v0, :cond_4

    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    invoke-static {p3}, Lio/netty/channel/DefaultChannelPipeline;->checkMultiplicity(Lio/netty/channel/ChannelHandler;)V

    .line 532
    if-nez p2, :cond_0

    .line 533
    invoke-direct {p0, p3}, Lio/netty/channel/DefaultChannelPipeline;->generateName(Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 536
    .local v0, "sameName":Z
    if-nez v0, :cond_1

    .line 537
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 541
    .end local v0    # "sameName":Z
    :cond_1
    :goto_0
    iget-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {p0, v0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 543
    .local v0, "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-static {p1, v0}, Lio/netty/channel/DefaultChannelPipeline;->replace0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 549
    iget-boolean v1, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v1, :cond_2

    .line 550
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 551
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 552
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 554
    :cond_2
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 555
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_3

    .line 556
    new-instance v2, Lio/netty/channel/DefaultChannelPipeline$3;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/DefaultChannelPipeline$3;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 566
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 568
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 573
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerRemoved0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 574
    invoke-virtual {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1

    .line 568
    .end local v0    # "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 527
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static replace0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 2
    .param p0, "oldCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "newCtx"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 578
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 579
    .local v0, "prev":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 580
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    iput-object v0, p1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 581
    iput-object v1, p1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 587
    iput-object p1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 588
    iput-object p1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 591
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 592
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 593
    return-void
.end method


# virtual methods
.method public final addAfter(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 4
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-static {p4}, Lio/netty/channel/DefaultChannelPipeline;->checkMultiplicity(Lio/netty/channel/ChannelHandler;)V

    .line 301
    invoke-direct {p0, p3, p4}, Lio/netty/channel/DefaultChannelPipeline;->filterName(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 302
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 304
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-direct {p0, p1, p3, p4}, Lio/netty/channel/DefaultChannelPipeline;->newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 306
    .local v1, "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->addAfter0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 311
    iget-boolean v2, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v2, :cond_0

    .line 312
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddPending()V

    .line 313
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 314
    monitor-exit p0

    return-object p0

    .line 316
    :cond_0
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 317
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-direct {p0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAddedInEventLoop(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;)V

    .line 319
    monitor-exit p0

    return-object p0

    .line 321
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {p0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 323
    return-object p0

    .line 321
    .end local v0    # "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local v1    # "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->addAfter(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final addBefore(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 4
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "baseName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-static {p4}, Lio/netty/channel/DefaultChannelPipeline;->checkMultiplicity(Lio/netty/channel/ChannelHandler;)V

    .line 247
    invoke-direct {p0, p3, p4}, Lio/netty/channel/DefaultChannelPipeline;->filterName(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 248
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 250
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-direct {p0, p1, p3, p4}, Lio/netty/channel/DefaultChannelPipeline;->newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 252
    .local v1, "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-static {v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->addBefore0(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 257
    iget-boolean v2, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v2, :cond_0

    .line 258
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddPending()V

    .line 259
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 260
    monitor-exit p0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 264
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    invoke-direct {p0, v1, v2}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAddedInEventLoop(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;)V

    .line 266
    monitor-exit p0

    return-object p0

    .line 268
    .end local v2    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-direct {p0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 270
    return-object p0

    .line 268
    .end local v0    # "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    .end local v1    # "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->addBefore(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final addFirst(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final addFirst(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 3
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    invoke-static {p3}, Lio/netty/channel/DefaultChannelPipeline;->checkMultiplicity(Lio/netty/channel/ChannelHandler;)V

    .line 160
    invoke-direct {p0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->filterName(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 164
    .local v0, "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->addFirst0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 169
    iget-boolean v1, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddPending()V

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 172
    monitor-exit p0

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 176
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAddedInEventLoop(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;)V

    .line 178
    monitor-exit p0

    return-object p0

    .line 180
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 182
    return-object p0

    .line 180
    .end local v0    # "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final varargs addFirst(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 4
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 344
    const-string v0, "handlers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    array-length v0, p2

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 350
    :cond_0
    const/4 v0, 0x1

    .local v0, "size":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 351
    aget-object v1, p2, v0

    if-nez v1, :cond_1

    .line 352
    goto :goto_1

    .line 350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    :goto_1
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 357
    aget-object v2, p2, v1

    .line 358
    .local v2, "h":Lio/netty/channel/ChannelHandler;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lio/netty/channel/DefaultChannelPipeline;->addFirst(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 356
    .end local v2    # "h":Lio/netty/channel/ChannelHandler;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 361
    .end local v1    # "i":I
    :cond_3
    return-object p0

    .line 346
    .end local v0    # "size":I
    :cond_4
    :goto_3
    return-object p0
.end method

.method public final addFirst(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->addFirst(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs addFirst([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->addFirst(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final addLast(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final addLast(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 3
    .param p1, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-static {p3}, Lio/netty/channel/DefaultChannelPipeline;->checkMultiplicity(Lio/netty/channel/ChannelHandler;)V

    .line 204
    invoke-direct {p0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->filterName(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lio/netty/channel/DefaultChannelPipeline;->newContext(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    .line 206
    .local v0, "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->addLast0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 211
    iget-boolean v1, p0, Lio/netty/channel/DefaultChannelPipeline;->registered:Z

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->setAddPending()V

    .line 213
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerCallbackLater(Lio/netty/channel/AbstractChannelHandlerContext;Z)V

    .line 214
    monitor-exit p0

    return-object p0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 218
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-direct {p0, v0, v1}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAddedInEventLoop(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/util/concurrent/EventExecutor;)V

    .line 220
    monitor-exit p0

    return-object p0

    .line 222
    .end local v1    # "executor":Lio/netty/util/concurrent/EventExecutor;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAdded0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 224
    return-object p0

    .line 222
    .end local v0    # "newCtx":Lio/netty/channel/AbstractChannelHandlerContext;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final varargs addLast(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 4
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 375
    const-string v0, "handlers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 378
    .local v2, "h":Lio/netty/channel/ChannelHandler;
    if-nez v2, :cond_0

    .line 379
    goto :goto_1

    .line 381
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lio/netty/channel/DefaultChannelPipeline;->addLast(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 377
    .end local v2    # "h":Lio/netty/channel/ChannelHandler;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    :goto_1
    return-object p0
.end method

.method public final addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->addLast(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final varargs addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->addLast(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 937
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 973
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final channel()Lio/netty/channel/Channel;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public final close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 957
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 994
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 942
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 978
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 947
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 984
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 2
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 718
    const-string v0, "handler"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 723
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    if-nez v0, :cond_0

    .line 724
    const/4 v1, 0x0

    return-object v1

    .line 727
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 728
    return-object v0

    .line 731
    :cond_1
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    goto :goto_0
.end method

.method public final context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)",
            "Lio/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    .line 737
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/channel/ChannelHandler;>;"
    const-string v0, "handlerType"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 741
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    if-nez v0, :cond_0

    .line 742
    const/4 v1, 0x0

    return-object v1

    .line 744
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    return-object v0

    .line 747
    :cond_1
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    goto :goto_0
.end method

.method public final context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 713
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->context0(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method protected decrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "size"    # J

    .line 1238
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 1239
    .local v0, "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 1242
    :cond_0
    return-void
.end method

.method public final deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 962
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 999
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 952
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 989
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method final estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 3

    .line 105
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 106
    .local v0, "handle":Lio/netty/channel/MessageSizeEstimator$Handle;
    if-nez v0, :cond_0

    .line 107
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/MessageSizeEstimator;->newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v0

    .line 108
    sget-object v1, Lio/netty/channel/DefaultChannelPipeline;->ESTIMATOR:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 112
    :cond_0
    return-object v0
.end method

.method public bridge synthetic fireChannelActive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelActive()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 895
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 896
    return-object p0
.end method

.method public bridge synthetic fireChannelInactive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelInactive()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelInactive()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 901
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 902
    return-object p0
.end method

.method public bridge synthetic fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    return-object p1
.end method

.method public final fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 919
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 920
    return-object p0
.end method

.method public bridge synthetic fireChannelReadComplete()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 925
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 926
    return-object p0
.end method

.method public bridge synthetic fireChannelRegistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelRegistered()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelRegistered()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 815
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 816
    return-object p0
.end method

.method public bridge synthetic fireChannelUnregistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelUnregistered()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelUnregistered()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 821
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 822
    return-object p0
.end method

.method public bridge synthetic fireChannelWritabilityChanged()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 931
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 932
    return-object p0
.end method

.method public bridge synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    return-object p1
.end method

.method public final fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 907
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 908
    return-object p0
.end method

.method public bridge synthetic fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    return-object p1
.end method

.method public final fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;

    .line 913
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    .line 914
    return-object p0
.end method

.method public final first()Lio/netty/channel/ChannelHandler;
    .locals 2

    .line 656
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->firstContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 657
    .local v0, "first":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 658
    const/4 v1, 0x0

    return-object v1

    .line 660
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method public final firstContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    .line 665
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 666
    .local v0, "first":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v0, v1, :cond_0

    .line 667
    const/4 v1, 0x0

    return-object v1

    .line 669
    :cond_0
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    return-object v1
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->flush()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final flush()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 967
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 968
    return-object p0
.end method

.method public final get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 703
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 704
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 705
    const/4 v1, 0x0

    return-object v1

    .line 707
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method public final get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 692
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 693
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 694
    const/4 v1, 0x0

    return-object v1

    .line 696
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method protected incrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "size"    # J

    .line 1230
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 1231
    .local v0, "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    .line 1234
    :cond_0
    return-void
.end method

.method final invokeHandlerAddedIfNeeded()V
    .locals 1

    .line 645
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->firstRegistration:Z

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->firstRegistration:Z

    .line 650
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelPipeline;->callHandlerAddedForAllHandlers()V

    .line 652
    :cond_0
    return-void

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/netty/channel/ChannelHandler;",
            ">;>;"
        }
    .end annotation

    .line 779
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lio/netty/channel/ChannelHandler;
    .locals 2

    .line 674
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 675
    .local v0, "last":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v0, v1, :cond_0

    .line 676
    const/4 v1, 0x0

    return-object v1

    .line 678
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method public final lastContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    .line 683
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 684
    .local v0, "last":Lio/netty/channel/AbstractChannelHandlerContext;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v0, v1, :cond_0

    .line 685
    const/4 v1, 0x0

    return-object v1

    .line 687
    :cond_0
    return-object v0
.end method

.method public final names()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 756
    .local v1, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    if-nez v1, :cond_0

    .line 757
    return-object v0

    .line 759
    :cond_0
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    goto :goto_0
.end method

.method public final newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1045
    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 2

    .line 1035
    new-instance v0, Lio/netty/channel/DefaultChannelProgressivePromise;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-direct {v0, v1}, Lio/netty/channel/DefaultChannelProgressivePromise;-><init>(Lio/netty/channel/Channel;)V

    return-object v0
.end method

.method public final newPromise()Lio/netty/channel/ChannelPromise;
    .locals 2

    .line 1030
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/Channel;

    invoke-direct {v0, v1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    return-object v0
.end method

.method public final newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 1040
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->succeededFuture:Lio/netty/channel/ChannelFuture;

    return-object v0
.end method

.method protected onUnhandledChannelWritabilityChanged()V
    .locals 0

    .line 1226
    return-void
.end method

.method protected onUnhandledInboundChannelActive()V
    .locals 0

    .line 1166
    return-void
.end method

.method protected onUnhandledInboundChannelInactive()V
    .locals 0

    .line 1173
    return-void
.end method

.method protected onUnhandledInboundChannelReadComplete()V
    .locals 0

    .line 1208
    return-void
.end method

.method protected onUnhandledInboundException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1152
    :try_start_0
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "An exceptionCaught() event was fired, and it reached at the tail of the pipeline. It usually means the last handler in the pipeline did not handle the exception."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1158
    nop

    .line 1159
    return-void

    .line 1157
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1158
    throw v0
.end method

.method protected onUnhandledInboundMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;

    .line 1196
    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;->onUnhandledInboundMessage(Ljava/lang/Object;)V

    .line 1197
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    nop

    .line 1199
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->names()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 1198
    const-string v3, "Discarded message pipeline : {}. Channel : {}."

    invoke-interface {v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1201
    :cond_0
    return-void
.end method

.method protected onUnhandledInboundMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .line 1182
    :try_start_0
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarded inbound message {} that reached at the tail of the pipeline. Please check your pipeline configuration."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1187
    nop

    .line 1188
    return-void

    .line 1186
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1187
    throw v0
.end method

.method protected onUnhandledInboundUserEventTriggered(Ljava/lang/Object;)V
    .locals 0
    .param p1, "evt"    # Ljava/lang/Object;

    .line 1218
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1219
    return-void
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelPipeline;->read()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public final read()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 1004
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 1005
    return-object p0
.end method

.method public final remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 429
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 423
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 417
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    .line 418
    return-object p0
.end method

.method public final removeFirst()Lio/netty/channel/ChannelHandler;
    .locals 2

    .line 493
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final removeIfExists(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "handler"    # Lio/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Lio/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->removeIfExists(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final removeIfExists(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 437
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/Class;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->removeIfExists(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final removeIfExists(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->removeIfExists(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final removeLast()Lio/netty/channel/ChannelHandler;
    .locals 2

    .line 501
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-eq v0, v1, :cond_0

    .line 504
    iget-object v0, v1, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final replace(Ljava/lang/Class;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lio/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lio/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .line 522
    .local p1, "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->replace(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;
    .locals 1
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lio/netty/channel/ChannelHandler;

    .line 515
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->replace(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    .locals 1
    .param p1, "oldHandler"    # Lio/netty/channel/ChannelHandler;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lio/netty/channel/ChannelHandler;

    .line 509
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->replace(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    .line 510
    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .line 766
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 767
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/channel/ChannelHandler;>;"
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 769
    .local v1, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v1, v2, :cond_0

    .line 770
    return-object v0

    .line 772
    :cond_0
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline;->head:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 792
    .local v1, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :goto_0
    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v1, v2, :cond_0

    .line 793
    goto :goto_1

    .line 796
    :cond_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 798
    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 799
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 802
    iget-object v1, v1, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 803
    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    if-ne v1, v2, :cond_1

    .line 804
    nop

    .line 809
    :goto_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 807
    :cond_1
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final touch(Ljava/lang/Object;Lio/netty/channel/AbstractChannelHandlerContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 116
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelPipeline;->touch:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public final voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 1050
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->voidPromise:Lio/netty/channel/VoidChannelPromise;

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1015
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 1025
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 1020
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline;->tail:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

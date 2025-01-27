.class public final Lio/netty/channel/nio/NioEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "NioEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    }
.end annotation


# static fields
.field private static final AWAKE:J = -0x1L

.field private static final CLEANUP_INTERVAL:I = 0x100

.field private static final DISABLE_KEY_SET_OPTIMIZATION:Z

.field private static final MIN_PREMATURE_SELECTOR_RETURNS:I = 0x3

.field private static final NONE:J = 0x7fffffffffffffffL

.field private static final SELECTOR_AUTO_REBUILD_THRESHOLD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private cancelledKeys:I

.field private volatile ioRatio:I

.field private needsToSelectAgain:Z

.field private final nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

.field private selector:Ljava/nio/channels/Selector;

.field private unwrappedSelector:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    const-class v0, Lio/netty/channel/nio/NioEventLoop;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 63
    nop

    .line 64
    const-string v0, "io.netty.noKeySetOptimization"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    .line 82
    const-string v0, "sun.nio.ch.bugLevel"

    .line 83
    .local v0, "key":Ljava/lang/String;
    const-string v1, "sun.nio.ch.bugLevel"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "bugLevel":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 86
    :try_start_0
    new-instance v2, Lio/netty/channel/nio/NioEventLoop$2;

    invoke-direct {v2}, Lio/netty/channel/nio/NioEventLoop$2;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Unable to get/set System Property: sun.nio.ch.bugLevel"

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/16 v2, 0x200

    const-string v3, "io.netty.selectorAutoRebuildThreshold"

    invoke-static {v3, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, "selectorAutoRebuildThreshold":I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 100
    const/4 v2, 0x0

    .line 103
    :cond_1
    sput v2, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    .line 105
    sget-object v3, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    sget-boolean v4, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "-Dio.netty.noKeySetOptimization: {}"

    invoke-interface {v3, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "-Dio.netty.selectorAutoRebuildThreshold: {}"

    invoke-interface {v3, v5, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "bugLevel":Ljava/lang/String;
    .end local v2    # "selectorAutoRebuildThreshold":I
    :cond_2
    return-void
.end method

.method constructor <init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 7
    .param p1, "parent"    # Lio/netty/channel/nio/NioEventLoopGroup;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p4, "strategy"    # Lio/netty/channel/SelectStrategy;
    .param p5, "rejectedExecutionHandler"    # Lio/netty/util/concurrent/RejectedExecutionHandler;
    .param p6, "queueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;

    .line 138
    invoke-static {p6}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p6}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 69
    new-instance v0, Lio/netty/channel/nio/NioEventLoop$1;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/NioEventLoop$1;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 131
    const/16 v0, 0x32

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 140
    const-string v0, "selectorProvider"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 141
    const-string v0, "selectStrategy"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/SelectStrategy;

    iput-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    .line 142
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    move-result-object v0

    .line 143
    .local v0, "selectorTuple":Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    iget-object v1, v0, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->selector:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 144
    iget-object v1, v0, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/NioEventLoop;
    .param p1, "x1"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lio/netty/channel/nio/NioTask;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop;->register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/nio/NioEventLoop;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/nio/NioEventLoop;

    .line 57
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V

    return-void
.end method

.method private closeAll()V
    .locals 7

    .line 746
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 747
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 748
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    .local v1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/channel/nio/AbstractNioChannel;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 750
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    .line 751
    .local v4, "a":Ljava/lang/Object;
    instance-of v5, v4, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v5, :cond_0

    .line 752
    move-object v5, v4

    check-cast v5, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 754
    :cond_0
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 756
    move-object v5, v4

    check-cast v5, Lio/netty/channel/nio/NioTask;

    .line 757
    .local v5, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 759
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    .end local v4    # "a":Ljava/lang/Object;
    .end local v5    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :goto_1
    goto :goto_0

    .line 761
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/nio/AbstractNioChannel;

    .line 762
    .local v3, "ch":Lio/netty/channel/nio/AbstractNioChannel;
    invoke-virtual {v3}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v4

    invoke-virtual {v3}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 763
    .end local v3    # "ch":Lio/netty/channel/nio/AbstractNioChannel;
    goto :goto_2

    .line 764
    :cond_2
    return-void
.end method

.method private static handleLoopException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 563
    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 572
    :goto_0
    return-void
.end method

.method private static invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/nio/NioTask<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 768
    .local p0, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lio/netty/channel/nio/NioTask;->channelUnregistered(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unexpected exception while running NioTask.channelUnregistered()"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;
    .locals 1
    .param p0, "queueFactory"    # Lio/netty/channel/EventLoopTaskQueueFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoopTaskQueueFactory;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 149
    if-nez p0, :cond_0

    .line 150
    sget v0, Lio/netty/channel/nio/NioEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-static {v0}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    sget v0, Lio/netty/channel/nio/NioEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-interface {p0, v0}, Lio/netty/channel/EventLoopTaskQueueFactory;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method private static newTaskQueue0(I)Ljava/util/Queue;
    .locals 1
    .param p0, "maxPendingTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 279
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0
.end method

.method private openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    .locals 8

    .line 173
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v0, "unwrappedSelector":Ljava/nio/channels/Selector;
    nop

    .line 178
    sget-boolean v1, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v1, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    .line 182
    :cond_0
    new-instance v1, Lio/netty/channel/nio/NioEventLoop$3;

    invoke-direct {v1, p0}, Lio/netty/channel/nio/NioEventLoop$3;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "maybeSelectorImplClass":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Class;

    const-string v3, "failed to instrument a special java.util.Set into: {}"

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 207
    .local v2, "selectorImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-direct {v4}, Lio/netty/channel/nio/SelectedSelectionKeySet;-><init>()V

    .line 209
    .local v4, "selectedKeySet":Lio/netty/channel/nio/SelectedSelectionKeySet;
    new-instance v5, Lio/netty/channel/nio/NioEventLoop$4;

    invoke-direct {v5, p0, v2, v0, v4}, Lio/netty/channel/nio/NioEventLoop$4;-><init>(Lio/netty/channel/nio/NioEventLoop;Ljava/lang/Class;Ljava/nio/channels/Selector;Lio/netty/channel/nio/SelectedSelectionKeySet;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    .line 253
    .local v5, "maybeException":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Exception;

    if-eqz v6, :cond_2

    .line 254
    const/4 v6, 0x0

    iput-object v6, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    .line 255
    move-object v6, v5

    check-cast v6, Ljava/lang/Exception;

    .line 256
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v7, v3, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    new-instance v3, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v3, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v3

    .line 259
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    iput-object v4, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    .line 260
    sget-object v3, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "instrumented a special java.util.Set into: {}"

    invoke-interface {v3, v6, v0}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    new-instance v3, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    new-instance v6, Lio/netty/channel/nio/SelectedSelectionKeySetSelector;

    invoke-direct {v6, v0, v4}, Lio/netty/channel/nio/SelectedSelectionKeySetSelector;-><init>(Ljava/nio/channels/Selector;Lio/netty/channel/nio/SelectedSelectionKeySet;)V

    invoke-direct {v3, v0, v6}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;Ljava/nio/channels/Selector;)V

    return-object v3

    .line 199
    .end local v2    # "selectorImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "selectedKeySet":Lio/netty/channel/nio/SelectedSelectionKeySet;
    .end local v5    # "maybeException":Ljava/lang/Object;
    :cond_3
    :goto_0
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 200
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    .line 201
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v2, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v2, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v2

    .line 174
    .end local v0    # "unwrappedSelector":Ljava/nio/channels/Selector;
    .end local v1    # "maybeSelectorImplClass":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "failed to open a new selector"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 3
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;
    .param p2, "ch"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 669
    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    .line 670
    .local v0, "unsafe":Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    :try_start_0
    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .local v1, "eventLoop":Lio/netty/channel/EventLoop;
    nop

    .line 684
    if-ne v1, p0, :cond_0

    .line 686
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 688
    :cond_0
    return-void

    .line 674
    .end local v1    # "eventLoop":Lio/netty/channel/EventLoop;
    :catchall_0
    move-exception v1

    .line 678
    .local v1, "ignored":Ljava/lang/Throwable;
    return-void

    .line 692
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    .line 695
    .local v1, "readyOps":I
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    .line 698
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    .line 699
    .local v2, "ops":I
    and-int/lit8 v2, v2, -0x9

    .line 700
    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 702
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->finishConnect()V

    .line 706
    .end local v2    # "ops":I
    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    .line 708
    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->forceFlush()V

    .line 713
    :cond_3
    and-int/lit8 v2, v1, 0x11

    if-nez v2, :cond_4

    if-nez v1, :cond_5

    .line 714
    :cond_4
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->read()V
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    .end local v1    # "readyOps":I
    :cond_5
    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, "ignored":Ljava/nio/channels/CancelledKeyException;
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 719
    .end local v1    # "ignored":Ljava/nio/channels/CancelledKeyException;
    :goto_0
    return-void
.end method

.method private static processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V
    .locals 4
    .param p0, "k"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Lio/netty/channel/nio/NioTask<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;)V"
        }
    .end annotation

    .line 722
    .local p1, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    const/4 v0, 0x0

    .line 724
    .local v0, "state":I
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-interface {p1, v2, p0}, Lio/netty/channel/nio/NioTask;->channelReady(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    const/4 v0, 0x1

    .line 731
    packed-switch v0, :pswitch_data_0

    :goto_0
    goto :goto_2

    .line 737
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    :goto_1
    invoke-static {p1, p0, v1}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 733
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 734
    invoke-static {p1, p0, v1}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 735
    nop

    .line 742
    :cond_0
    :goto_2
    goto :goto_3

    .line 731
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 726
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 728
    invoke-static {p1, p0, v2}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    const/4 v0, 0x2

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 737
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 738
    goto :goto_1

    .line 743
    :goto_3
    return-void

    .line 731
    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 737
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 738
    invoke-static {p1, p0, v1}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 733
    :pswitch_4
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 734
    invoke-static {p1, p0, v1}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 735
    nop

    .line 742
    :cond_1
    :goto_5
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private processSelectedKeys()V
    .locals 1

    .line 575
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysOptimized()V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysPlain(Ljava/util/Set;)V

    .line 580
    :goto_0
    return-void
.end method

.method private processSelectedKeysOptimized()V
    .locals 5

    .line 641
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    iget v1, v1, Lio/netty/channel/nio/SelectedSelectionKeySet;->size:I

    if-ge v0, v1, :cond_2

    .line 642
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    iget-object v1, v1, Lio/netty/channel/nio/SelectedSelectionKeySet;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    .line 645
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    iget-object v2, v2, Lio/netty/channel/nio/SelectedSelectionKeySet;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 647
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 649
    .local v2, "a":Ljava/lang/Object;
    instance-of v3, v2, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v3, :cond_0

    .line 650
    move-object v3, v2

    check-cast v3, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0, v1, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    goto :goto_1

    .line 653
    :cond_0
    move-object v3, v2

    check-cast v3, Lio/netty/channel/nio/NioTask;

    .line 654
    .local v3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v1, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    .line 657
    .end local v3    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :goto_1
    iget-boolean v3, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v3, :cond_1

    .line 660
    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lio/netty/channel/nio/SelectedSelectionKeySet;->reset(I)V

    .line 662
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 663
    const/4 v0, -0x1

    .line 641
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    .end local v2    # "a":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private processSelectedKeysPlain(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    return-void

    .line 608
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 610
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 611
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 612
    .local v2, "a":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 614
    instance-of v3, v2, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v3, :cond_1

    .line 615
    move-object v3, v2

    check-cast v3, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0, v1, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    goto :goto_1

    .line 618
    :cond_1
    move-object v3, v2

    check-cast v3, Lio/netty/channel/nio/NioTask;

    .line 619
    .local v3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v1, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    .line 622
    .end local v3    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 623
    goto :goto_2

    .line 626
    :cond_2
    iget-boolean v3, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v3, :cond_4

    .line 627
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    .line 628
    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    .line 631
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    nop

    .line 638
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    .end local v2    # "a":Ljava/lang/Object;
    :goto_2
    return-void

    .line 634
    .restart local v1    # "k":Ljava/nio/channels/SelectionKey;
    .restart local v2    # "a":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 637
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    .end local v2    # "a":Ljava/lang/Object;
    :cond_4
    goto :goto_0
.end method

.method private rebuildSelector0()V
    .locals 10

    .line 373
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 376
    .local v0, "oldSelector":Ljava/nio/channels/Selector;
    if-nez v0, :cond_0

    .line 377
    return-void

    .line 381
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .local v1, "newSelectorTuple":Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    nop

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, "nChannels":I
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 390
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    .line 392
    .local v5, "a":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    iget-object v7, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    .line 397
    .local v6, "interestOps":I
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 398
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    iget-object v8, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v7, v8, v6, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v7

    .line 399
    .local v7, "newKey":Ljava/nio/channels/SelectionKey;
    instance-of v8, v5, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v8, :cond_2

    .line 401
    move-object v8, v5

    check-cast v8, Lio/netty/channel/nio/AbstractNioChannel;

    iput-object v7, v8, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    :cond_2
    nop

    .end local v6    # "interestOps":I
    .end local v7    # "newKey":Ljava/nio/channels/SelectionKey;
    add-int/lit8 v2, v2, 0x1

    .line 414
    goto :goto_2

    .line 393
    :cond_3
    :goto_1
    goto :goto_0

    .line 404
    :catch_0
    move-exception v6

    .line 405
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Failed to re-register a Channel to the new Selector."

    invoke-interface {v7, v8, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    instance-of v7, v5, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v7, :cond_4

    .line 407
    move-object v7, v5

    check-cast v7, Lio/netty/channel/nio/AbstractNioChannel;

    .line 408
    .local v7, "ch":Lio/netty/channel/nio/AbstractNioChannel;
    invoke-virtual {v7}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v8

    invoke-virtual {v7}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 409
    .end local v7    # "ch":Lio/netty/channel/nio/AbstractNioChannel;
    goto :goto_2

    .line 411
    :cond_4
    move-object v7, v5

    check-cast v7, Lio/netty/channel/nio/NioTask;

    .line 412
    .local v7, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    invoke-static {v7, v4, v6}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 415
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    .end local v5    # "a":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<Ljava/nio/channels/SelectableChannel;>;"
    :goto_2
    goto :goto_0

    .line 417
    :cond_5
    iget-object v3, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->selector:Ljava/nio/channels/Selector;

    iput-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 418
    iget-object v3, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    iput-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    .line 422
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    goto :goto_3

    .line 423
    :catchall_0
    move-exception v3

    .line 424
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 425
    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Failed to close the old Selector."

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    sget-object v3, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel(s) to the new Selector."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 432
    :cond_7
    return-void

    .line 382
    .end local v1    # "newSelectorTuple":Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    .end local v2    # "nChannels":I
    :catch_1
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to create a new Selector."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method private register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "interestOps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectableChannel;",
            "I",
            "Lio/netty/channel/nio/NioTask<",
            "*>;)V"
        }
    .end annotation

    .line 324
    .local p3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<*>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/EventLoopException;

    const-string v2, "failed to register a channel"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/EventLoopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private select(J)I
    .locals 4
    .param p1, "deadlineNanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0

    .line 806
    :cond_0
    const-wide/32 v0, 0xf2eb8

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lio/netty/channel/nio/NioEventLoop;->deadlineToDelayNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 807
    .local v0, "timeoutMillis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result v2

    :goto_0
    return v2
.end method

.method private selectAgain()V
    .locals 3

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 813
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    goto :goto_0

    .line 814
    :catchall_0
    move-exception v0

    .line 815
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to update SelectionKeys."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private unexpectedSelectorWakeup(I)Z
    .locals 5
    .param p1, "selectCnt"    # I

    .line 537
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 543
    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    const-string v2, "Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop."

    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 548
    :cond_0
    return v1

    .line 550
    :cond_1
    sget v0, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    if-lez v0, :cond_2

    if-lt p1, v0, :cond_2

    .line 554
    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 554
    const-string v4, "Selector.select() returned prematurely {} times in a row; rebuilding Selector {}."

    invoke-interface {v0, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    .line 557
    return v1

    .line 559
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected afterScheduledTaskSubmitted(J)Z
    .locals 2
    .param p1, "deadlineNanos"    # J

    .line 790
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected beforeScheduledTaskSubmitted(J)Z
    .locals 2
    .param p1, "deadlineNanos"    # J

    .line 784
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .line 592
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 593
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 594
    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 596
    iput-boolean v1, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 598
    :cond_0
    return-void
.end method

.method protected cleanup()V
    .locals 3

    .line 585
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public getIoRatio()I
    .locals 1

    .line 334
    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    return v0
.end method

.method protected newTaskQueue(I)Ljava/util/Queue;
    .locals 1
    .param p1, "maxPendingTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public rebuildSelector()V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lio/netty/channel/nio/NioEventLoop$6;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/NioEventLoop$6;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V

    .line 365
    return-void
.end method

.method public register(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "interestOps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectableChannel;",
            "I",
            "Lio/netty/channel/nio/NioTask<",
            "*>;)V"
        }
    .end annotation

    .line 289
    .local p3, "task":Lio/netty/channel/nio/NioTask;, "Lio/netty/channel/nio/NioTask<*>;"
    const-string v0, "ch"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    if-eqz p2, :cond_3

    .line 293
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 297
    const-string v0, "task"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop;->register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    goto :goto_0

    .line 309
    :cond_0
    :try_start_0
    new-instance v0, Lio/netty/channel/nio/NioEventLoop$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop$5;-><init>(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    invoke-virtual {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->sync()Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "ignore":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 320
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "event loop shut down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interestOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(validOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interestOps must be non-zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registeredChannels()I
    .locals 2

    .line 369
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected run()V
    .locals 12

    .line 436
    const/4 v0, 0x0

    .line 441
    .local v0, "selectCnt":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->hasTasks()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    move-result v1

    .line 442
    .local v1, "strategy":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 444
    :pswitch_0
    goto :goto_0

    .line 450
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->nextScheduledTaskDeadlineNanos()J

    move-result-wide v2

    .line 451
    .local v2, "curDeadlineNanos":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 452
    const-wide v2, 0x7fffffffffffffffL

    .line 454
    :cond_0
    iget-object v6, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 456
    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->hasTasks()Z

    move-result v6

    if-nez v6, :cond_1

    .line 457
    invoke-direct {p0, v2, v3}, Lio/netty/channel/nio/NioEventLoop;->select(J)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v6

    .line 462
    :cond_1
    :try_start_2
    iget-object v6, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 463
    goto :goto_1

    .line 462
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 463
    nop

    .end local v0    # "selectCnt":I
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 474
    .end local v2    # "curDeadlineNanos":J
    .restart local v0    # "selectCnt":I
    :goto_1
    nop

    .line 476
    add-int/lit8 v0, v0, 0x1

    .line 477
    const/4 v2, 0x0

    :try_start_3
    iput v2, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    .line 478
    iput-boolean v2, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    .line 479
    iget v2, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 481
    .local v2, "ioRatio":I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 483
    if-lez v1, :cond_2

    .line 484
    :try_start_4
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 488
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks()Z

    move-result v4

    .line 489
    .local v4, "ranTasks":Z
    nop

    .end local v0    # "selectCnt":I
    throw v3

    .line 488
    .end local v4    # "ranTasks":Z
    .restart local v0    # "selectCnt":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks()Z

    move-result v3

    .line 489
    .local v3, "ranTasks":Z
    goto :goto_3

    .line 490
    .end local v3    # "ranTasks":Z
    :cond_3
    if-lez v1, :cond_4

    .line 491
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 493
    .local v3, "ioStartTime":J
    :try_start_6
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 496
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 497
    .local v5, "ioTime":J
    rsub-int/lit8 v7, v2, 0x64

    int-to-long v7, v7

    mul-long/2addr v7, v5

    int-to-long v9, v2

    div-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks(J)Z

    move-result v7

    move v5, v7

    .line 498
    .local v5, "ranTasks":Z
    nop

    .line 499
    .end local v3    # "ioStartTime":J
    move v3, v5

    goto :goto_3

    .line 496
    .end local v5    # "ranTasks":Z
    .restart local v3    # "ioStartTime":J
    :catchall_2
    move-exception v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 497
    .local v6, "ioTime":J
    rsub-int/lit8 v8, v2, 0x64

    int-to-long v8, v8

    mul-long/2addr v8, v6

    int-to-long v10, v2

    div-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks(J)Z

    move-result v8

    move v6, v8

    .line 498
    .local v6, "ranTasks":Z
    nop

    .end local v0    # "selectCnt":I
    throw v5

    .line 500
    .end local v3    # "ioStartTime":J
    .end local v6    # "ranTasks":Z
    .restart local v0    # "selectCnt":I
    :cond_4
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lio/netty/channel/nio/NioEventLoop;->runAllTasks(J)Z

    move-result v3

    .line 503
    .local v3, "ranTasks":Z
    :goto_3
    if-nez v3, :cond_6

    if-lez v1, :cond_5

    goto :goto_4

    .line 509
    :cond_5
    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->unexpectedSelectorWakeup(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 510
    const/4 v0, 0x0

    goto :goto_7

    .line 504
    :cond_6
    :goto_4
    const/4 v4, 0x3

    if-le v0, v4, :cond_7

    sget-object v4, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 505
    const-string v5, "Selector.select() returned prematurely {} times in a row for Selector {}."

    add-int/lit8 v6, v0, -0x1

    .line 506
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    .line 505
    invoke-interface {v4, v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    .line 518
    .end local v1    # "strategy":I
    .end local v2    # "ioRatio":I
    .end local v3    # "ranTasks":Z
    :catchall_3
    move-exception v1

    goto :goto_5

    .line 512
    :catch_0
    move-exception v1

    goto :goto_6

    .line 467
    :catch_1
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V

    .line 471
    const/4 v0, 0x0

    .line 472
    invoke-static {v1}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 473
    goto/16 :goto_0

    .line 519
    .local v1, "t":Ljava/lang/Throwable;
    :goto_5
    invoke-static {v1}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 514
    .local v1, "e":Ljava/nio/channels/CancelledKeyException;
    :goto_6
    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " raised by a Selector {} - JDK bug?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-interface {v2, v3, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    .end local v1    # "e":Ljava/nio/channels/CancelledKeyException;
    :cond_8
    :goto_7
    nop

    .line 523
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 524
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->closeAll()V

    .line 525
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->confirmShutdown()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_9

    .line 526
    return-void

    .line 529
    :catchall_4
    move-exception v1

    .line 530
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 531
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_9
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method selectNow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public selectorProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .line 269
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .line 344
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 347
    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 348
    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0 < ioRatio <= 100)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unwrappedSelector()Ljava/nio/channels/Selector;
    .locals 1

    .line 794
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method protected wakeup(Z)V
    .locals 5
    .param p1, "inEventLoop"    # Z

    .line 776
    if-nez p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 779
    :cond_0
    return-void
.end method

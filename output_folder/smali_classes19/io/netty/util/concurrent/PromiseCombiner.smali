.class public final Lio/netty/util/concurrent/PromiseCombiner;
.super Ljava/lang/Object;
.source "PromiseCombiner.java"


# instance fields
.field private aggregatePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private cause:Ljava/lang/Throwable;

.field private doneCount:I

.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private expectedCount:I

.field private final listener:Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    sget-object v0, Lio/netty/util/concurrent/ImmediateEventExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateEventExecutor;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lio/netty/util/concurrent/PromiseCombiner$1;

    invoke-direct {v0, p0}, Lio/netty/util/concurrent/PromiseCombiner$1;-><init>(Lio/netty/util/concurrent/PromiseCombiner;)V

    iput-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    .line 84
    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/concurrent/PromiseCombiner;)Lio/netty/util/concurrent/EventExecutor;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/util/concurrent/PromiseCombiner;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->doneCount:I

    return v0
.end method

.method static synthetic access$204(Lio/netty/util/concurrent/PromiseCombiner;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->doneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->doneCount:I

    return v0
.end method

.method static synthetic access$300(Lio/netty/util/concurrent/PromiseCombiner;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$302(Lio/netty/util/concurrent/PromiseCombiner;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 35
    iput-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner;->cause:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$400(Lio/netty/util/concurrent/PromiseCombiner;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->expectedCount:I

    return v0
.end method

.method static synthetic access$500(Lio/netty/util/concurrent/PromiseCombiner;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/util/concurrent/PromiseCombiner;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/util/concurrent/PromiseCombiner;

    .line 35
    invoke-direct {p0}, Lio/netty/util/concurrent/PromiseCombiner;->tryPromise()Z

    move-result v0

    return v0
.end method

.method private checkAddAllowed()V
    .locals 2

    .line 174
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding promises is not allowed after finished adding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInEventLoop()V
    .locals 2

    .line 164
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from EventExecutor thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryPromise()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p1, "future"    # Lio/netty/util/concurrent/Future;

    .line 108
    invoke-direct {p0}, Lio/netty/util/concurrent/PromiseCombiner;->checkAddAllowed()V

    .line 109
    invoke-direct {p0}, Lio/netty/util/concurrent/PromiseCombiner;->checkInEventLoop()V

    .line 110
    iget v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->expectedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->expectedCount:I

    .line 111
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->listener:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 112
    return-void
.end method

.method public add(Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .param p1, "promise"    # Lio/netty/util/concurrent/Promise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Future;)V

    .line 98
    return-void
.end method

.method public varargs addAll([Lio/netty/util/concurrent/Future;)V
    .locals 3
    .param p1, "futures"    # [Lio/netty/util/concurrent/Future;

    .line 135
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 136
    .local v2, "future":Lio/netty/util/concurrent/Future;
    invoke-virtual {p0, v2}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Future;)V

    .line 135
    .end local v2    # "future":Lio/netty/util/concurrent/Future;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public varargs addAll([Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .param p1, "promises"    # [Lio/netty/util/concurrent/Promise;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    move-object v0, p1

    check-cast v0, [Lio/netty/util/concurrent/Future;

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/PromiseCombiner;->addAll([Lio/netty/util/concurrent/Future;)V

    .line 125
    return-void
.end method

.method public finish(Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "aggregatePromise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    const-string v0, "aggregatePromise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lio/netty/util/concurrent/PromiseCombiner;->checkInEventLoop()V

    .line 154
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    if-nez v0, :cond_1

    .line 157
    iput-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner;->aggregatePromise:Lio/netty/util/concurrent/Promise;

    .line 158
    iget v0, p0, Lio/netty/util/concurrent/PromiseCombiner;->doneCount:I

    iget v1, p0, Lio/netty/util/concurrent/PromiseCombiner;->expectedCount:I

    if-ne v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lio/netty/util/concurrent/PromiseCombiner;->tryPromise()Z

    .line 161
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

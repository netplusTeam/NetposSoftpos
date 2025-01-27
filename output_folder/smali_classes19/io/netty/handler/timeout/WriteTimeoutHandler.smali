.class public Lio/netty/handler/timeout/WriteTimeoutHandler;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "WriteTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_TIMEOUT_NANOS:J


# instance fields
.field private closed:Z

.field private lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

.field private final timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    nop

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/netty/handler/timeout/WriteTimeoutHandler;->MIN_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "timeoutSeconds"    # I

    .line 85
    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/timeout/WriteTimeoutHandler;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 86
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 97
    const-string v0, "unit"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 100
    iput-wide v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->timeoutNanos:J

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-wide v2, Lio/netty/handler/timeout/WriteTimeoutHandler;->MIN_TIMEOUT_NANOS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->timeoutNanos:J

    .line 104
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/timeout/WriteTimeoutHandler;Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/timeout/WriteTimeoutHandler;
    .param p1, "x1"    # Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 66
    invoke-direct {p0, p1}, Lio/netty/handler/timeout/WriteTimeoutHandler;->removeWriteTimeoutTask(Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V

    return-void
.end method

.method private addWriteTimeoutTask(Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V
    .locals 1
    .param p1, "task"    # Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 142
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    if-eqz v0, :cond_0

    .line 143
    iput-object p1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 144
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 146
    :cond_0
    iput-object p1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 147
    return-void
.end method

.method private removeWriteTimeoutTask(Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V
    .locals 3
    .param p1, "task"    # Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 150
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 152
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iget-object v0, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 154
    if-eqz v0, :cond_4

    .line 155
    iput-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_1
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    if-nez v0, :cond_2

    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    if-nez v0, :cond_2

    .line 159
    return-void

    .line 160
    :cond_2
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iget-object v2, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object v2, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 165
    iget-object v0, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iget-object v2, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object v2, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 167
    :cond_4
    :goto_0
    iput-object v1, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 168
    iput-object v1, p1, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 169
    return-void
.end method

.method private scheduleTimeout(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 130
    new-instance v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;-><init>(Lio/netty/handler/timeout/WriteTimeoutHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 131
    .local v0, "task":Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->timeoutNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 133
    iget-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lio/netty/handler/timeout/WriteTimeoutHandler;->addWriteTimeoutTask(Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;)V

    .line 137
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 118
    .local v0, "task":Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->lastTask:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 119
    :goto_0
    if-eqz v0, :cond_0

    .line 120
    iget-object v2, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 121
    iget-object v2, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 122
    .local v2, "prev":Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    iput-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->prev:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 123
    iput-object v1, v0, Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->next:Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    .line 124
    move-object v0, v2

    .line 125
    .end local v2    # "prev":Lio/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->timeoutNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object p3

    .line 110
    invoke-direct {p0, p1, p3}, Lio/netty/handler/timeout/WriteTimeoutHandler;->scheduleTimeout(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 112
    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 113
    return-void
.end method

.method protected writeTimedOut(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->closed:Z

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lio/netty/handler/timeout/WriteTimeoutException;->INSTANCE:Lio/netty/handler/timeout/WriteTimeoutException;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 177
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/timeout/WriteTimeoutHandler;->closed:Z

    .line 180
    :cond_0
    return-void
.end method

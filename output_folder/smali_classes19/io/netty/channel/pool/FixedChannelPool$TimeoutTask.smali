.class abstract Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;
.super Ljava/lang/Object;
.source "FixedChannelPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/FixedChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TimeoutTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 376
    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method private constructor <init>(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/channel/pool/FixedChannelPool$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/pool/FixedChannelPool;
    .param p2, "x1"    # Lio/netty/channel/pool/FixedChannelPool$1;

    .line 376
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    return-void
.end method


# virtual methods
.method public abstract onTimeout(Lio/netty/channel/pool/FixedChannelPool$AcquireTask;)V
.end method

.method public final run()V
    .locals 7

    .line 379
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$300(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 382
    .local v0, "nanoTime":J
    :goto_0
    iget-object v2, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v2}, Lio/netty/channel/pool/FixedChannelPool;->access$700(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    .line 387
    .local v2, "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    if-eqz v2, :cond_1

    iget-wide v3, v2, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->expireNanoTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 388
    goto :goto_1

    .line 390
    :cond_0
    iget-object v3, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v3}, Lio/netty/channel/pool/FixedChannelPool;->access$700(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v3}, Lio/netty/channel/pool/FixedChannelPool;->access$806(Lio/netty/channel/pool/FixedChannelPool;)I

    .line 393
    invoke-virtual {p0, v2}, Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;->onTimeout(Lio/netty/channel/pool/FixedChannelPool$AcquireTask;)V

    .line 394
    .end local v2    # "task":Lio/netty/channel/pool/FixedChannelPool$AcquireTask;
    goto :goto_0

    .line 395
    :cond_1
    :goto_1
    return-void

    .line 379
    .end local v0    # "nanoTime":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

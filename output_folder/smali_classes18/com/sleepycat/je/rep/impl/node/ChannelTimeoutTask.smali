.class public Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;
.super Ljava/util/TimerTask;
.source "ChannelTimeoutTask.java"


# instance fields
.field private final ONE_SECOND_MS:J

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;",
            ">;"
        }
    .end annotation
.end field

.field private elapsedMs:J


# direct methods
.method public constructor <init>(Ljava/util/Timer;)V
    .locals 7
    .param p1, "timer"    # Ljava/util/Timer;

    .line 53
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 39
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->ONE_SECOND_MS:J

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->elapsedMs:J

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->channels:Ljava/util/List;

    .line 54
    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 55
    return-void
.end method


# virtual methods
.method public register(Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;)V
    .locals 1
    .param p1, "channel"    # Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public run()V
    .locals 5

    .line 65
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->elapsedMs:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->elapsedMs:J

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->channels:Ljava/util/List;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/ChannelTimeoutTask;->elapsedMs:J

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->isActive(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 73
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;>;"
    :cond_1
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

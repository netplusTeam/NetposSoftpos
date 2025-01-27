.class public abstract Lch/qos/logback/classic/net/ReceiverBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "ReceiverBase.java"

# interfaces
.implements Lch/qos/logback/core/spi/LifeCycle;


# instance fields
.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getRunnableTask()Ljava/lang/Runnable;
.end method

.method public final isStarted()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lch/qos/logback/classic/net/ReceiverBase;->started:Z

    return v0
.end method

.method protected abstract onStop()V
.end method

.method protected abstract shouldStart()Z
.end method

.method public final start()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->shouldStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->getRunnableTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/classic/net/ReceiverBase;->started:Z

    .line 42
    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final stop()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/classic/net/ReceiverBase;->onStop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/net/ReceiverBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/net/ReceiverBase;->started:Z

    .line 56
    return-void
.end method

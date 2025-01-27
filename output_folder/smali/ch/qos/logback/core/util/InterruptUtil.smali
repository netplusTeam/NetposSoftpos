.class public Lch/qos/logback/core/util/InterruptUtil;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "InterruptUtil.java"


# instance fields
.field final previouslyInterrupted:Z


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 33
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lch/qos/logback/core/util/InterruptUtil;->setContext(Lch/qos/logback/core/Context;)V

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    iput-boolean v0, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    .line 36
    return-void
.end method


# virtual methods
.method public maskInterruptFlag()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 42
    :cond_0
    return-void
.end method

.method public unmaskInterruptFlag()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lch/qos/logback/core/util/InterruptUtil;->previouslyInterrupted:Z

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v1, "Failed to intrreupt current thread"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/util/InterruptUtil;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.class public abstract Lcom/sleepycat/je/utilint/PollCondition;
.super Ljava/lang/Object;
.source "PollCondition.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final checkPeriodMs:J

.field private final timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "checkPeriodMs"    # J
    .param p3, "timeoutMs"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 34
    iput-wide p1, p0, Lcom/sleepycat/je/utilint/PollCondition;->checkPeriodMs:J

    .line 35
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/PollCondition;->timeoutMs:J

    .line 36
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static await(JJLjava/lang/Object;Ljava/util/function/Supplier;)Z
    .locals 6
    .param p0, "checkPeriodMs"    # J
    .param p2, "timeoutMs"    # J
    .param p4, "waitOn"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 88
    .local p5, "cond":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    return v1

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 94
    .local v2, "timeLimit":J
    :cond_1
    monitor-enter p4

    .line 96
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p4, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    nop

    .line 100
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    return v1

    .line 104
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    .line 106
    return v0

    .line 100
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit p4

    return v0

    .line 100
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static await(JJLjava/util/function/Supplier;)Z
    .locals 6
    .param p0, "checkPeriodMs"    # J
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 59
    .local p4, "cond":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    return v1

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 66
    .local v2, "timeLimit":J
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .line 70
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    return v1

    .line 73
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    .line 75
    return v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/InterruptedException;
    return v0
.end method


# virtual methods
.method public await()Z
    .locals 4

    .line 49
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/PollCondition;->checkPeriodMs:J

    iget-wide v2, p0, Lcom/sleepycat/je/utilint/PollCondition;->timeoutMs:J

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/util/function/Supplier;)Z

    move-result v0

    return v0
.end method

.method protected abstract condition()Z
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/PollCondition;->condition()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/PollCondition;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/hivemq/client/internal/util/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 31
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v0, 0x1

    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    return v1
.end method

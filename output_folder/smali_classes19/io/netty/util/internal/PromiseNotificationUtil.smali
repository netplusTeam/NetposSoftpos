.class public final Lio/netty/util/internal/PromiseNotificationUtil;
.super Ljava/lang/Object;
.source "PromiseNotificationUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryCancel(Lio/netty/util/concurrent/Promise;Lio/netty/util/internal/logging/InternalLogger;)V
    .locals 2
    .param p1, "logger"    # Lio/netty/util/internal/logging/InternalLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;",
            "Lio/netty/util/internal/logging/InternalLogger;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<*>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/netty/util/concurrent/Promise;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p0}, Lio/netty/util/concurrent/Promise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 34
    .local v0, "err":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 35
    const-string v1, "Failed to cancel promise because it has succeeded already: {}"

    invoke-interface {p1, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "Failed to cancel promise because it has failed already: {}, unnotified cause:"

    invoke-interface {p1, v1, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public static tryFailure(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;Lio/netty/util/internal/logging/InternalLogger;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "logger"    # Lio/netty/util/internal/logging/InternalLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/internal/logging/InternalLogger;",
            ")V"
        }
    .end annotation

    .line 64
    .local p0, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<*>;"
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 65
    invoke-interface {p0}, Lio/netty/util/concurrent/Promise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 66
    .local v0, "err":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 67
    const-string v1, "Failed to mark a promise as failure because it has succeeded already: {}"

    invoke-interface {p2, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 71
    invoke-static {v0}, Lio/netty/util/internal/ThrowableUtil;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 69
    const-string v2, "Failed to mark a promise as failure because it has failed already: {}, unnotified cause: {}"

    invoke-interface {p2, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public static trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;Lio/netty/util/internal/logging/InternalLogger;)V
    .locals 2
    .param p2, "logger"    # Lio/netty/util/internal/logging/InternalLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/Promise<",
            "-TV;>;TV;",
            "Lio/netty/util/internal/logging/InternalLogger;",
            ")V"
        }
    .end annotation

    .line 48
    .local p0, "p":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<-TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 49
    invoke-interface {p0}, Lio/netty/util/concurrent/Promise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 50
    .local v0, "err":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 51
    const-string v1, "Failed to mark a promise as success because it has succeeded already: {}"

    invoke-interface {p2, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "Failed to mark a promise as success because it has failed already: {}, unnotified cause:"

    invoke-interface {p2, v1, p0, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

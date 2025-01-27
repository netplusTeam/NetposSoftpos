.class public final Lio/netty/util/concurrent/FailedFuture;
.super Lio/netty/util/concurrent/CompleteFuture;
.source "FailedFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/CompleteFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 37
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 38
    const-string v0, "cause"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    .line 39
    return-void
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 43
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 48
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 54
    return-object p0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 60
    return-object p0
.end method

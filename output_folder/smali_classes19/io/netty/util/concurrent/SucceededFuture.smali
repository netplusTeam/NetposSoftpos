.class public final Lio/netty/util/concurrent/SucceededFuture;
.super Lio/netty/util/concurrent/CompleteFuture;
.source "SucceededFuture.java"


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
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "TV;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lio/netty/util/concurrent/SucceededFuture;, "Lio/netty/util/concurrent/SucceededFuture<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 33
    iput-object p2, p0, Lio/netty/util/concurrent/SucceededFuture;->result:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 38
    .local p0, "this":Lio/netty/util/concurrent/SucceededFuture;, "Lio/netty/util/concurrent/SucceededFuture<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/netty/util/concurrent/SucceededFuture;, "Lio/netty/util/concurrent/SucceededFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/SucceededFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 43
    .local p0, "this":Lio/netty/util/concurrent/SucceededFuture;, "Lio/netty/util/concurrent/SucceededFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

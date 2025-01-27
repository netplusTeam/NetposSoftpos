.class final Ljava9/util/concurrent/CompletableFuture$OrRun;
.super Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1658
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrRun;, "Ljava9/util/concurrent/CompletableFuture$OrRun<TT;TU;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    .line 1659
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1663
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrRun;, "Ljava9/util/concurrent/CompletableFuture$OrRun<TT;TU;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    move-object v3, v0

    .local v3, "f":Ljava/lang/Runnable;
    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->snd:Ljava9/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_4

    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v6, v0

    .local v6, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v0, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v6, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1667
    :cond_0
    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 1669
    if-gtz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$OrRun;->claim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1670
    return-object v2

    .line 1671
    :cond_1
    instance-of v0, v6, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2

    move-object v0, v6

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 1673
    invoke-virtual {v1, v7, v6}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1675
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1676
    invoke-virtual {v1}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    :goto_0
    goto :goto_1

    .line 1678
    :catchall_0
    move-exception v0

    .line 1679
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1682
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->snd:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrRun;->fn:Ljava/lang/Runnable;

    .line 1683
    invoke-virtual {v1, v4, v5, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1666
    .end local v3    # "f":Ljava/lang/Runnable;
    .end local v4    # "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v5    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<*>;"
    .end local v6    # "r":Ljava/lang/Object;
    :cond_4
    :goto_2
    return-object v2
.end method

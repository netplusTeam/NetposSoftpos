.class final Ljava9/util/concurrent/CompletableFuture$OrApply;
.super Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;TV;>;"
    }
.end annotation


# instance fields
.field fn:Ljava9/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)V"
        }
    .end annotation

    .line 1551
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrApply;, "Ljava9/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->fn:Ljava9/util/function/Function;

    .line 1552
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
            "TV;>;"
        }
    .end annotation

    .line 1556
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrApply;, "Ljava9/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->snd:Ljava9/util/concurrent/CompletableFuture;

    move-object v3, v0

    .local v3, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v0, :cond_6

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v0, v3, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->fn:Ljava9/util/function/Function;

    move-object v6, v0

    .local v6, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    if-nez v0, :cond_1

    goto :goto_1

    .line 1560
    :cond_1
    iget-object v0, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1562
    if-gtz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$OrApply;->claim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1563
    return-object v2

    .line 1564
    :cond_2
    instance-of v0, v4, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_4

    .line 1565
    move-object v0, v4

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 1566
    invoke-virtual {v5, v7, v4}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1567
    goto :goto_0

    .line 1569
    :cond_3
    const/4 v4, 0x0

    .line 1571
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_4
    move-object v0, v4

    .line 1572
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v6, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1573
    :catchall_0
    move-exception v0

    .line 1574
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1577
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->snd:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrApply;->fn:Ljava9/util/function/Function;

    .line 1578
    invoke-virtual {v5, v1, v3, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1559
    .end local v3    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    :cond_6
    :goto_1
    return-object v2
.end method

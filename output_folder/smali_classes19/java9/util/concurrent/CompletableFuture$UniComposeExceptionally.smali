.class final Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniComposeExceptionally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field fn:Ljava9/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1012
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;, "Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally<TT;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava9/util/function/Function;

    .line 1013
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
            "TT;>;"
        }
    .end annotation

    .line 1018
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;, "Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava9/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    if-nez v0, :cond_0

    goto :goto_2

    .line 1021
    :cond_0
    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1022
    instance-of v0, v3, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_4

    move-object v0, v3

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 1025
    if-gtz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->claim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    return-object v2

    .line 1027
    :cond_1
    invoke-interface {v5, v6}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/concurrent/CompletionStage;

    invoke-interface {v0}, Ljava9/util/concurrent/CompletionStage;->toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1028
    .local v0, "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    iget-object v7, v0, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v7

    if-eqz v7, :cond_2

    .line 1029
    invoke-virtual {v4, v3}, Ljava9/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1031
    :cond_2
    new-instance v7, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v7, v4, v0}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v7}, Ljava9/util/concurrent/CompletableFuture;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 1032
    iget-object v7, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    .line 1033
    return-object v2

    .line 1035
    .end local v0    # "g":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    :catchall_0
    move-exception v0

    .line 1036
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1037
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    goto :goto_1

    .line 1040
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4, v3}, Ljava9/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    .line 1042
    :cond_5
    :goto_1
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniComposeExceptionally;->fn:Ljava9/util/function/Function;

    .line 1043
    invoke-virtual {v4, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1020
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    :cond_6
    :goto_2
    return-object v2
.end method

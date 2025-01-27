.class final Ljava9/util/concurrent/CompletableFuture$MinimalStage;
.super Ljava9/util/concurrent/CompletableFuture;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MinimalStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2955
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Object;

    .line 2956
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2972
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2968
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public completeAsync(Ljava9/util/function/Supplier;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2990
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public completeAsync(Ljava9/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2987
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2970
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2996
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2960
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 2962
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2964
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNumberOfDependents()I
    .locals 1

    .line 2984
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 2980
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCompletedExceptionally()Z
    .locals 1

    .line 2982
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .line 2978
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public join()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2966
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public newIncompleteFuture()Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2958
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2976
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2974
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava9/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2993
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2999
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$MinimalStage;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 3000
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava9/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 3002
    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava9/util/concurrent/CompletableFuture;-><init>()V

    .line 3003
    .local v0, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    new-instance v2, Ljava9/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v2, v0, p0}, Ljava9/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v2}, Ljava9/util/concurrent/CompletableFuture$MinimalStage;->unipush(Ljava9/util/concurrent/CompletableFuture$Completion;)V

    .line 3004
    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1}, Ljava9/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 0

    .line 2954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$MinimalStage;, "Ljava9/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    invoke-super {p0, p1, p2}, Ljava9/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

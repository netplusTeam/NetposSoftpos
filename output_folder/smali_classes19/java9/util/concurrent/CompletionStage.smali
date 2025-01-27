.class public interface abstract Ljava9/util/concurrent/CompletionStage;
.super Ljava/lang/Object;
.source "CompletionStage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$exceptionallyAsync$1(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Ljava9/util/concurrent/CompletionStage;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 846
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda7;-><init>(Ljava9/util/function/Function;)V

    .line 848
    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$exceptionallyAsync$3(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Ljava9/util/concurrent/CompletionStage;
    .param p3, "r"    # Ljava/lang/Object;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 873
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    if-nez p4, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda4;-><init>(Ljava9/util/function/Function;)V

    .line 875
    invoke-interface {p0, v0, p2}, Ljava9/util/concurrent/CompletionStage;->handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$exceptionallyCompose$4(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0
    .param p0, "_this"    # Ljava9/util/concurrent/CompletionStage;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 895
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 897
    :cond_0
    invoke-interface {p1, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava9/util/concurrent/CompletionStage;

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$exceptionallyComposeAsync$6(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Ljava9/util/concurrent/CompletionStage;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 919
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda8;-><init>(Ljava9/util/function/Function;)V

    .line 921
    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    .line 922
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$exceptionallyComposeAsync$8(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Ljava9/util/concurrent/CompletionStage;
    .param p3, "r"    # Ljava/lang/Object;
    .param p4, "ex"    # Ljava/lang/Throwable;

    .line 946
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    if-nez p4, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda6;-><init>(Ljava9/util/function/Function;)V

    .line 948
    invoke-interface {p0, v0, p2}, Ljava9/util/concurrent/CompletionStage;->handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    .line 949
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$null$0(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 848
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$null$2(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 875
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$null$5(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 921
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava9/util/concurrent/CompletionStage;

    return-object p0
.end method

.method public static synthetic lambda$null$7(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;
    .locals 0
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "ex1"    # Ljava/lang/Throwable;

    .line 948
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava9/util/concurrent/CompletionStage;

    return-object p0
.end method


# virtual methods
.method public abstract acceptEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acceptEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyToEither(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract applyToEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract exceptionally(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public exceptionallyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 846
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda1;-><init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    .line 849
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 873
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda2;-><init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    .line 876
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 895
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda5;-><init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    .line 898
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 919
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda0;-><init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;)V

    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    .line 923
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public exceptionallyComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 946
    .local p0, "this":Ljava9/util/concurrent/CompletionStage;, "Ljava9/util/concurrent/CompletionStage<TT;>;"
    .local p1, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/lang/Throwable;+Ljava9/util/concurrent/CompletionStage<TT;>;>;"
    new-instance v0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;-><init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v0}, Ljava9/util/concurrent/CompletionStage;->handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    .line 950
    invoke-static {}, Ljava9/util/function/Function;->identity()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/concurrent/CompletionStage;->thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public abstract handle(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract handleAsync(Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract handleAsync(Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract runAfterBoth(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEither(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runAfterEitherAsync(Ljava9/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAccept(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptAsync(Ljava9/util/function/Consumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptAsync(Ljava9/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBoth(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenAcceptBothAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenApply(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenApplyAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenApplyAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenCombine(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCombineAsync(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava9/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract thenCompose(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenComposeAsync(Ljava9/util/function/Function;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenComposeAsync(Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract thenRun(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenRunAsync(Ljava/lang/Runnable;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toCompletableFuture()Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenComplete(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenCompleteAsync(Ljava9/util/function/BiConsumer;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whenCompleteAsync(Ljava9/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava9/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava9/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end method

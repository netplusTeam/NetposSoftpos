.class final Ljava9/util/concurrent/CompletableFuture$UniExceptionally;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniExceptionally"
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
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
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
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .line 954
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava9/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava9/util/function/Function;

    .line 955
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 959
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava9/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava9/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 961
    :goto_0
    invoke-virtual {v4, v3, v5, v0}, Ljava9/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava9/util/function/Function;Ljava9/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 963
    :cond_1
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniExceptionally;->fn:Ljava9/util/function/Function;

    .line 964
    invoke-virtual {v4, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 962
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .end local v5    # "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    :cond_2
    :goto_1
    return-object v2
.end method

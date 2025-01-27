.class final Ljava9/util/concurrent/CompletableFuture$AsyncSupply;
.super Ljava9/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava9/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSupply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava9/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field dep:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field fn:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1744
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    .local p1, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "fn":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 1745
    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava9/util/function/Supplier;

    .line 1746
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1750
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 1740
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    .line 1748
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1754
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava9/util/function/Supplier;

    move-object v2, v0

    .local v2, "f":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    if-eqz v0, :cond_1

    .line 1755
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava9/util/function/Supplier;

    .line 1756
    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1758
    :try_start_0
    invoke-interface {v2}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1761
    goto :goto_0

    .line 1759
    :catchall_0
    move-exception v0

    .line 1760
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1763
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1765
    .end local v2    # "f":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    :cond_1
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 1740
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture$AsyncSupply;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .line 1749
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava9/util/concurrent/CompletableFuture$AsyncSupply<TT;>;"
    return-void
.end method

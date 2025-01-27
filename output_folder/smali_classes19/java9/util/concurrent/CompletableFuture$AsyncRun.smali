.class final Ljava9/util/concurrent/CompletableFuture$AsyncRun;
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
    name = "AsyncRun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "fn"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1780
    .local p1, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinTask;-><init>()V

    .line 1781
    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1782
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .line 1786
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 1776
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    .line 1784
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1790
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    move-object v2, v0

    .local v2, "f":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v0, p0, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    .line 1792
    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1794
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1795
    invoke-virtual {v1}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    goto :goto_0

    .line 1796
    :catchall_0
    move-exception v0

    .line 1797
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1800
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava9/util/concurrent/CompletableFuture;->postComplete()V

    .line 1802
    .end local v2    # "f":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 1776
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .line 1785
    return-void
.end method

.class final Ljava9/util/concurrent/CompletableFuture$UniApply;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TV;>;"
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
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Function;)V
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
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)V"
        }
    .end annotation

    .line 609
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniApply;, "Ljava9/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->fn:Ljava9/util/function/Function;

    .line 610
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniApply;, "Ljava9/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->fn:Ljava9/util/function/Function;

    move-object v5, v0

    .local v5, "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    if-nez v0, :cond_0

    goto :goto_1

    .line 617
    :cond_0
    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 618
    instance-of v0, v3, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2

    .line 619
    move-object v0, v3

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {v4, v6, v3}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 621
    goto :goto_0

    .line 623
    :cond_1
    const/4 v3, 0x0

    .line 626
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2
    if-gtz p1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$UniApply;->claim()Z

    move-result v0

    if-nez v0, :cond_3

    .line 627
    return-object v2

    .line 629
    :cond_3
    move-object v0, v3

    .line 630
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v0}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava9/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    .line 633
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 636
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniApply;->fn:Ljava9/util/function/Function;

    .line 637
    invoke-virtual {v4, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 616
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .end local v5    # "f":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    :cond_5
    :goto_1
    return-object v2
.end method

.class final Ljava9/util/concurrent/CompletableFuture$UniAccept;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field fn:Ljava9/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Consumer;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 681
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniAccept;, "Ljava9/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava9/util/function/Consumer;

    .line 682
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 686
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniAccept;, "Ljava9/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava9/util/function/Consumer;

    move-object v5, v0

    .local v5, "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    if-nez v0, :cond_0

    goto :goto_1

    .line 689
    :cond_0
    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 690
    instance-of v0, v3, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2

    .line 691
    move-object v0, v3

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v0

    .local v6, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {v4, v6, v3}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 693
    goto :goto_0

    .line 695
    :cond_1
    const/4 v3, 0x0

    .line 698
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2
    if-gtz p1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_3

    .line 699
    return-object v2

    .line 701
    :cond_3
    move-object v0, v3

    .line 702
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v5, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v4}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 709
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava9/util/function/Consumer;

    .line 710
    invoke-virtual {v4, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 688
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v5    # "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    :cond_5
    :goto_1
    return-object v2
.end method

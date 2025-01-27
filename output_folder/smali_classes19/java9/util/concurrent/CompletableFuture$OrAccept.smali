.class final Ljava9/util/concurrent/CompletableFuture$OrAccept;
.super Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;>",
        "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
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
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/Consumer;)V
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
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1604
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrAccept;, "Ljava9/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava9/util/function/Consumer;

    .line 1605
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

    .line 1609
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$OrAccept;, "Ljava9/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava9/util/concurrent/CompletableFuture;

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
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v5, v0

    .local v5, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_6

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava9/util/function/Consumer;

    move-object v6, v0

    .local v6, "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    if-nez v0, :cond_1

    goto :goto_1

    .line 1613
    :cond_1
    iget-object v0, v5, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1615
    if-gtz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1616
    return-object v2

    .line 1617
    :cond_2
    instance-of v0, v4, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_4

    .line 1618
    move-object v0, v4

    check-cast v0, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v0

    .local v7, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 1619
    invoke-virtual {v5, v7, v4}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1620
    goto :goto_0

    .line 1622
    :cond_3
    const/4 v4, 0x0

    .line 1624
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_4
    move-object v0, v4

    .line 1625
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v6, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1626
    invoke-virtual {v5}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    nop

    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1627
    :catchall_0
    move-exception v0

    .line 1628
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v5, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1631
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->snd:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$OrAccept;->fn:Ljava9/util/function/Consumer;

    .line 1632
    invoke-virtual {v5, v1, v3, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1612
    .end local v3    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<+TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v6    # "f":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    :cond_6
    :goto_1
    return-object v2
.end method

.class final Ljava9/util/concurrent/CompletableFuture$BiRelay;
.super Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BiRelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$BiCompletion<",
        "TT;TU;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;)V"
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$BiRelay;, "Ljava9/util/concurrent/CompletableFuture$BiRelay<TT;TU;>;"
    .local p1, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p2, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p3, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    .line 1473
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 9
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1479
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$BiRelay;, "Ljava9/util/concurrent/CompletableFuture$BiRelay<TT;TU;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->snd:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_5

    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "s":Ljava/lang/Object;
    if-eqz v0, :cond_5

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v6, v0

    .local v6, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez v0, :cond_0

    goto :goto_1

    .line 1483
    :cond_0
    iget-object v0, v6, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1484
    instance-of v0, v3, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    move-object v0, v3

    .local v0, "z":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v8, v7

    check-cast v8, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .local v8, "x":Ljava/lang/Throwable;
    if-nez v7, :cond_2

    .end local v0    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, v5, Ljava9/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    move-object v0, v5

    .restart local v0    # "z":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Ljava9/util/concurrent/CompletableFuture$AltResult;

    move-object v8, v7

    check-cast v8, Ljava9/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava9/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v7

    .restart local v8    # "x":Ljava/lang/Throwable;
    if-eqz v7, :cond_3

    .line 1488
    :cond_2
    invoke-virtual {v6, v8, v0}, Ljava9/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1490
    .end local v0    # "z":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v6}, Ljava9/util/concurrent/CompletableFuture;->completeNull()Z

    .line 1492
    :cond_4
    :goto_0
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->snd:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiRelay;->dep:Ljava9/util/concurrent/CompletableFuture;

    .line 1493
    invoke-virtual {v6, v1, v4, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1482
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_5
    :goto_1
    return-object v2
.end method

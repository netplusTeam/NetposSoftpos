.class final Ljava9/util/concurrent/CompletableFuture$UniRelay;
.super Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniRelay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:TU;>",
        "Ljava9/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 1076
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniRelay;, "Ljava9/util/concurrent/CompletableFuture$UniRelay<TU;TT;>;"
    .local p1, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .local p2, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    .line 1077
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava9/util/concurrent/CompletableFuture;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1080
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniRelay;, "Ljava9/util/concurrent/CompletableFuture$UniRelay<TU;TT;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniRelay;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniRelay;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1084
    invoke-virtual {v4, v3}, Ljava9/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 1085
    :cond_1
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniRelay;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniRelay;->dep:Ljava9/util/concurrent/CompletableFuture;

    .line 1086
    invoke-virtual {v4, v1, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1082
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    :cond_2
    :goto_0
    return-object v2
.end method

.class final Ljava9/util/concurrent/CompletableFuture$BiAccept;
.super Ljava9/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BiAccept"
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


# instance fields
.field fn:Ljava9/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/function/BiConsumer;)V
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
            "Ljava9/util/function/BiConsumer<",
            "-TT;-TU;>;)V"
        }
    .end annotation

    .line 1333
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$BiAccept;, "Ljava9/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava9/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava9/util/function/BiConsumer;

    .line 1334
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

    .line 1340
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$BiAccept;, "Ljava9/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "a":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v0

    .local v3, "r":Ljava/lang/Object;
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->snd:Ljava9/util/concurrent/CompletableFuture;

    move-object v4, v0

    .local v4, "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_2

    iget-object v0, v4, Ljava9/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "s":Ljava/lang/Object;
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    move-object v6, v0

    .local v6, "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava9/util/function/BiConsumer;

    move-object v7, v0

    .local v7, "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 1343
    :goto_0
    invoke-virtual {v6, v3, v5, v7, v0}, Ljava9/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiConsumer;Ljava9/util/concurrent/CompletableFuture$BiAccept;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1345
    :cond_1
    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->src:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->snd:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$BiAccept;->fn:Ljava9/util/function/BiConsumer;

    .line 1346
    invoke-virtual {v6, v1, v4, p1}, Ljava9/util/concurrent/CompletableFuture;->postFire(Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;I)Ljava9/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1344
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "b":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TU;>;"
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "d":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "f":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<-TT;-TU;>;"
    :cond_2
    :goto_1
    return-object v2
.end method

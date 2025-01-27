.class abstract Ljava9/util/concurrent/CompletableFuture$UniCompletion;
.super Ljava9/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UniCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CompletableFuture$Completion;"
    }
.end annotation


# instance fields
.field dep:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field executor:Ljava/util/concurrent/Executor;

.field src:Ljava9/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/CompletableFuture;Ljava9/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TV;>;",
            "Ljava9/util/concurrent/CompletableFuture<",
            "TT;>;)V"
        }
    .end annotation

    .line 540
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniCompletion;, "Ljava9/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    .local p2, "dep":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava9/util/concurrent/CompletableFuture;, "Ljava9/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 541
    iput-object p1, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava9/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava9/util/concurrent/CompletableFuture;

    .line 542
    return-void
.end method


# virtual methods
.method final claim()Z
    .locals 4

    .line 551
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniCompletion;, "Ljava9/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 552
    .local v0, "e":Ljava/util/concurrent/Executor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->compareAndSetForkJoinTaskTag(SS)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    if-nez v0, :cond_0

    .line 554
    return v2

    .line 555
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 556
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 558
    :cond_1
    return v1
.end method

.method final isLive()Z
    .locals 1

    .line 561
    .local p0, "this":Ljava9/util/concurrent/CompletableFuture$UniCompletion;, "Ljava9/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava9/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava9/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
